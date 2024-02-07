@extends('backend.master')

@section('page_title')
    Terms And Condition
@endsection
@section('page_heading')
    Update Terms And Condition
@endsection

@section('content')
    <div class="row">
        <div class="col-lg-12 col-xl-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title mb-3">Terms And Condition Update Form</h4>

                    <form class="needs-validation" method="POST" action="{{url('update/terms')}}" enctype="multipart/form-data">
                        @csrf

                        <div class="row">
                            <div class="col-lg-12 border-right">
                                <div class="form-group">
                                    <label for="terms">Write Terms And Condition Here :</label>
                                    <textarea id="terms" name="terms" class="form-control">{!! $data->terms !!}</textarea>
                                    <div class="invalid-feedback" style="display: block;">
                                        @error('terms')
                                            {{ $message }}
                                        @enderror
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="form-group text-center pt-3">
                            <button class="btn btn-primary" type="submit">Update Terms And Condition</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection


@section('footer_js')
    <script src="https://cdn.ckeditor.com/4.12.1/standard/ckeditor.js"></script>
    <script type="text/javascript">
        CKEDITOR.replace('terms', {
            filebrowserUploadUrl: "{{route('ckeditor.upload', ['_token' => csrf_token() ])}}",
            filebrowserUploadMethod: 'form',
            height: 300,
        });
    </script>
@endsection
