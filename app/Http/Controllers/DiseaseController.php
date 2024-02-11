<?php

namespace App\Http\Controllers;

use App\Models\Disease;
use Illuminate\Support\Str;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Brian2694\Toastr\Facades\Toastr;

class DiseaseController extends Controller
{
    public function viewDiseases(Request $request){
        if ($request->ajax()) {

            $data = Disease::orderBy('id', 'desc')->get();

            return Datatables::of($data)
                    ->editColumn('status', function($data) {
                        if($data->status == 1)
                            return "<span class='btn btn-sm btn-success'>Active</span>";
                        else
                            return "<span class='btn btn-sm btn-danger'>Inactive</span>";
                    })
                    ->editColumn('image', function($data) {
                        if($data->image && file_exists(public_path($data->image))){
                            return $data->image;
                        }
                    })
                    ->addIndexColumn()
                    ->addColumn('action', function($data){
                        $btn = ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" title="Featured" data-original-title="Featured" class="btn-sm btn-warning rounded editBtn"><i class="fas fa-edit"></i></a>';
                        $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" title="Featured" data-original-title="Featured" class="btn-sm btn-danger rounded deleteBtn"><i class="fas fa-trash-alt"></i></a>';
                        return $btn;
                    })
                    ->rawColumns(['action', 'status'])
                    ->make(true);
        }
        return view('backend.config.diseases');
    }

    public function saveDisease(Request $request){

        $image = null;
        if ($request->hasFile('image')){
            $get_image = $request->file('image');
            $image_name = str::random(5) . time() . '.' . $get_image->getClientOriginalExtension();
            $location = public_path('diseases_images/');
            $get_image->move($location, $image_name);
            $image = "diseases_images/" . $image_name;
        }

        Disease::insert([
            'image' => $image,
            'name' => $request->name,
            'scientific_name' => $request->scientific_name,
            'description' => $request->description,
            'serial' => Disease::min('serial') - 1,
            'created_at' => Carbon::now()
        ]);
        return response()->json(['success'=>'Created successfully.']);
    }

    public function deleteDisease($id){
        Disease::where('id', $id)->delete();
        return response()->json(['success'=>'Deleted Successfully.']);
    }

    public function getDiseaseInfo($id){
        $data = Disease::where('id', $id)->first();
        return response()->json($data);
    }

    public function updateDisease(Request $request){

        $data = Disease::where('id', $request->disease_id)->first();

        $image = $data->image;
        if ($request->hasFile('image')){

            if($image != '' && file_exists(public_path($image))){
                unlink(public_path($image));
            }

            $get_image = $request->file('image');
            $image_name = str::random(5) . time() . '.' . $get_image->getClientOriginalExtension();
            $location = public_path('diseases_images/');
            // Image::make($get_image)->save($location . $image_name, 80);
            $get_image->move($location, $image_name);
            $image = "diseases_images/" . $image_name;
        }

        Disease::where('id', $request->disease_id)->update([
            'image' => $image,
            'name' => $request->name,
            'scientific_name' => $request->scientific_name,
            'description' => $request->description,
            'status' => $request->status,
            'updated_at' => Carbon::now()
        ]);
        return response()->json(['success'=>'Updated successfully.']);
    }

    public function rearrangeDiseases(){
        $diseases = Disease::orderBy('serial', 'asc')->get();
        return view('backend.config.rearrange_diseases', compact('diseases'));
    }

    public function saveRearrangedDiseases(Request $request){
        $sl = 1;
        foreach($request->id as $id){
            Disease::where('id', $id)->update([
                'serial' => $sl
            ]);
            $sl++;
        }
        Toastr::success('Diseases has been Rerranged', 'Success');
        return redirect('/view/all/diseases');
    }
}
