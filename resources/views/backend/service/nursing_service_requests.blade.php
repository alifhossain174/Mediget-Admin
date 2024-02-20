@extends('backend.master')

@section('header_css')
    <link href="{{ url('assets') }}/css/spectrum.min.css" rel="stylesheet" type="text/css" />
    <link href="{{ url('dataTable') }}/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="{{ url('dataTable') }}/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <style>
        .dataTables_wrapper .dataTables_paginate .paginate_button{
            padding: 0px;
            border-radius: 4px;
        }
        table.dataTable tbody td{
            text-align: center !important;
        }
        table.dataTable tbody td:nth-child(1){
            font-weight: 600;
        }
    </style>
@endsection

@section('page_title')
    Nursing Service
@endsection
@section('page_heading')
    View All Nursing Service Requests
@endsection

@section('content')
    <div class="row">
        <div class="col-lg-12 col-xl-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title mb-3">Nursing Service Requests</h4>
                    <div class="table-responsive">

                        <table class="table table-bordered mb-0 data-table">
                            <thead>
                                <tr>
                                    <th class="text-center">SL</th>
                                    <th class="text-center">Service</th>
                                    <th class="text-center">Price</th>
                                    <th class="text-center">Date & Time</th>
                                    <th class="text-center">Patient Name</th>
                                    <th class="text-center">Phone No</th>
                                    <th class="text-center">Remarks</th>
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
            ajax: "{{ url('nursing/service/requests') }}",
            columns: [
                {
                    data: 'DT_RowIndex',
                    name: 'DT_RowIndex'
                }, //orderable: true, searchable: true
                {
                    data: 'service_name',
                    name: 'service_name'
                },
                {
                    data: 'service_price',
                    name: 'service_price'
                },
                {data: 'service_date_time', name: 'service_date_time'},
                {data: 'patient_name', name: 'patient_name'},
                {data: 'patient_phone', name: 'patient_phone'},
                {data: 'remarks', name: 'remarks'},
                {data: 'status', name: 'status'},
                {data: 'action', name: 'action', orderable: false, searchable: false},
            ],
        });
    </script>

    {{-- js code for user crud --}}
    <script>

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $('body').on('click', '.deleteBtn', function () {
            var id = $(this).data("id");
            if(confirm("Are You sure want to delete !")){
                $.ajax({
                    type: "GET",
                    url: "{{ url('delete/nursing/service/request') }}"+'/'+id,
                    success: function (data) {
                        table.draw(false);
                        toastr.error("Request has been Deleted", "Deleted Successfully");
                    },
                    error: function (data) {
                        console.log('Error:', data);
                    }
                });
            }
        });

        $('body').on('click', '.inProgress', function () {
            var id = $(this).data("id");
            if(confirm("Are You sure ?")){
                $.ajax({
                    type: "GET",
                    url: "{{ url('approve/nursing/service/request') }}"+'/'+id,
                    success: function (data) {
                        table.draw(false);
                        toastr.success("Request has been Approved", "Deleted Successfully");
                    },
                    error: function (data) {
                        console.log('Error:', data);
                    }
                });
            }
        });

        $('body').on('click', '.cancelBtn', function () {
            var id = $(this).data("id");
            if(confirm("Are You sure ?")){
                $.ajax({
                    type: "GET",
                    url: "{{ url('cancel/nursing/service/request') }}"+'/'+id,
                    success: function (data) {
                        table.draw(false);
                        toastr.error("Request has been Cancelled", "Deleted Successfully");
                    },
                    error: function (data) {
                        console.log('Error:', data);
                    }
                });
            }
        });

        $('body').on('click', '.completeBtn', function () {
            var id = $(this).data("id");
            if(confirm("Are You sure ?")){
                $.ajax({
                    type: "GET",
                    url: "{{ url('complete/nursing/service/request') }}"+'/'+id,
                    success: function (data) {
                        table.draw(false);
                        toastr.success("Request is Complete", "Deleted Successfully");
                    },
                    error: function (data) {
                        console.log('Error:', data);
                    }
                });
            }
        });

    </script>
@endsection
