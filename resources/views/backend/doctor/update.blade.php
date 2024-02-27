@extends('backend.master')

@section('header_css')
    <link href="{{url('assets')}}/plugins/dropify/dropify.min.css" rel="stylesheet" type="text/css" />
    <link href="{{url('assets')}}/css/tagsinput.css" rel="stylesheet" type="text/css" />
    <style>
        .bootstrap-tagsinput .badge {
            margin: 2px 2px !important;
        }
    </style>
@endsection

@section('page_title')
    Doctors
@endsection
@section('page_heading')
    Add New Doctor
@endsection

@section('content')
    <div class="row">
        <div class="col-lg-12 col-xl-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title mb-3">Doctor Form</h4>

                    <form class="needs-validation" method="POST" action="{{url('update/doctor')}}" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="doctor_id" value="{{$data->id}}">
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label class="col-form-label">Doctor Image</label>
                                    <input type="file" name="image" class="dropify" data-height="300" data-max-file-size="1M" accept="image/*"/>
                                </div>

                                <div class="form-group">
                                    <label class="col-form-label">Visiting Charge</label>
                                    <input type="text" name="visiting_charge" class="form-control" value="{{$data->visiting_charge}}" placeholder="500 BDT">
                                </div>

                                <div class="form-group">
                                    <label for="status">Status</label>
                                    <select name="status" class="form-control" id="status">
                                        <option value="">Select One</option>
                                        <option value="1" @if($data->status == 1) selected @endif>Active</option>
                                        <option value="0" @if($data->status == 0) selected @endif>Inactive</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-9">

                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="col-form-label">Full Name <span class="text-danger">*</span></label>
                                            <input type="text" name="name" class="form-control" value="{{$data->name}}" placeholder="Doctor's Name" required>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="col-form-label">Degree <span class="text-danger">*</span></label>
                                            <input type="text" name="degree" class="form-control" value="{{$data->degree}}" placeholder="MBBS, BCS(Helth)" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="col-form-label">Serving Medical Institute</label>
                                            <input type="text" name="institution" class="form-control" value="{{$data->institution}}" placeholder="Dhaka Medical College">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="col-form-label">Available Date-Time</label>
                                            <input type="text" name="available_time" class="form-control" value="{{$data->available_time}}" placeholder="03:03 PM - 04:04 PM on Sunday">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="col-form-label">Contact No</label>
                                            <input type="text" name="contact" class="form-control" value="{{$data->contact}}" placeholder="8801">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="col-form-label">Appointment Location <span class="text-danger">*</span></label>
                                            <input type="text" name="location" class="form-control" value="{{$data->location}}" placeholder="Dhanmondi, Dhaka-1207" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-form-label">Biography</label>
                                    <textarea name="biography" class="form-control" placeholder="About Doctor's Profile">{{$data->biography}}</textarea>
                                </div>

                                <div class="form-group">
                                    <label>Education</label>
                                    <input type="text" data-role="tagsinput" name="education" value="{{$data->education}}" class="form-control">
                                </div>

                            </div>
                        </div>


                        <div class="form-group row pt-3">
                            <div class="col-sm-12 text-center">
                                <button class="btn btn-primary" type="submit">Update Doctor Info</button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection


@section('footer_js')
    <script src="{{url('assets')}}/plugins/dropify/dropify.min.js"></script>
    <script src="{{url('assets')}}/pages/fileuploads-demo.js"></script>
    <script src="{{url('assets')}}/js/tagsinput.js"></script>

    <script>
        @if($data->image && file_exists(public_path($data->image)))
            $(".dropify-preview").eq(0).css("display", "block");
            $(".dropify-clear").eq(0).css("display", "block");
            $(".dropify-filename-inner").eq(0).html("{{$data->image}}");
            $("span.dropify-render").eq(0).html("<img src='{{url($data->image)}}'>");
        @endif
    </script>
@endsection
