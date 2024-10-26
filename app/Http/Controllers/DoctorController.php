<?php

namespace App\Http\Controllers;

use App\Models\Doctor;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\DataTables;

class DoctorController extends Controller
{
    public function addNewDoctor(){
        return view('backend.doctor.create');
    }

    public function saveNewDoctor(Request $request){

        $image = null;
        if ($request->hasFile('image')){
            $get_image = $request->file('image');
            $image_name = str::random(5) . time() . '.' . $get_image->getClientOriginalExtension();
            $location = public_path('doctors_image/');

            if($get_image->getClientOriginalExtension() == 'svg'){
                $get_image->move($location, $image_name);
            } else {
                Image::make($get_image)->save($location . $image_name, 60);
            }

            $image = "doctors_image/" . $image_name;
        }

        Doctor::insert([
            'image' => $image,
            'visiting_charge' => $request->visiting_charge,
            'name' => $request->name,
            'degree' => $request->degree,
            'institution' => $request->institution,
            'available_time' => $request->available_time,
            'contact' => $request->contact,
            'location' => $request->location,
            'biography' => $request->biography,
            'education' => $request->education,
            'status' => 1,
            'slug' => str::random(5) . time(),
            'created_at' => Carbon::now()
        ]);

        Toastr::success('New Doctor Added', 'Success');
        return back();

    }

    public function viewAllDoctors(Request $request){
        if ($request->ajax()) {

            $data = Doctor::orderBy('id', 'desc')->get();

            return Datatables::of($data)
                    ->editColumn('status', function($data) {
                        if($data->status == 1){
                            return '<span class="btn btn-sm btn-success rounded" style="padding: 0.1rem .5rem;">Active</span>';
                        } else {
                            return '<span class="btn btn-sm btn-warning rounded" style="padding: 0.1rem .5rem;">Inactive</span>';
                        }
                    })
                    ->addIndexColumn()
                    ->addColumn('action', function($data){
                        $btn = ' <a href="'.url('edit/doctor').'/'.$data->slug.'" class="mb-1 btn-sm btn-warning rounded"><i class="fas fa-edit"></i></a>';
                        $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->slug.'" data-original-title="Delete" class="btn-sm btn-danger rounded deleteBtn"><i class="fas fa-trash-alt"></i></a>';
                        return $btn;
                    })
                    ->rawColumns(['action', 'image', 'status'])
                    ->make(true);
        }
        return view('backend.doctor.view');
    }

    public function deleteDoctor($slug){
        $doctorInfo = Doctor::where('slug', $slug)->first();

        if($doctorInfo && $doctorInfo->image){
            if(file_exists(public_path($doctorInfo->image))){
                unlink(public_path($doctorInfo->image));
            }
        }

        $doctorInfo->delete();
        return response()->json(['success'=>'Deleted successfully.']);
    }

    public function editDoctor($slug){
        $data = Doctor::where('slug', $slug)->first();
        return view('backend.doctor.update', compact('data'));
    }

    public function updateDoctor(Request $request){

        $data = Doctor::where('id', $request->doctor_id)->first();

        $image = $data->image;
        if ($request->hasFile('image')){

            if($data && $data->image){
                if(file_exists(public_path($data->image))){
                    unlink(public_path($data->image));
                }
            }

            $get_image = $request->file('image');
            $image_name = str::random(5) . time() . '.' . $get_image->getClientOriginalExtension();
            $location = public_path('doctors_image/');

            if($get_image->getClientOriginalExtension() == 'svg'){
                $get_image->move($location, $image_name);
            } else {
                Image::make($get_image)->save($location . $image_name, 60);
            }

            $image = "doctors_image/" . $image_name;
        }

        Doctor::where('id', $request->doctor_id)->update([
            'image' => $image,
            'visiting_charge' => $request->visiting_charge,
            'name' => $request->name,
            'degree' => $request->degree,
            'institution' => $request->institution,
            'available_time' => $request->available_time,
            'contact' => $request->contact,
            'location' => $request->location,
            'biography' => $request->biography,
            'education' => $request->education,
            'status' => $request->status,
            'updated_at' => Carbon::now()
        ]);

        Toastr::success('Doctor Info Updated', 'Success');
        return redirect('view/all/doctors');
    }

    public function doctorAppointments(Request $request){
        if ($request->ajax()) {

            $data = DB::table('doctor_visit_requests')
                ->leftJoin('doctors', 'doctor_visit_requests.doctor_id', 'doctors.id')
                ->select('doctor_visit_requests.*', 'doctors.name as doctor_name', 'doctors.degree', 'doctors.institution', 'doctors.visiting_charge')
                ->orderBy('doctor_visit_requests.id', 'desc')
                ->get();

            return Datatables::of($data)
                    ->editColumn('doctor_id', function ($data) {
                        return $data->doctor_name . " [" . $data->degree . "]<br>" . $data->institution;
                    })
                    ->editColumn('name', function ($data) {
                        return $data->name . "<br>Age:" . $data->age . "; Weight:" . $data->weight;
                    })
                    ->editColumn('status', function($data) {
                        if($data->status == 0){
                            return '<button class="btn btn-sm btn-warning rounded">Pending</button>';
                        } else if($data->status == 1) {
                            return '<button class="btn btn-sm btn-success rounded">Approved</button>';
                        } else {
                            return '<button class="btn btn-sm btn-danger rounded">Cancelled</button>';
                        }
                    })
                    ->editColumn('visit_date_time', function($data) {
                        if($data->visit_date_time)
                            return date("d M, Y g:iA", strtotime($data->visit_date_time));
                    })
                    ->editColumn('created_at', function($data) {
                        if($data->created_at)
                            return date("d M, Y g:iA", strtotime($data->created_at));
                    })
                    ->addIndexColumn()
                    ->addColumn('action', function($data){
                        $btn = '';

                        if($data->status == 0){
                            $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="In Progress" class="mb-1 btn-sm btn-info rounded completeBtn"><i class="fas fa-check"></i> Approve</a>';
                            $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Cancel" class="mb-1 btn-sm btn-danger rounded warning cancelBtn"><i class="fas fa-times"></i> Cancel</a>';
                        }

                        $btn .= ' <a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$data->id.'" data-original-title="Delete" class="btn-sm btn-danger rounded deleteBtn"><i class="fas fa-trash-alt"></i></a>';
                        return $btn;
                    })
                    ->rawColumns(['action', 'status', 'name', 'doctor_id'])
                    ->make(true);
        }
        return view('backend.service.doctor_appointments');
    }

    public function deleteDoctorAppointment($id){
        DB::table('doctor_visit_requests')->where('id', $id)->delete();
        return response()->json(['success' => 'Deleted Successfully.']);
    }
    public function approveDoctorAppointment($id){
        DB::table('doctor_visit_requests')->where('id', $id)->update([
            'status' => 1,
            'created_at' => Carbon::now()
        ]);
        return response()->json(['success' => 'Approved Successfully.']);
    }
    public function cancelDoctorAppointment($id){
        DB::table('doctor_visit_requests')->where('id', $id)->update([
            'status' => 2,
            'created_at' => Carbon::now()
        ]);
        return response()->json(['success' => 'Approved Successfully.']);
    }
}
