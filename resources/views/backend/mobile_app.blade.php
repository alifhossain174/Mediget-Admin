@extends('backend.master')

@section('header_css')
    <link href="{{url('assets')}}/plugins/dropify/dropify.min.css" rel="stylesheet" type="text/css" />
@endsection

@section('page_title')
    Website Config
@endsection
@section('page_heading')
    Mobile App Section
@endsection

@section('content')
    <div class="row">
        <div class="col-lg-12 col-xl-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title mb-3">Update Mobile App Section</h4>

                    <form class="needs-validation" method="POST" action="{{url('update/mobile/app/config')}}" enctype="multipart/form-data">
                        @csrf

                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="logo">Mobile App Banner (700*520)</label>
                                    <input type="file" name="image" class="dropify" data-height="307" data-max-file-size="1M" accept="image/*"/>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="form-group">
                                    <label for="title" class="col-form-label">Section Title</label>
                                    <input type="text" name="title" class="form-control" value="{{$data->title}}" id="title" placeholder="Download the Mediget mobile app">
                                </div>
                                <div class="form-group">
                                    <label for="description" class="col-form-label">Section Description</label>
                                    <textarea name="description" class="form-control" id="description" placeholder="Order medicine from the mobile app. Enter your mobile number to receive the app download link.">{{$data->description}}</textarea>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="play_store_link" class="col-form-label">Play Store Link</label>
                                            <input type="text" name="play_store_link" class="form-control" value="{{$data->play_store_link}}" id="play_store_link" placeholder="https://play.google.com/store/apps">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="app_store_link" class="col-form-label">App Store Link</label>
                                            <input type="text" name="app_store_link" class="form-control" value="{{$data->app_store_link}}" id="app_store_link" placeholder="https://www.apple.com/app-store/">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="btn_text" class="col-form-label">Text of Button</label>
                                            <input type="text" name="btn_text" class="form-control" value="{{$data->btn_text}}" id="btn_text" placeholder="Send Link">
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


                        <div class="form-group text-center pt-3 mt-3">
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
    </script>
@endsection
