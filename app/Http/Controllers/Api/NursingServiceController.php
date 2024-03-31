<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\NursingService;
use App\Models\NursingServiceRequest;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Carbon\Carbon;

class NursingServiceController extends Controller
{
    public function nursingServiceCategories(){

        $categories = NursingService::orderBy('name', 'asc')->where('status', 1)->get();
        return response()->json([
            'success' => true,
            'data' => $categories
        ], 200);
        
    }

    public function submitNursingServiceRequest(Request $request){

        $id = NursingServiceRequest::insertGetId([
            'service_id' => $request->service_id,
            'user_id' => auth()->user()->id,
            'service_date_time' => $request->service_date_time,
            'patient_name' => $request->patient_name,
            'patient_phone' => $request->patient_phone,
            'remarks' => $request->remarks,
            'slug' => str::random(5) . time(),
            'status' => 0,
            'created_at' => Carbon::now()
        ]);

        $serialNo = $id."MobileApp". str_pad(NursingServiceRequest::count()+1, 5, "0", STR_PAD_LEFT);

        NursingServiceRequest::where('id', $id)->update([
            'serial_no' => $serialNo
        ]);

        return response()->json([
            'success' => true,
            'message' => "Nursing Request is Submitted"
        ], 200);

    }

    public function myNursingServiceRequests(){
        $data = DB::table('nursing_service_requests')
                    ->leftJoin('nursing_services', 'nursing_service_requests.service_id', 'nursing_services.id')
                    ->select('nursing_service_requests.*', 'nursing_services.name as service_name')
                    ->where('user_id', auth()->user()->id)
                    ->orderBy('id', 'desc')
                    ->paginate(10);

        return response()->json([
            'success' => true,
            'data' => $data
        ], 200);
    }

    public function updateNursingServiceRequest(Request $request){

        NursingServiceRequest::where('id', $request->nursing_service_request_id)->where('user_id', auth()->user()->id)->update([
            'service_id' => $request->service_id,
            'service_date_time' => $request->service_date_time,
            'patient_name' => $request->patient_name,
            'patient_phone' => $request->patient_phone,
            'remarks' => $request->remarks,
            'updated_at' => Carbon::now()
        ]);

        return response()->json([
            'success' => true,
            'message' => "Nursing Request has Updated"
        ], 200);

    }

    public function deleteNursingServiceRequest(Request $request){
        NursingServiceRequest::where('id', $request->nursing_service_request_id)->where('user_id', auth()->user()->id)->delete();
        return response()->json([
            'success' => true,
            'message' => "Nursing Service Request has been Deleted"
        ], 200);
    }
}
