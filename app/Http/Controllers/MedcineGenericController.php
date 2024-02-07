<?php

namespace App\Http\Controllers;

use App\Models\MedicineGeneric;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class MedcineGenericController extends Controller
{
    public function viewMeidicineGenerics(Request $request){
        if ($request->ajax()) {

            $data = MedicineGeneric::orderBy('id', 'desc')->get();

            return Datatables::of($data)
                    ->editColumn('status', function($data) {
                        if($data->status == 1)
                            return "<span class='btn btn-sm btn-success'>Active</span>";
                        else
                            return "<span class='btn btn-sm btn-danger'>Inactive</span>";
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
        return view('backend.config.medicine_generics');
    }

    public function saveMeidicineGeneric(Request $request){
        MedicineGeneric::insert([
            'name' => $request->name,
            'brand_name' => $request->brand_name,
            'description' => $request->description,
            'created_at' => Carbon::now()
        ]);
        return response()->json(['success'=>'Created successfully.']);
    }

    public function deleteMedicineGeneric($id){
        MedicineGeneric::where('id', $id)->delete();
        return response()->json(['success'=>'Deleted Successfully.']);
    }

    public function getMedicineGenericInfo($id){
        $data = MedicineGeneric::where('id', $id)->first();
        return response()->json($data);
    }

    public function updateMedicineGeneric(Request $request){
        MedicineGeneric::where('id', $request->generic_id)->update([
            'name' => $request->name,
            'brand_name' => $request->brand_name,
            'description' => $request->description,
            'status' => $request->status,
            'updated_at' => Carbon::now()
        ]);
        return response()->json(['success'=>'Updated successfully.']);
    }
}
