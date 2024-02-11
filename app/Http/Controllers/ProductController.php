<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\ChildCategory;
use App\Models\Color;
use App\Models\Flag;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\ProductReview;
use App\Models\ProductSize;
use App\Models\ProductVariant;
use App\Models\ProductWarrenty;
use App\Models\Subcategory;
use App\Models\ProductModel;
use App\Models\OrderDetails;
use App\Models\ProductQuestionAnswer;
use App\Models\Unit;
use Illuminate\Support\Facades\DB;
use Brian2694\Toastr\Facades\Toastr;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Sohibd\Laravelslug\Generate;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;
use Yajra\DataTables\DataTables;

use Faker\Generator;
use Illuminate\Container\Container;

class ProductController extends Controller
{
    public function addNewProduct(){
        return view('backend.product.create');
    }

    public function childcategorySubcategoryWise(Request $request){
        $data = ChildCategory::where("subcategory_id", $request->subcategory_id)->where('status', 1)->select('name', 'id')->get();
        return response()->json($data);
    }

    public function saveNewProduct(Request $request){

        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'category_id' => 'required',
            'image' => 'required',
        ]);


        $image = null;
        if ($request->hasFile('image')){
            $get_image = $request->file('image');
            $image_name = str::random(5) . time() . '.' . $get_image->getClientOriginalExtension();
            $location = public_path('productImages/');

            if($get_image->getClientOriginalExtension() == 'svg'){
                $get_image->move($location, $image_name);
            } else {
                Image::make($get_image)->save($location . $image_name, 60);
            }

            $image = "productImages/" . $image_name;
        }

        $clean = preg_replace('/[^a-zA-Z0-9\s]/', '', strtolower($request->name)); //remove all non alpha numeric
        $slug = preg_replace('!\s+!', '-', $clean);

        $product = new Product();
        $product->name = $request->name;
        $product->strength = $request->strength;
        $product->generic_id = $request->generic_id;
        $product->disease_id = $request->disease_id;
        $product->medicine_type_id = $request->medicine_type_id;
        $product->piece_per_leaf = $request->piece_per_leaf;
        $product->leaf_per_box = $request->leaf_per_box;
        $product->short_description = $request->short_description;
        $product->description = $request->description;
        $product->tags = $request->tags;
        $product->video_url = $request->video_url;
        $product->category_id = $request->category_id;
        $product->subcategory_id = $request->subcategory_id;
        $product->image = $image;
        $product->flag_id = $request->flag_id;
        $product->slug = $slug."-".time().str::random(5);
        $product->status = 1;
        $product->unit_id = isset($request->unit_id) ? $request->unit_id : null;
        $product->specification = $request->specification;
        $product->warrenty_policy = $request->warrenty_policy;
        $product->brand_id = $request->brand_id;
        $product->code = $request->code;
        $product->is_otc = $request->is_otc;
        $product->is_antibiotic = $request->is_antibiotic;
        $product->meta_title = $request->meta_title;
        $product->meta_keywords = $request->meta_keywords;
        $product->meta_description = $request->meta_description;
        $product->created_at = Carbon::now();

        if($request->has_variant == 1){

            //variant specific
            $product->price = 0;
            $product->discount_price = 0;
            $product->stock = 0;
            $product->multiple_images = NULL;
            $product->has_variant = 1;
            //variant specific

            $i = 0;
            foreach($request->product_variant_price as $price_id){

                $name = NULL;
                if(isset($request->file('product_variant_image')[$i]) && $request->file('product_variant_image')[$i]){
                    $name = time().str::random(5).'.'.$request->file('product_variant_image')[$i]->extension();
                    $location = public_path('productImages/');
                    $get_image = $request->file('product_variant_image')[$i];

                    if($request->file('product_variant_image')[$i]->extension() == 'svg'){
                        $get_image->move($location, $name);
                    } else {
                        Image::make($get_image)->save($location . $name, 60);
                    }
                }

                if($i == 0){ // saving the base variant price & warrenty As product main price & warrenty for filtering
                    $product->price = $request->product_variant_price[$i];
                    $product->discount_price = $request->product_variant_discounted_price[$i];
                    $product->save();
                }

                ProductVariant::insert([
                    'product_id' => $product->id,
                    'image' => $name,
                    'color_id' => isset($request->product_variant_color_id[$i]) ? $request->product_variant_color_id[$i] : null,
                    'unit_id' => isset($request->product_variant_unit_id[$i]) ? $request->product_variant_unit_id[$i] : null,
                    'size_id' => isset($request->product_variant_size_id[$i]) ? $request->product_variant_size_id[$i] : null,
                    'region_id' => isset($request->product_variant_region_id[$i]) ? $request->product_variant_region_id[$i] : null,
                    'sim_id' => isset($request->product_variant_sim_id[$i]) ? $request->product_variant_sim_id[$i] : null,
                    'storage_type_id' => isset($request->product_variant_storage_type_id[$i]) ? $request->product_variant_storage_type_id[$i] : null,
                    'stock' => $request->product_variant_stock[$i],
                    'price' => $price_id,
                    'discounted_price' => $request->product_variant_discounted_price[$i],
                    'device_condition_id' => isset($request->product_variant_device_condition_id[$i]) ? $request->product_variant_device_condition_id[$i] : null,
                    'created_at' => Carbon::now()
                ]);
                $i++;
            }

        } else {

            //variant specific
            $product->price = $request->price > 0 ? $request->price : 0;
            $product->discount_price = $request->discount_price > 0 ? $request->discount_price : 0;
            $product->stock = $request->stock > 0 ? $request->stock : 0;
            $product->has_variant = 0;
            //variant specific

            $files = [];
            if($request->hasfile('photos'))
            {
                foreach($request->file('photos') as $file)
                {
                    $name = time().str::random(5).'.'.$file->extension();
                    $location = public_path('productImages/');

                    if($file->extension() == 'svg'){
                        $file->move($location, $name);
                    } else {
                        Image::make($file)->save($location . $name, 60);
                    }

                    $files[] = $name;
                }
                $product->multiple_images = json_encode($files);
            }

            $product->save();

            if(count($files) > 0){
                foreach($files as $file)
                {
                    ProductImage::insert([
                        'product_id' => $product->id,
                        'image' => $file,
                        'created_at' => Carbon::now(),
                    ]);
                }
            }
        }


        Toastr::success('Product is Inserted', 'Success');
        return back();

    }

    public function viewAllProducts(Request $request){

        if ($request->ajax()) {

            ini_set('memory_limit', '4096M'); // 4GB RAM
            $data = DB::table('products')
                        ->leftJoin('categories', 'products.category_id', '=', 'categories.id')
                        ->leftJoin('flags', 'products.flag_id', '=', 'flags.id')
                        ->leftJoin('units', 'products.unit_id', '=', 'units.id')
                        ->select('products.*', 'units.name as unit_name', 'categories.name as category_name', 'flags.name as flag_name')
                        ->orderBy('products.id', 'desc')
                        ->get();

            return Datatables::of($data)
                    ->editColumn('image', function($data) {
                        if(!$data->image || !file_exists(public_path(''. $data->image)))
                            return '';
                        else
                            return $data->image;
                    })
                    ->editColumn('status', function($data) {
                        if($data->status == 1){
                            return '<span class="btn btn-sm btn-success d-inline-block">Active</span>';
                        } else {
                            return '<span class="btn btn-sm btn-danger d-inline-block">Inactive</span>';
                        }
                    })
                    ->editColumn('price', function($data) {
                        if($data->has_variant == 1){
                            $priceStr = '';
                            $variantInfo = ProductVariant::where('product_id', $data->id)->select('price')->orderBy('id', 'asc')->get();
                            foreach($variantInfo as $variant){
                                $priceStr .= $variant->price.", ";
                            }

                            return rtrim($priceStr,", ");
                        } else {
                            return $data->price;
                        }
                    })
                    ->editColumn('discount_price', function($data) {
                        if($data->has_variant == 1){
                            $priceStr = '';
                            $variantInfo = ProductVariant::where('product_id', $data->id)->orderBy('id', 'asc')->get();
                            foreach($variantInfo as $variant){
                                $priceStr .= $variant->discounted_price.", ";
                            }

                            return rtrim($priceStr,", ");
                        } else {
                            return $data->discount_price;
                        }
                    })
                    ->editColumn('stock', function($data) {
                        if($data->has_variant == 1){
                            $stockStr = '';
                            $variantInfo = ProductVariant::where('product_id', $data->id)->orderBy('id', 'asc')->get();
                            foreach($variantInfo as $variant){
                                $stockStr .= $variant->stock.", ";
                            }

                            return rtrim($stockStr,", ");
                        } else {
                            return $data->stock;
                        }
                    })
                    ->addIndexColumn()
                    ->addColumn('action', function($data){
                        $link = env('APP_FRONTEND_URL')."/product/details/".$data->slug;
                        $btn = ' <a target="_blank" href="'.$link.'" class="mb-1 btn-sm btn-success rounded d-inline-block" title="For Frontend Product View"><i class="fa fa-eye"></i></a>';
                        $btn .= ' <a href="'.url('edit/product').'/'.$data->slug.'" class="mb-1 btn-sm btn-warning rounded d-inline-block"><i class="fas fa-edit"></i></a>';
                        $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->slug.'" data-original-title="Delete" class="btn-sm btn-danger rounded d-inline-block deleteBtn"><i class="fas fa-trash-alt"></i></a>';
                        return $btn;
                    })
                    ->rawColumns(['action', 'price', 'status'])
                    ->make(true);
        }
        return view('backend.product.view');
    }

    public function deleteProduct($slug){
        $data = Product::where('slug', $slug)->first();

        $orderExists = OrderDetails::where('product_id', $data->id)->first();
        if($orderExists){
            return response()->json(['success' => 'Product cannot be deleted', 'data' => 0]);
        }

        if($data->image){
            if(file_exists(public_path($data->image)) && $data->is_demo == 0){
                unlink(public_path($data->image));
            }
        }

        $gallery = ProductImage::where('product_id', $data->id)->get();
        if(count($gallery) > 0 && $data->is_demo == 0){
            foreach($gallery as $img){
                if($img->image && file_exists(public_path('productImages/'.$img->image))){
                    unlink(public_path('productImages/'.$img->image));
                }
                $img->delete();
            }
        }

        $variants = ProductVariant::where('product_id', $data->id)->orderBy('id', 'asc')->get();
        if(count($variants) > 0 && $data->is_demo == 0){
            foreach($variants as $img){
                if($img->image && file_exists(public_path('productImages/'.$img->image))){
                    unlink(public_path('productImages/'.$img->image));
                }
                $img->delete();
            }
        }

        ProductQuestionAnswer::where('product_id', $data->id)->delete();
        ProductReview::where('product_id', $data->id)->delete();
        $data->delete();
        return response()->json(['success' => 'Product deleted successfully.', 'data' => 1]);
    }

    public function editProduct($slug){
        $product = Product::where('slug', $slug)->first();
        $subcategories = Subcategory::where('category_id', $product->category_id)->select('name', 'id')->orderBy('name', 'asc')->get();
        $childcategories = ChildCategory::where('category_id', $product->category_id)->where('subcategory_id', $product->subcategory_id)->select('name', 'id')->orderBy('name', 'asc')->get();
        $productModels = ProductModel::where('brand_id', $product->brand_id)->select('name', 'id')->orderBy('name', 'asc')->get();
        $gallery = ProductImage::where('product_id', $product->id)->get();
        $productVariants = ProductVariant::where('product_id', $product->id)->orderBy('id', 'asc')->get();
        return view('backend.product.update', compact('product', 'gallery', 'subcategories', 'childcategories', 'productModels', 'productVariants'));
    }

    public function updateProduct(Request $request){

        $request->validate([
            'name' => 'required|max:255',
            'category_id' => 'required',
            'status' => 'required',
        ]);

        $product = Product::where('id', $request->id)->first();

        $image = $product->image;
        if ($request->hasFile('image')){

            if($product->image != '' && file_exists(public_path($product->image))){
                unlink(public_path($product->image));
            }

            $get_image = $request->file('image');
            $image_name = str::random(5) . time() . '.' . $get_image->getClientOriginalExtension();
            $location = public_path('productImages/');

            if($get_image->getClientOriginalExtension() == 'svg'){
                $get_image->move($location, $image_name);
            } else {
                Image::make($get_image)->save($location . $image_name, 60);
            }

            $image = "productImages/" . $image_name;
        }

        $clean = preg_replace('/[^a-zA-Z0-9\s]/', '', strtolower($request->name)); //remove all non alpha numeric
        $slug = preg_replace('!\s+!', '-', $clean);

        $product->name = $request->name;
        $product->strength = $request->strength;
        $product->generic_id = $request->generic_id;
        $product->disease_id = $request->disease_id;
        $product->medicine_type_id = $request->medicine_type_id;
        $product->piece_per_leaf = $request->piece_per_leaf;
        $product->leaf_per_box = $request->leaf_per_box;
        $product->short_description = $request->short_description;
        $product->description = $request->description;
        $product->tags = $request->tags;
        $product->video_url = $request->video_url;
        $product->category_id = $request->category_id;
        $product->subcategory_id = $request->subcategory_id;
        // $product->childcategory_id = $request->childcategory_id;
        $product->image = $image;
        $product->specification = $request->specification;
        $product->warrenty_policy = $request->warrenty_policy;
        $product->brand_id = $request->brand_id;
        // $product->model_id = $request->model_id;
        $product->code = $request->code;
        $product->unit_id = isset($request->unit_id) ? $request->unit_id : null;
        $product->status = $request->status;
        // $product->slug = $slug."-".time().str::random(5);
        $product->flag_id = $request->flag_id;

        $product->is_otc = $request->is_otc;
        $product->is_antibiotic = $request->is_antibiotic;

        $product->meta_title = $request->meta_title;
        $product->meta_keywords = $request->meta_keywords;
        $product->meta_description = $request->meta_description;
        $product->updated_at = Carbon::now();



        if($request->has_variant == 1){

            $gallery = ProductImage::where('product_id', $request->id)->get();
            if(count($gallery) > 0){
                foreach($gallery as $img){
                    if(file_exists(public_path('productImages/'.$img->image))){
                        unlink(public_path('productImages/'.$img->image));
                    }
                    $img->delete();
                }
            }

            //variant specific
            $product->price = 0;
            $product->discount_price = 0;
            $product->stock = 0;
            $product->multiple_images = NULL;
            $product->has_variant = 1;
            //variant specific

            $i = 0;
            foreach($request->product_variant_price as $price_id){


                if($i == 0){ // saving the base variant price & warrenty As product main price & warrenty for filtering
                    $product->price = $request->product_variant_price[$i];
                    $product->discount_price = $request->product_variant_discounted_price[$i];
                    $product->save();
                }

                $product_variant_id = isset($request->product_variant_id[$i]) ? $request->product_variant_id[$i] : null;

                if($product_variant_id){

                    $variantInfo = ProductVariant::where('id', $product_variant_id)->first();

                    $name = $variantInfo->image;
                    if(isset($request->file('product_variant_image')[$i])){
                        $name = time().str::random(5).'.'.$request->file('product_variant_image')[$i]->extension();
                        $location = public_path('productImages/');
                        $get_image = $request->file('product_variant_image')[$i];

                        if($get_image->extension() == 'svg'){
                            $get_image->move($location, $name);
                        } else {
                            Image::make($get_image)->save($location . $name, 60);
                        }

                    }

                    $variantInfo->image = $name;
                    $variantInfo->color_id = isset($request->product_variant_color_id[$i]) ? $request->product_variant_color_id[$i] : null;
                    $variantInfo->unit_id = isset($request->product_variant_unit_id[$i]) ? $request->product_variant_unit_id[$i] : null;
                    $variantInfo->size_id = isset($request->product_variant_size_id[$i]) ? $request->product_variant_size_id[$i] : null;
                    $variantInfo->region_id = isset($request->product_variant_region_id[$i]) ? $request->product_variant_region_id[$i] : null;
                    $variantInfo->sim_id = isset($request->product_variant_sim_id[$i]) ? $request->product_variant_sim_id[$i] : null;
                    $variantInfo->storage_type_id = isset($request->product_variant_storage_type_id[$i]) ? $request->product_variant_storage_type_id[$i] : null;
                    $variantInfo->stock = $request->product_variant_stock[$i];
                    $variantInfo->price = $price_id;
                    $variantInfo->discounted_price = $request->product_variant_discounted_price[$i];
                    $variantInfo->device_condition_id = isset($request->product_variant_device_condition_id[$i]) ? $request->product_variant_device_condition_id[$i] : null;
                    $variantInfo->updated_at = Carbon::now();
                    $variantInfo->save();

                } else {

                    $name = NULL;
                    if(isset($request->file('product_variant_image')[$i]) && $request->file('product_variant_image')[$i]){
                        $name = time().str::random(5).'.'.$request->file('product_variant_image')[$i]->extension();

                        $location = public_path('productImages/');
                        $get_image = $request->file('product_variant_image')[$i];

                        if($get_image->extension() == 'svg'){
                            $get_image->move($location, $name);
                        } else {
                            Image::make($get_image)->save($location . $name, 60);
                        }
                    }

                    ProductVariant::insert([
                        'product_id' => $product->id,
                        'image' => $name,
                        'color_id' => isset($request->product_variant_color_id[$i]) ? $request->product_variant_color_id[$i] : null,
                        'unit_id' => isset($request->product_variant_unit_id[$i]) ? $request->product_variant_unit_id[$i] : null,
                        'size_id' => isset($request->product_variant_size_id[$i]) ? $request->product_variant_size_id[$i] : null,
                        'region_id' => isset($request->product_variant_region_id[$i]) ? $request->product_variant_region_id[$i] : null,
                        'sim_id' => isset($request->product_variant_sim_id[$i]) ? $request->product_variant_sim_id[$i] : null,
                        'storage_type_id' => isset($request->product_variant_storage_type_id[$i]) ? $request->product_variant_storage_type_id[$i] : null,
                        'stock' => $request->product_variant_stock[$i],
                        'price' => $price_id,
                        'discounted_price' => $request->product_variant_discounted_price[$i],
                        'device_condition_id' => isset($request->product_variant_device_condition_id[$i]) ? $request->product_variant_device_condition_id[$i] : null,
                        'created_at' => Carbon::now()
                    ]);

                }
                $i++;
            }

        } else {

            //variant specific
            $product->price = $request->price > 0 ? $request->price : 0;
            $product->discount_price = $request->discount_price > 0 ? $request->discount_price : 0;
            $product->stock = $request->stock > 0 ? $request->stock : 0;
            $product->has_variant = 0;
            //variant specific

            // delete all the variants
            $variants = ProductVariant::where('product_id', $request->id)->orderBy('id', 'asc')->get();
            if(count($variants) > 0){
                foreach($variants as $img){
                    if(file_exists(public_path('productImages/'.$img->image))){
                        unlink(public_path('productImages/'.$img->image));
                    }
                    $img->delete();
                }
            }

            $files = [];
            if(isset($request->old) && is_array($request->old) && count($request->old) > 0){
                $oldImageIdArray = array();
                foreach($request->old as $oldImage){
                    $oldImageIdArray[] = $oldImage;
                }

                $gallery = ProductImage::where('product_id', $product->id)->get();
                foreach($gallery as $multipleImage){
                    if(!in_array($multipleImage->id, $oldImageIdArray)){
                        if(file_exists(public_path('productImages/'.$multipleImage->image))){
                            unlink(public_path('productImages/'.$multipleImage->image));
                        }
                        ProductImage::where('id', $multipleImage->id)->delete();
                    } else {
                        $files[] = $multipleImage->image;
                    }
                }
            } else {
                ProductImage::where('product_id', $product->id)->delete();
            }


            if($request->hasfile('photos'))
            {
                foreach($request->file('photos') as $file)
                {
                    $name = time().str::random(5).'.'.$file->extension();
                    $location = public_path('productImages/');

                    if($file->extension() == 'svg'){
                        $file->move($location, $name);
                    } else {
                        Image::make($file)->save($location . $name, 60);
                    }

                    $files[] = $name;

                    ProductImage::insert([
                        'product_id' => $product->id,
                        'image' => $name,
                        'created_at' => Carbon::now(),
                    ]);
                }
            }

            $product->multiple_images = json_encode($files);
            $product->save();
        }

        Toastr::success('Product Updated', 'Success');
        return redirect('/view/all/product');

    }

    public function viewAllProductReviews(Request $request){
        if ($request->ajax()) {

            $data = DB::table('product_reviews')
                        ->join('products', 'product_reviews.product_id', '=', 'products.id')
                        ->join('users', 'product_reviews.user_id', '=', 'users.id')
                        ->select('product_reviews.*', 'products.image as product_image', 'products.name as product_name', 'users.name as user_name',  'users.image as user_image')
                        ->orderBy('product_reviews.id', 'desc')
                        ->get();

            return Datatables::of($data)
                    ->editColumn('status', function($data) {
                        if($data->status == 1){
                            return 'Approved';
                        } else {
                            return 'Pending';
                        }
                    })
                    ->editColumn('rating', function($data) {
                        $rating = "";
                        for($i=1;$i<=$data->rating;$i++){
                            $rating .= '<i class="feather-star" style="color: goldenrod;"></i>';
                        }
                        return $rating;
                    })
                    ->addIndexColumn()
                    ->addColumn('action', function($data){
                        $btn = ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Delete" class="btn-sm btn-info rounded replyBtn d-inline-block mb-1"><i class="fas fa-reply"></i></a>';
                        if($data->status == 0){
                            $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->slug.'" data-original-title="Approve" class="btn-sm btn-success rounded approveBtn d-inline-block mb-1"><i class="fas fa-check"></i></a>';
                        }
                        $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->slug.'" data-original-title="Delete" class="btn-sm btn-danger rounded deleteBtn d-inline-block mb-1"><i class="fas fa-trash-alt"></i></a>';
                        return $btn;
                    })
                    ->rawColumns(['action', 'rating'])
                    ->make(true);
        }
        return view('backend.product.reviews');
    }

    public function approveProductReview($slug){
        ProductReview::where('slug', $slug)->update([
            'status' => 1,
            'updated_at' => Carbon::now()
        ]);

        return response()->json(['success' => 'Product Review Approved Successfully.']);
    }

    public function deleteProductReview($slug){
        ProductReview::where('slug', $slug)->delete();
        return response()->json(['success' => 'Product Review Deleted Successfully.']);
    }

    public function addAnotherVariant(){
        $returnHTML = view('backend.product.variant')->render();
        return response()->json(['variant' => $returnHTML]);
    }

    public function deleteProductVariant($id){
        $variant = ProductVariant::where('id', $id)->first();
        if($variant->image && file_exists(public_path('productImages/'.$variant->image))){
            unlink(public_path('productImages/'.$variant->image));
        }
        $variant->delete();
        return response()->json(['success' => 'Deleted Successfully']);
    }

    public function getProductReviewInfo($id){
        $data = ProductReview::where('id', $id)->first();
        return response()->json($data);
    }

    public function submitReplyOfProductReview(Request $request){
        ProductReview::where('id', $request->review_id)->update([
            'reply' => $request->reply,
            'updated_at' => Carbon::now()
        ]);
        return response()->json(['success' => 'Replied Successfully.']);
    }


    public function viewAllQuestionAnswer(Request $request){
        if ($request->ajax()) {

            $data = DB::table('product_question_answers')
                        ->leftJoin('products', 'product_question_answers.product_id', '=', 'products.id')
                        ->select('product_question_answers.*', 'products.image as product_image', 'products.name as product_name')
                        ->orderBy('product_question_answers.id', 'desc')
                        ->get();

            return Datatables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($data){
                        $btn = ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Delete" class="btn-sm btn-info rounded replyBtn d-inline-block mb-1"><i class="fas fa-reply"></i></a>';
                        $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Delete" class="btn-sm btn-danger rounded deleteBtn d-inline-block mb-1"><i class="fas fa-trash-alt"></i></a>';
                        return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }
        return view('backend.product.questions');
    }

    public function deleteQuestionAnswer($id){
        ProductQuestionAnswer::where('id', $id)->delete();
        return response()->json(['success' => 'Deleted Successfully']);
    }

    public function getQuestionAnswerInfo($id){
        $data = ProductQuestionAnswer::where('id', $id)->first();
        return response()->json($data);
    }

    public function submitAnswerOfQuestion(Request $request){
        ProductQuestionAnswer::where('id', $request->question_answer_id)->update([
            'answer' => $request->answer,
            'updated_at' => Carbon::now()
        ]);
        return response()->json(['success' => 'Replied Successfully.']);
    }

    // demo products function
    public function generateDemoProducts(){
        return view('backend.product.generate_demo');
    }

    public function saveGeneratedDemoProducts(Request $request){

        ini_set('max_execution_time', 3600);

        $faker = Container::getInstance()->make(Generator::class);

        for($i = 1; $i<=$request->products; $i++){

            $title = $faker->catchPhrase()."-".$i;
            $categoryId = Category::where('status', 1)->select('id')->inRandomOrder()->limit(1)->get();
            $subcategoryId = Subcategory::where('status', 1)->where('category_id', isset($categoryId[0]) ? $categoryId[0]->id : null)->select('id')->inRandomOrder()->limit(1)->get();
            $childCategoryId = ChildCategory::where('subcategory_id', isset($subcategoryId[0]) ? $subcategoryId[0]->id : null)->select('id')->inRandomOrder()->limit(1)->get();
            $brandId = Brand::where('status', 1)->select('id')->inRandomOrder()->limit(1)->get();
            // $modelId = ProductModel::where('brand_id', isset($brandId[0]) ? $brandId[0]->id : null)->select('id')->inRandomOrder()->limit(1)->get();
            $unitId = Unit::select('id')->inRandomOrder()->limit(1)->get();
            $warrentyId = ProductWarrenty::select('id')->inRandomOrder()->limit(1)->get();
            $flagId = Flag::select('id')->where('status', 1)->inRandomOrder()->limit(1)->get();
            $colorId = Color::select('id')->inRandomOrder()->limit(1)->get();
            $sizeId = ProductSize::select('id')->inRandomOrder()->limit(1)->get();
            $regionId = DB::table('country')->select('id')->inRandomOrder()->limit(1)->get();
            $simId = DB::table('sims')->select('id')->inRandomOrder()->limit(1)->get();
            $storageTypeId = DB::table('storage_types')->select('id')->inRandomOrder()->limit(1)->get();
            $conditionID = DB::table('device_conditions')->select('id')->inRandomOrder()->limit(1)->get();
            $warrentyID = DB::table('product_warrenties')->select('id')->inRandomOrder()->limit(1)->get();


            $generics = DB::table('medicine_generics')->select('id')->inRandomOrder()->limit(1)->get();
            $medicineTypes = DB::table('medicine_types')->select('id')->inRandomOrder()->limit(1)->get();
            $diseases = DB::table('diseases')->select('id')->inRandomOrder()->limit(1)->get();


            $multipleProductArray = array();
            for($j=1; $j<=4; $j++){
                $multipleProductArray[] = '31343C.svg';
            }

            $price = rand(100,999);

            $id = Product::insertGetId([
                'generic_id' => isset($generics[0]) ? $generics[0]->id : null,
                'disease_id' => isset($diseases[0]) ? $diseases[0]->id : null,
                'medicine_type_id' => isset($medicineTypes[0]) ? $medicineTypes[0]->id : null,

                'category_id' => isset($categoryId[0]) ? $categoryId[0]->id : null,
                'subcategory_id' => isset($subcategoryId[0]) ? $subcategoryId[0]->id : null,
                'childcategory_id' => isset($childCategoryId[0]) ? $childCategoryId[0]->id : null,
                'brand_id' => isset($brandId[0]) ? $brandId[0]->id : null,
                // 'model_id' => isset($modelId[0]) ? $modelId[0]->id : null,
                'name' => $title,
                'code' => rand(100,999),
                'image' => $request->product_type == 1 ? 'productImages/31343C.svg' : 'productImages/31343C.svg',
                'multiple_images' => $i%2 != 0 ? json_encode($multipleProductArray) : null,
                'strength' => $faker->text($maxNbChars = 10),
                'short_description' => $faker->text($maxNbChars = 200),
                'description' => $faker->text($maxNbChars = 400),
                'specification' => $faker->text($maxNbChars = 200),
                'warrenty_policy' => $faker->text($maxNbChars = 200),
                'price' => $price,
                'discount_price' => $price - 10,
                'stock' => 1000,
                'unit_id' => isset($unitId[0]) ? $unitId[0]->id : null,
                'tags' => 'product,demo',
                'video_url' => 'https://www.youtube.com/watch?v=2tirsYI5D2M',
                'slug' => time(). str::random(5),
                'flag_id' => isset($flagId[0]) ? $flagId[0]->id : null,
                'meta_title' => $title,
                'meta_keywords' => 'product,demo',
                'meta_description' => null,
                'status' => 1,
                'has_variant' => $i%2 == 0 ? 1 : 0,

                'is_otc' => $i%2 == 0 ? 1 : 0,
                'is_antibiotic' => $i%2 == 0 ? 1 : 0,

                'piece_per_leaf' => 10,
                'leaf_per_box' => 15,
                'is_demo' => 1,
                'created_at' => Carbon::now()
            ]);

            if($i%2 != 0){
                foreach($multipleProductArray as $image)
                {
                    ProductImage::insert([
                        'product_id' => $id,
                        'image' => $image,
                        'created_at' => Carbon::now(),
                    ]);
                }
            }

            if($i%2 == 0){
                foreach($multipleProductArray as $image)
                {
                    $unitId = Unit::select('id')->inRandomOrder()->limit(1)->get();

                    $variantInfo = new ProductVariant();
                    $variantInfo->product_id = $id;
                    $variantInfo->image = $image;
                    $variantInfo->color_id = isset($colorId[0]) ? $colorId[0]->id : null;
                    $variantInfo->unit_id = isset($unitId[0]) ? $unitId[0]->id : null;
                    $variantInfo->size_id = isset($sizeId[0]) ? $sizeId[0]->id : null;
                    $variantInfo->region_id = isset($regionId[0]) ? $regionId[0]->id : null;
                    $variantInfo->sim_id = isset($simId[0]) ? $simId[0]->id : null;
                    $variantInfo->storage_type_id = isset($storageTypeId[0]) ? $storageTypeId[0]->id : null;
                    $variantInfo->stock = 1000;
                    $variantInfo->price = $price;
                    $variantInfo->discounted_price = $price - 10;
                    $variantInfo->device_condition_id = isset($conditionID[0]) ? $conditionID[0]->id : null;
                    $variantInfo->created_at = Carbon::now();
                    $variantInfo->save();

                    ProductReview::insert([
                        'product_id' => $id,
                        'user_id' => 1,
                        'rating' => rand(1,5),
                        'review' => $faker->catchPhrase(),
                        'reply' => 'thanks',
                        'slug' => time(). str::random(5),
                        'status' => 1,
                        'created_at' => Carbon::now(),
                    ]);

                }
            }
        }

        Toastr::success('Demo Products Inserted', 'Success');
        return back();
    }

    public function removeDemoProductsPage(){
        return view('backend.product.remove_demo');
    }

    public function removeDemoProducts(){

        ini_set('max_execution_time', 3600);

        $products = Product::where('is_demo', 1)->get();
        foreach($products as $product){
            ProductImage::where('product_id', $product->id)->delete();
            ProductVariant::where('product_id', $product->id)->delete();
            ProductReview::where('product_id', $product->id)->delete();
            $product->delete();
        }
        Toastr::success('Successfully Removed Demo Products', 'Success');
        return back();
    }

}
