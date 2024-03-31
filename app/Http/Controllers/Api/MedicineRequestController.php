<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\MedicineRequestResource;
use App\Models\MedicineRequest;
use App\Models\MedicineRequestItem;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Carbon\Carbon;

class MedicineRequestController extends Controller
{
    public function submitRequestForMedicine(Request $request){

        $id = MedicineRequest::insertGetId([
            'user_id' => auth()->user()->id,
            'name' => $request->name,
            'phone' => $request->phone,
            'address' => $request->address,
            'slug' => str::random(5) . time(),
            'status' => 0,
            'created_at' => Carbon::now()
        ]);

        $index = 0;
        foreach($request->medicine_name as $medicine_name){
            MedicineRequestItem::insert([
                'medicine_request_id' => $id,
                'meicine_name' => $medicine_name,
                'qty' => isset($request->qty[$index]) ? $request->qty[$index] : 1,
                'slug' => str::random(5) . time(),
                'created_at' => Carbon::now()
            ]);
            $index++;
        }

        $serialNo = $id."MobileApp". str_pad(MedicineRequest::count()+1, 5, "0", STR_PAD_LEFT);
        MedicineRequest::where('id', $id)->update([
            'serial_no' => $serialNo
        ]);

        return response()->json([
            'success' => true,
            'message' => "Medicine Request is Submited"
        ], 200);

    }

    public function myMedicineRequests(){
        $data = MedicineRequest::where('user_id', auth()->user()->id)->orderBy('id', 'desc')->paginate(10);

        return response()->json([
            'success' => true,
            'data' => MedicineRequestResource::collection($data)->resource
        ], 200);
    }

    public function deleteMyMedicineRequest(Request $request){

        $data = MedicineRequest::where('id', $request->medicine_request_id)->where('user_id', auth()->user()->id)->first();
        if($data){
            MedicineRequestItem::where('medicine_request_id', $data->id)->delete();
        }
        $data->delete();

        return response()->json([
            'success' => true,
            'message' => "Medicine Request has been Deleted"
        ], 200);

    }
}
