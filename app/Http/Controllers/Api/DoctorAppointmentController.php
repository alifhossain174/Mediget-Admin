<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Models\DoctorVisitRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Doctor;
use Carbon\Carbon;

class DoctorAppointmentController extends Controller
{
    public function doctorsList(Request $request){

        if ($request->header('Authorization') == ApiController::AUTHORIZATION_TOKEN) {

            $doctors = Doctor::orderBy('name', 'asc')->where('status', 1)->paginate(15);
            return response()->json([
                'success' => true,
                'data' => $doctors
            ], 200);

        } else {
            return response()->json([
                'success' => false,
                'message' => "Authorization Token is Invalid"
            ], 422);
        }

    }

    public function submitDoctorAppointment(Request $request){

        $id = DoctorVisitRequest::insertGetId([
            'user_id' => auth()->user()->id,
            'doctor_id' => $request->doctor_id,
            'name' => $request->name,
            'phone' => $request->phone,
            'age' => $request->age,
            'weight' => $request->weight,
            'visit_date_time' => $request->visit_date_time,
            'slug' => str::random(5) . time(),
            'status' => 0,
            'created_at' => Carbon::now()
        ]);

        $serialNo = $id."MobileApp". str_pad(DoctorVisitRequest::count()+1, 5, "0", STR_PAD_LEFT);
        DoctorVisitRequest::where('id', $id)->update([
            'serial_no' => $serialNo
        ]);

        return response()->json([
            'success' => true,
            'message' => "Doctor Appointment Submitted"
        ], 200);

    }

    public function myDoctorAppointments(){
        $data = DB::table('doctor_visit_requests')
                    ->leftJoin('doctors', 'doctor_visit_requests.doctor_id', 'doctors.id')
                    ->select('doctor_visit_requests.*', 'doctors.name as doctor_name', 'doctors.degree', 'doctors.institution', 'doctors.contact as doctor_contact', 'doctors.location as doctor_chamber')
                    ->where('user_id', auth()->user()->id)
                    ->orderBy('id', 'desc')
                    ->paginate(10);

        return response()->json([
            'success' => true,
            'data' => $data
        ], 200);
    }

    public function updateDoctorAppointment(Request $request){

        DoctorVisitRequest::where('id', $request->doctor_appointment_id)->where('user_id', auth()->user()->id)->update([
            'name' => $request->name,
            'phone' => $request->phone,
            'age' => $request->age,
            'weight' => $request->weight,
            'visit_date_time' => $request->visit_date_time,
            'updated_at' => Carbon::now()
        ]);

        return response()->json([
            'success' => true,
            'message' => "Doctor Appointment has been Updated"
        ], 200);

    }

    public function deleteMyDoctorAppointment(Request $request){
        DoctorVisitRequest::where('id', $request->doctor_appointment_id)->where('user_id', auth()->user()->id)->delete();
        return response()->json([
            'success' => true,
            'message' => "Doctor Appointment has been Deleted"
        ], 200);
    }
}
