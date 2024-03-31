<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Prescription;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Carbon\Carbon;

class PrescriptionController extends Controller
{
    public function uploadPrescription(Request $request){

        $attachment = null;
        if ($request->hasFile('attachment')){
            $get_image = $request->file('attachment');
            $image_name = str::random(5) . time() . '.' . $get_image->getClientOriginalExtension();
            $location = public_path('prescriptions/');
            $get_image->move($location, $image_name);
            $attachment = "prescriptions/" . $image_name;
        }

        $id = Prescription::insertGetId([
            'user_id' => auth()->user()->id,
            'patient_name' => $request->patient_name,
            'patient_phone' => $request->patient_phone,
            'address' => $request->address,
            'attachment' => $attachment,
            'slug' => str::random(5) . time(),
            'status' => 0,
            'created_at' => Carbon::now()
        ]);

        $serialNo = $id."MobileApp". str_pad(Prescription::count()+1, 5, "0", STR_PAD_LEFT);
        Prescription::where('id', $id)->update([
            'serial_no' => $serialNo
        ]);

        return response()->json([
            'success' => true,
            'message' => "Prescription has Uploaded"
        ], 200);

    }

    public function myPrescriptions(){
        $data = Prescription::where('user_id', auth()->user()->id)->orderBy('id', 'desc')->paginate(10);
        return response()->json([
            'success' => true,
            'data' => $data
        ], 200);
    }

    public function updateMyPrescription(Request $request){

        $data = Prescription::where('id', $request->prescription_id)->where('user_id', auth()->user()->id)->first();

        if($data){

            $attachment = $data->attachment;

            if ($request->hasFile('attachment')){

                if($attachment && file_exists(public_path($attachment))){
                    unlink(public_path($attachment));
                }

                $get_image = $request->file('attachment');
                $image_name = str::random(5) . time() . '.' . $get_image->getClientOriginalExtension();
                $location = public_path('prescriptions/');
                $get_image->move($location, $image_name);
                $attachment = "prescriptions/" . $image_name;
            }

            $data->patient_name = $request->patient_name;
            $data->patient_phone = $request->patient_phone;
            $data->address = $request->address;
            $data->attachment = $attachment;
            $data->updated_at = Carbon::now();
            $data->save();

            return response()->json([
                'success' => true,
                'message' => "Prescription has Updated"
            ], 200);

        } else {
            return response()->json([
                'success' => false,
                'message' => "Prescription Not Found"
            ], 200);
        }

    }

    public function deleteMyPrescription(Request $request){

        $data = Prescription::where('id', $request->prescription_id)->where('user_id', auth()->user()->id)->first();
        if($data){
            if($data->attachment && file_exists(public_path($data->attachment))){
                unlink(public_path($data->attachment));
            }
        }
        $data->delete();

        return response()->json([
            'success' => true,
            'message' => "Prescription has been Deleted"
        ], 200);
    }
}
