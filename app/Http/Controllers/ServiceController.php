<?php

namespace App\Http\Controllers;

use App\Models\Service;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Str;
use Carbon\Carbon;
use Brian2694\Toastr\Facades\Toastr;

class ServiceController extends Controller
{
    public function serviceConfig(Request $request){
        if ($request->ajax()) {

            $data = Service::orderBy('serial', 'asc')->get();

            return Datatables::of($data)
                    ->editColumn('status', function($data) {
                        if($data->status == 1){
                            return '<button class="btn btn-sm btn-success rounded">Active</button>';
                        } else {
                            return '<button class="btn btn-sm btn-danger rounded">Inactive</button>';
                        }
                    })
                    ->editColumn('image', function($data) {
                        if($data->image && file_exists(public_path($data->image)))
                            return $data->image;
                    })
                    ->editColumn('banner', function($data) {
                        if($data->banner && file_exists(public_path($data->banner)))
                            return $data->banner;
                    })
                    ->addIndexColumn()
                    ->addColumn('action', function($data){
                        $btn = '<a href="'.url('edit/service').'/'.$data->id.'" class="mb-1 btn-sm btn-warning rounded"><i class="fas fa-edit"></i></a>';
                        return $btn;
                    })
                    ->rawColumns(['action', 'status'])
                    ->make(true);
        }
        return view('backend.service.config');
    }

    public function editService($id){
        $data = Service::where('id', $id)->first();
        return view('backend.service.edit_service', compact('data'));
    }

    public function updateService(Request $request){

        $data = Service::where('id', $request->service_id)->first();

        $image = $data->image;
        if ($request->hasFile('image')){

            if($data->image != '' && file_exists(public_path($data->image))){
                unlink(public_path($data->image));
            }

            $get_image = $request->file('image');
            $image_name = str::random(5) . time() . '.' . $get_image->getClientOriginalExtension();
            $location = public_path('service/');
            $get_image->move($location, $image_name);
            $image = "service/" . $image_name;
        }

        $banner = $data->banner;
        if ($request->hasFile('banner')){

            if($data->banner != '' && file_exists(public_path($data->banner))){
                unlink(public_path($data->banner));
            }

            $get_image = $request->file('banner');
            $image_name = str::random(5) . time() . '.' . $get_image->getClientOriginalExtension();
            $location = public_path('service/');
            $get_image->move($location, $image_name);
            $banner = "service/" . $image_name;
        }

        Service::where('id', $request->service_id)->update([
            'image' => $image,
            'banner' => $banner,
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
            'status' => $request->status,
            'updated_at' => Carbon::now()
        ]);

        Toastr::success('Information Updated', 'Success');
        return redirect('service/config');
    }
}
