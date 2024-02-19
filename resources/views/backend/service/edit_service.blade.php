@extends('backend.master')

@section('header_css')
    <link href="{{url('assets')}}/plugins/dropify/dropify.min.css" rel="stylesheet" type="text/css" />
@endsection

@section('page_title')
    Service Config
@endsection
@section('page_heading')
    Edit Service
@endsection

@section('content')
    <div class="row justify-content-center">
        <div class="col-lg-6 col-xl-6">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title mb-3">Update Service Info</h4>

                    <form class="needs-validation" method="POST" action="{{url('update/service/config')}}" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="service_id" value="{{$data->id}}">
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="image">Service Icon</label>
                                    <input type="file" name="image" class="dropify" data-height="200" data-max-file-size="1M" accept="image/*"/>
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-group">
                                    <label for="logo">Service Banner</label>
                                    <input type="file" name="banner" class="dropify" data-height="200" data-max-file-size="1M" accept="image/*"/>
                                </div>
                            </div>
                            <div class="col-lg-12">

                                <div class="form-group">
                                    <label for="title" class="col-form-label">Service Title</label>
                                    <input type="text" name="title" class="form-control" value="{{$data->title}}" id="title">
                                </div>
                                <div class="form-group">
                                    <label for="description" class="col-form-label">Service Description</label>
                                    <input type="text" name="description" class="form-control" value="{{$data->description}}" id="description">
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="button_text" class="col-form-label">Text of Button</label>
                                            <input type="text" name="button_text" class="form-control" value="{{$data->button_text}}" id="button_text">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="btn_text" class="col-form-label">Section Status</label>
                                            <select class="form-control" name="status" required>
                                                <option value="">Select One</option>
                                                <option value="1" @if($data->status == 1) selected @endif>Enable</option>
                                                <option value="0" @if($data->status == 0) selected @endif>Disable</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>


                        <div class="form-group text-center pt-3 mt-2">
                            <a href="{{url('/home')}}" style="width: 130px;" class="btn btn-danger d-inline-block text-white m-2" type="submit"><i class="mdi mdi-cancel"></i> Cancel</a>
                            <button class="btn btn-success m-2" type="submit" style="width: 140px;"><i class="fas fa-save"></i> Update Info</button>
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

    <script>
        @if($data->image && file_exists(public_path($data->image)))
            $(".dropify-preview").eq(0).css("display", "block");
            $(".dropify-clear").eq(0).css("display", "block");
            $(".dropify-filename-inner").eq(0).html("{{$data->image}}");
            $("span.dropify-render").eq(0).html("<img src='{{url($data->image)}}'>");
        @endif

        @if($data->banner && file_exists(public_path($data->banner)))
            $(".dropify-preview").eq(1).css("display", "block");
            $(".dropify-clear").eq(1).css("display", "block");
            $(".dropify-filename-inner").eq(1).html("{{$data->banner}}");
            $("span.dropify-render").eq(1).html("<img src='{{url($data->banner)}}'>");
        @endif
    </script>
@endsection
