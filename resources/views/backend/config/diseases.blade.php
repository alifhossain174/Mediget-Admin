@extends('backend.master')

@section('header_css')
    <link href="{{ url('dataTable') }}/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="{{ url('dataTable') }}/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <style>
        .dataTables_wrapper .dataTables_paginate .paginate_button{
            padding: 0px;
            border-radius: 4px;
        }
        table.dataTable tbody td:nth-child(1){
            text-align: center !important;
            font-weight: 600;
        }
        table.dataTable tbody td{
            text-align: center !important;
        }
        table.dataTable tbody td:nth-child(4){
            text-align: center !important;
            width: 180px;
        }
        tfoot {
            display: table-header-group !important;
        }
        tfoot th{
            text-align: center;
        }
    </style>
@endsection

@section('page_title')
    Diseases
@endsection
@section('page_heading')
    View All Diseases
@endsection

@section('content')
    <div class="row">
        <div class="col-lg-12 col-xl-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title mb-3">Diseases List</h4>
                    <div class="table-responsive">

                        <label id="customFilter">
                            <button class="btn btn-success btn-sm" id="addNewGeneric" style="margin-left: 5px"><b><i class="feather-plus"></i> Add New Disease</b></button>
                        </label>

                        <table class="table table-bordered mb-0 data-table">
                            <thead>
                                <tr>
                                    <th class="text-center">SL</th>
                                    <th class="text-center">Image</th>
                                    <th class="text-center">Disease Name</th>
                                    <th class="text-center">Scientific Name</th>
                                    <th class="text-center">Description</th>
                                    <th class="text-center">Status</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel2" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form id="productForm2" name="productForm2" class="form-horizontal">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel2">Add New Disease</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Disease Image<span class="text-danger">*</span></label>
                            <input type="file" class="form-control" id="disease_new_image" name="image" required>
                        </div>
                        <div class="form-group">
                            <label>Disease Name<span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="name" id="new_disease_name" placeholder="Disease Name" required>
                        </div>
                        <div class="form-group">
                            <label>Scientific Name</label>
                            <input type="text" class="form-control" id="new_disease_scientific_name" placeholder="Scientific Name (Optinal)" name="scientific_name">
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea name="description" id="new_disease_description" placeholder="Short Description" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" id="saveBtn" class="btn btn-primary">Save Changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form id="productForm" name="productForm" class="form-horizontal">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Edit Disease Info</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" name="disease_id" id="disease_id">
                        <div class="form-group">
                            <label>Disease Image<span class="text-danger">*</span></label>
                            <input type="file" class="form-control" id="disease_update_image" name="image" required>
                        </div>
                        <div class="form-group">
                            <label>Disease Name<span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="disease_name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label>Scientific Name</label>
                            <input type="text" class="form-control" id="scientific_name" name="scientific_name">
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea name="description" id="description" placeholder="Short Description" class="form-control"></textarea>
                        </div>
                        <div class="form-group">
                            <label>Status</label>
                            <select id="disease_status" class="form-control" name="status">
                                <option value="1">Active</option>
                                <option value="0">Inactive</option>
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" id="updateBtn" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection


@section('footer_js')

    {{-- js code for data table --}}
    <script src="{{ url('dataTable') }}/js/jquery.validate.js"></script>
    <script src="{{ url('dataTable') }}/js/jquery.dataTables.min.js"></script>
    <script src="{{ url('dataTable') }}/js/dataTables.bootstrap4.min.js"></script>
    <script src="{{ url('assets') }}/js/spectrum.min.js"></script>

    <script type="text/javascript">
        var table = $(".data-table").DataTable({
            processing: true,
            serverSide: true,
            pageLength: 15,
            lengthMenu: [15, 25, 50, 100],
            ajax: "{{ url('view/all/diseases') }}",
            columns: [
                {
                    data: 'DT_RowIndex',
                    name: 'DT_RowIndex'
                }, //orderable: true, searchable: true
                {
                    data: 'image',
                    name: 'image',
                    render: function( data, type, full, meta ) {
                        if(data){
                            return "<img src=\"/" + data + "\" width=\"50\"/>";
                        } else {
                            return '';
                        }
                    }
                },
                {
                    data: 'name',
                    name: 'name'
                },
                {data: 'scientific_name', name: 'scientific_name'},
                {data: 'description', name: 'description'},
                {data: 'status', name: 'status'},
                {data: 'action', name: 'action', orderable: false, searchable: false},
            ],
        });

        $(".dataTables_filter").append($("#customFilter"));
    </script>

    {{-- js code for user crud --}}
    <script>

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $('#addNewGeneric').click(function () {
            $('#productForm2').trigger("reset");
            $('#exampleModal2').modal('show');
        });

        $('#saveBtn').click(function (e) {

            e.preventDefault();
            $(this).html('Saving..');

            var formData = new FormData();
            formData.append('image', $("#disease_new_image")[0].files[0]);
            formData.append("name", $("#new_disease_name").val());
            formData.append("scientific_name", $("#new_disease_scientific_name").val());
            formData.append("description", $("#new_disease_description").val());


            $(this).html('Saving..');
            $.ajax({
                // data: $('#productForm2').serialize(),
                data: formData,
                url: "{{ url('save/disease') }}",
                type: "POST",
                cache: false,
                contentType: false,
                processData: false,
                success: function (data) {
                    $('#saveBtn').html('Save');
                    $('#productForm2').trigger("reset");
                    $('#exampleModal2').modal('hide');
                    toastr.success("New Disease Added", "Added Successfully");
                    table.draw(false);
                },
                error: function (data) {
                    console.log('Error:', data);
                    toastr.warning("Something Went Wrong");
                    $('#saveBtn').html('Save');
                }
            });

        });

        $('body').on('click', '.editBtn', function () {
            var id = $(this).data('id');
            $.get("{{ url('get/disease/info') }}" +'/' + id, function (data) {
                $('#exampleModal').modal('show');
                $('#disease_id').val(id);
                $('#disease_name').val(data.name);
                $('#scientific_name').val(data.scientific_name);
                $('#description').html(data.description);
                $('#disease_status').val(data.status);
            })
        });


        $('#updateBtn').click(function (e) {
            e.preventDefault();
            $(this).html('Updating...');

            var formData = new FormData();
            formData.append('disease_id', $("#disease_id").val());
            formData.append('image', $("#disease_update_image")[0].files[0]);
            formData.append("name", $("#disease_name").val());
            formData.append("scientific_name", $("#scientific_name").val());
            formData.append("description", $("#description").val());
            formData.append("status", $("#disease_status").val());

            $.ajax({
                // data: $('#productForm').serialize(),
                data: formData,
                url: "{{ url('update/disease') }}",
                type: "POST",
                cache: false,
                contentType: false,
                processData: false,
                success: function (data) {
                    $('#updateBtn').html('Save');
                    $('#productForm').trigger("reset");
                    $('#exampleModal').modal('hide');
                    toastr.success("Disease Info Updated", "Updated Successfully");
                    table.draw(false);
                },
                error: function (data) {
                    console.log('Error:', data);
                    toastr.warning("Something Went Wrong");
                    $('#updateBtn').html('Save');
                }
            });
        });

        $('body').on('click', '.deleteBtn', function () {
            var id = $(this).data("id");
            if(confirm("Are You sure want to delete !")){
                $.ajax({
                    type: "GET",
                    url: "{{ url('delete/disease') }}"+'/'+id,
                    success: function (data) {
                        table.draw(false);
                        toastr.error("Disease has been Deleted", "Deleted Successfully");
                    },
                    error: function (data) {
                        console.log('Error:', data);
                    }
                });
            }
        });

    </script>
@endsection
