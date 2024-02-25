<?php

namespace App\Http\Controllers;

use App\Models\MedicineRequest;
use App\Models\MedicineRequestItem;
use App\Models\NursingService;
use App\Models\NursingServiceRequest;
use App\Models\Prescription;
use App\Models\Service;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Str;
use Carbon\Carbon;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\DB;

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



    public function nursingServiceTypes(Request $request){
        if ($request->ajax()) {

            $data = NursingService::orderBy('id', 'desc')->get();

            return Datatables::of($data)
                    ->editColumn('status', function($data) {
                        if($data->status == 1){
                            return '<button class="btn btn-sm btn-success rounded">Active</button>';
                        } else {
                            return '<button class="btn btn-sm btn-danger rounded">Inactive</button>';
                        }
                    })
                    ->addIndexColumn()
                    ->addColumn('action', function($data){
                        $btn = ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Edit" class="mb-1 btn-sm btn-warning rounded editBtn"><i class="fas fa-edit"></i></a>';
                        $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Delete" class="btn-sm btn-danger rounded deleteBtn"><i class="fas fa-trash-alt"></i></a>';
                        return $btn;
                    })
                    ->rawColumns(['action', 'status'])
                    ->make(true);
        }
        return view('backend.service.nursing_service_type');
    }
    public function saveNursingServiceType(Request $request){
        NursingService::insert([
            'name' => $request->name,
            'price' => $request->price,
            'status' => 1,
            'slug' => str::random(5) . time(),
            'created_at' => Carbon::now()
        ]);
        return response()->json(['success'=>'Saved successfully.']);
    }
    public function deleteNursingServiceType($id){
        NursingService::where('id', $id)->delete();
        return response()->json(['success'=>'Deleted Successfully.']);
    }
    public function getNursingServiceInfo($id){
        $data = NursingService::where('id', $id)->first();
        return response()->json($data);
    }
    public function updateNursingService(Request $request){
        NursingService::where('id', $request->service_id)->update([
            'name' => $request->service_name,
            'price' => $request->service_price,
            'status' => $request->service_status,
            'updated_at' => Carbon::now()
        ]);
        return response()->json(['success'=>'Updated successfully.']);
    }
    public function nursingServiceRequests(Request $request){
        if ($request->ajax()) {

            $data = DB::table('nursing_service_requests')
                ->leftJoin('nursing_services', 'nursing_service_requests.service_id', 'nursing_services.id')
                ->select('nursing_service_requests.*', 'nursing_services.name as service_name', 'nursing_services.price as service_price')
                ->orderBy('id', 'desc')
                ->get();

            return Datatables::of($data)
                    ->editColumn('status', function($data) {
                        if($data->status == 0){
                            return '<button class="btn btn-sm btn-warning rounded">Pending</button>';
                        } else if($data->status == 1) {
                            return '<button class="btn btn-sm btn-info rounded">In Progress</button>';
                        } else if($data->status == 2){
                            return '<button class="btn btn-sm btn-success rounded">Completed</button>';
                        } else {
                            return '<button class="btn btn-sm btn-danger rounded">Cancelled</button>';
                        }
                    })
                    ->editColumn('service_date_time', function($data) {
                        if($data->service_date_time)
                            return date("Y-m-d H:i a", strtotime($data->service_date_time));
                    })
                    ->addIndexColumn()
                    ->addColumn('action', function($data){
                        $btn = '';

                        if($data->status == 0){
                            $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="In Progress" class="mb-1 btn-sm btn-info rounded inProgress"><i class="fas fa-check"></i> Approve</a>';
                            $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Cancel" class="mb-1 btn-sm btn-danger rounded warning cancelBtn"><i class="fas fa-times"></i> Cancel</a>';
                        }
                        if($data->status == 1){
                            $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Complete" class="mb-1 btn-sm btn-success rounded completeBtn"><i class="fas fa-check"></i> Complete</a>';
                        }

                        $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Delete" class="btn-sm btn-danger rounded deleteBtn"><i class="fas fa-trash-alt"></i></a>';
                        return $btn;
                    })
                    ->rawColumns(['action', 'status'])
                    ->make(true);
        }
        return view('backend.service.nursing_service_requests');
    }
    public function deleteNursingServiceRequest($id){
        NursingServiceRequest::where('id', $id)->delete();
        return response()->json(['success'=>'Deleted Successfully.']);
    }
    public function approveNursingServiceRequest($id){
        NursingServiceRequest::where('id', $id)->update([
            'status' => 1,
            'updated_at' => Carbon::now(),
        ]);
        return response()->json(['success'=>'Updated Successfully.']);
    }
    public function cancelNursingServiceRequest($id){
        NursingServiceRequest::where('id', $id)->update([
            'status' => 3,
            'updated_at' => Carbon::now(),
        ]);
        return response()->json(['success'=>'Updated Successfully.']);
    }
    public function completeNursingServiceRequest($id){
        NursingServiceRequest::where('id', $id)->update([
            'status' => 2,
            'updated_at' => Carbon::now(),
        ]);
        return response()->json(['success'=>'Updated Successfully.']);
    }



    public function viewUploadedPrescriptions(Request $request){
        if ($request->ajax()) {

            $data = DB::table('prescriptions')
                ->orderBy('id', 'desc')
                ->get();

            return Datatables::of($data)
                    ->editColumn('status', function($data) {
                        if($data->status == 0){
                            return '<button class="btn btn-sm btn-warning rounded">Just Uploaded</button>';
                        } else if($data->status == 1) {
                            return '<button class="btn btn-sm btn-info rounded">Checking</button>';
                        } else if($data->status == 2){
                            return '<button class="btn btn-sm btn-info rounded">In Transit</button>';
                        } else if($data->status == 3){
                            return '<button class="btn btn-sm btn-success rounded">Delivered</button>';
                        } else {
                            return '<button class="btn btn-sm btn-danger rounded">Cancelled</button>';
                        }
                    })
                    ->editColumn('attachment', function($data) {
                        if($data->attachment && file_exists(public_path($data->attachment))){
                            return "<a href='".url($data->attachment)."' target='_blank' class='btn btn-sm btn-success'>View Prescription</a>";
                        }
                    })
                    ->editColumn('created_at', function($data) {
                        if($data->created_at)
                            return date("Y-m-d H:i a", strtotime($data->created_at));
                    })
                    ->addIndexColumn()
                    ->addColumn('action', function($data){
                        $btn = '';

                        if($data->status == 0){
                            $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="In Progress" class="mb-1 btn-sm btn-info rounded inProgress"><i class="fas fa-check"></i> Approve</a>';
                            $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Cancel" class="mb-1 btn-sm btn-danger rounded warning cancelBtn"><i class="fas fa-times"></i> Cancel</a>';
                        }
                        if($data->status == 1){
                            $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="In Transit" class="mb-1 btn-sm btn-info rounded completeBtn"><i class="fas fa-check"></i> In Transit</a>';
                            $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Cancel" class="mb-1 btn-sm btn-danger rounded warning cancelBtn"><i class="fas fa-times"></i> Cancel</a>';
                        }
                        if($data->status == 2){
                            $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Delivered" class="mb-1 btn-sm btn-success rounded deliverBtn"><i class="fas fa-check"></i> Delivered</a>';
                        }

                        $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Delete" class="btn-sm btn-danger rounded deleteBtn"><i class="fas fa-trash-alt"></i></a>';
                        return $btn;
                    })
                    ->rawColumns(['action', 'status', 'attachment'])
                    ->make(true);
        }
        return view('backend.service.uploaded_prescriptions');
    }
    public function deleteUploadedPrescription($id){
        $data = Prescription::where('id', $id)->first();
        if($data->attachment && file_exists(public_path($data->attachment))){
            unlink(public_path($data->attachment));
        }
        $data->delete();
        return response()->json(['success'=>'Deleted Successfully.']);
    }
    public function approveUploadedPrescription($id){
        Prescription::where('id', $id)->update([
            'status' => 1,
            'updated_at' => Carbon::now(),
        ]);
        return response()->json(['success'=>'Updated Successfully.']);
    }
    public function cancelUploadedPrescription($id){
        Prescription::where('id', $id)->update([
            'status' => 4,
            'updated_at' => Carbon::now(),
        ]);
        return response()->json(['success'=>'Updated Successfully.']);
    }
    public function completeUploadedPrescription($id){
        Prescription::where('id', $id)->update([
            'status' => 2,
            'updated_at' => Carbon::now(),
        ]);
        return response()->json(['success'=>'Updated Successfully.']);
    }
    public function deliverUploadedPrescription($id){
        Prescription::where('id', $id)->update([
            'status' => 3,
            'updated_at' => Carbon::now(),
        ]);
        return response()->json(['success'=>'Updated Successfully.']);
    }



    public function viewMedicineRequests(Request $request){
        if ($request->ajax()) {

            $data = DB::table('medicine_requests')
                ->orderBy('id', 'desc')
                ->get();

            return Datatables::of($data)
                    ->editColumn('status', function($data) {
                        if($data->status == 0){
                            return '<button class="btn btn-sm btn-warning rounded">Pending</button>';
                        } else if($data->status == 1) {
                            return '<button class="btn btn-sm btn-info rounded">Checking</button>';
                        } else if($data->status == 2){
                            return '<button class="btn btn-sm btn-info rounded">In Transit</button>';
                        } else if($data->status == 3){
                            return '<button class="btn btn-sm btn-success rounded">Delivered</button>';
                        } else {
                            return '<button class="btn btn-sm btn-danger rounded">Cancelled</button>';
                        }
                    })
                    ->editColumn('created_at', function($data) {
                        if($data->created_at)
                            return date("Y-m-d H:i a", strtotime($data->created_at));
                    })
                    ->addIndexColumn()
                    ->addColumn('action', function($data){
                        $btn = '';

                        if($data->status == 0){
                            $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="In Progress" class="mb-1 btn-sm btn-info rounded inProgress"><i class="fas fa-check"></i> Approve</a>';
                            $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Cancel" class="mb-1 btn-sm btn-danger rounded warning cancelBtn"><i class="fas fa-times"></i> Cancel</a>';
                        }
                        if($data->status == 1){
                            $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="In Transit" class="mb-1 btn-sm btn-info rounded completeBtn"><i class="fas fa-check"></i> In Transit</a>';
                            $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Cancel" class="mb-1 btn-sm btn-danger rounded warning cancelBtn"><i class="fas fa-times"></i> Cancel</a>';
                        }
                        if($data->status == 2){
                            $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Delivered" class="mb-1 btn-sm btn-success rounded deliverBtn"><i class="fas fa-check"></i> Delivered</a>';
                        }

                        $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="View" class="btn-sm btn-success rounded viewBtn"><i class="fa fa-eye"></i></a>';
                        $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Delete" class="btn-sm btn-danger rounded deleteBtn"><i class="fas fa-trash-alt"></i></a>';
                        return $btn;
                    })
                    ->rawColumns(['action', 'status', 'attachment'])
                    ->make(true);
        }
        return view('backend.service.medicine_requests');
    }
    public function deleteMedicineRequest($id){
        $data = MedicineRequest::where('id', $id)->first();
        MedicineRequestItem::where('medicine_request_id', $data->id)->delete();
        $data->delete();
        return response()->json(['success'=>'Deleted Successfully.']);
    }
    public function approveMedicineRequest($id){
        MedicineRequest::where('id', $id)->update([
            'status' => 1,
            'updated_at' => Carbon::now(),
        ]);
        return response()->json(['success'=>'Updated Successfully.']);
    }
    public function cancelMedicineRequest($id){
        MedicineRequest::where('id', $id)->update([
            'status' => 4,
            'updated_at' => Carbon::now(),
        ]);
        return response()->json(['success'=>'Updated Successfully.']);
    }
    public function completeMedicineRequest($id){
        MedicineRequest::where('id', $id)->update([
            'status' => 2,
            'updated_at' => Carbon::now(),
        ]);
        return response()->json(['success'=>'Updated Successfully.']);
    }
    public function deliverMedicineRequest($id){
        MedicineRequest::where('id', $id)->update([
            'status' => 3,
            'updated_at' => Carbon::now(),
        ]);
        return response()->json(['success'=>'Updated Successfully.']);
    }
    public function getMedicineRequestItems($id){
        $data = MedicineRequestItem::where('medicine_request_id', $id)->get();
        $str = '<table class="table w-100 table-sm table-bordered table-striped"><tr><td class="text-center">SL</td><td>Medicine Name</td><td class="text-center">Qty</td></tr>';

        $serial = 1;
        foreach($data as $item){
            $str .= "<tr>";
            $str .= "<td class='text-center'>".$serial++."</td>";
            $str .= "<td>".$item->meicine_name."</td>";
            $str .= "<td class='text-center'><b>".$item->qty."</b></td>";
        }
        $str .= "</table>";

        return response()->json($str);
    }
}
