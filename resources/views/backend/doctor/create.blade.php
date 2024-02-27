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

                    <form class="needs-validation" method="POST" action="{{url('save/doctor')}}" enctype="multipart/form-data">
                        @csrf

                        <div class="row">
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label class="col-form-label">Doctor Image</label>
                                    <input type="file" name="image" class="dropify" data-height="300" data-max-file-size="1M" accept="image/*"/>
                                </div>

                                <div class="form-group">
                                    <label class="col-form-label">Visiting Charge</label>
                                    <input type="text" name="visiting_charge" class="form-control" placeholder="500 BDT">
                                </div>
                            </div>
                            <div class="col-lg-9">

                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="col-form-label">Full Name <span class="text-danger">*</span></label>
                                            <input type="text" name="name" class="form-control" placeholder="Doctor's Name" required>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="col-form-label">Degree <span class="text-danger">*</span></label>
                                            <input type="text" name="degree" class="form-control" placeholder="MBBS, BCS(Helth)" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="col-form-label">Serving Medical Institute</label>
                                            <input type="text" name="institution" class="form-control" placeholder="Dhaka Medical College">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="col-form-label">Available Date-Time</label>
                                            <input type="text" name="available_time" class="form-control" placeholder="03:03 PM - 04:04 PM on Sunday">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="col-form-label">Contact No</label>
                                            <input type="text" name="contact" class="form-control" placeholder="8801">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="col-form-label">Appointment Location <span class="text-danger">*</span></label>
                                            <input type="text" name="location" class="form-control" placeholder="Dhanmondi, Dhaka-1207" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-form-label">Biography</label>
                                    <textarea name="biography" class="form-control" placeholder="About Doctor's Profile"></textarea>
                                </div>

                                <div class="form-group">
                                    <label>Education</label>
                                    <input type="text" data-role="tagsinput" name="education" class="form-control">
                                </div>

                            </div>
                        </div>


                        <div class="form-group row pt-3">
                            <div class="col-sm-12 text-center">
                                <button class="btn btn-primary" type="submit">+ Add Doctor</button>
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
@endsection
