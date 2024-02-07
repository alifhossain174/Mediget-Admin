<?php

namespace App\Http\Controllers;

use App\Models\Disease;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

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
        Disease::insert([
            'name' => $request->name,
            'scientific_name' => $request->scientific_name,
            'description' => $request->description,
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
        Disease::where('id', $request->disease_id)->update([
            'name' => $request->name,
            'scientific_name' => $request->scientific_name,
            'description' => $request->description,
            'status' => $request->status,
            'updated_at' => Carbon::now()
        ]);
        return response()->json(['success'=>'Updated successfully.']);
    }
}
