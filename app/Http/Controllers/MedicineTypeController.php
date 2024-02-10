<?php

namespace App\Http\Controllers;

use App\Models\MedicineType;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class MedicineTypeController extends Controller
{
    public function viewMeidicineTypes(Request $request){
        if ($request->ajax()) {

            $data = MedicineType::orderBy('id', 'desc')->get();

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
        return view('backend.config.medicine_types');
    }

    public function saveMeidicineType(Request $request){
        MedicineType::insert([
            'name' => $request->name,
            'created_at' => Carbon::now()
        ]);
        return response()->json(['success'=>'Created successfully.']);
    }

    public function deleteMedicineType($id){
        MedicineType::where('id', $id)->delete();
        return response()->json(['success'=>'Deleted Successfully.']);
    }

    public function getMedicineTypeInfo($id){
        $data = MedicineType::where('id', $id)->first();
        return response()->json($data);
    }

    public function updateMedicineType(Request $request){
        MedicineType::where('id', $request->generic_id)->update([
            'name' => $request->name,
            'status' => $request->status,
            'updated_at' => Carbon::now()
        ]);
        return response()->json(['success'=>'Updated successfully.']);
    }
}
