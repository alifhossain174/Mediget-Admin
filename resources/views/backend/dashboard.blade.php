@extends('backend.master')

@section('header_css')
    <style>
        h4.card-title{
            background: linear-gradient(to right, #17263A, #2c3e50, #17263A);
            padding: 8px 15px;
            border-radius: 4px;
            color: white;
        }
        .graph_card{
            position: relative
        }
        .graph_card i{
            position: absolute;
            top: 18px;
            right: 18px;
            font-size: 18px;
            height: 35px;
            width: 35px;
            line-height: 33px;
            text-align: center;
            border-radius: 50%;
            font-weight: 300;

            /* animation-name: rotate;
            animation-duration: 5s;
            animation-iteration-count: infinite;
            animation-timing-function: linear; */
        }

        /* @keyframes rotate{
            from{ transform: rotate(-360deg); }
            to{ transform: rotate(360deg); }
        } */

    </style>
@endsection

@section('page_title')
    Dashboard
@endsection

@section('page_heading')
    Overview
@endsection

@section('content')

    <div class="row">
        <div class="col-lg-6 col-xl-3">
            <div class="card graph_card">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <h6 class="text-uppercase font-size-12 text-muted mb-3">No Of Orders (Monthly)</h6>
                            <span class="h3 mb-0"> {{ number_format($countOrders[0]) }} </span>
                        </div>
                    </div> <!-- end row -->

                    <div id="sparkline1" class="mt-3"></div>
                </div> <!-- end card-body-->
                <i class="feather-shopping-cart" style="color: #0074E4; background: #0074E42E;"></i>
            </div> <!-- end card-->
        </div> <!-- end col-->

        <div class="col-lg-6 col-xl-3">
            <div class="card graph_card">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <h6 class="text-uppercase font-size-12 text-muted mb-3">Total Revenue (Monthly)</h6>
                            <span class="h3 mb-0"> ৳ {{ number_format($totalOrderAmount[0], 2) }} </span>
                        </div>
                    </div> <!-- end row -->
                    <div id="sparkline2" class="mt-3"></div>
                </div> <!-- end card-body-->
                <i class="feather-trending-up" style="color: #17263A; background: #17263A3D;"></i>
            </div> <!-- end card-->
        </div> <!-- end col-->

        <div class="col-lg-6 col-xl-3">
            <div class="card graph_card">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <h6 class="text-uppercase font-size-12 text-muted mb-3">Todays Order (Daily)</h6>
                            <span class="h3 mb-0"> {{ number_format($todaysOrder[0]) }} </span>
                            <span class="h3 mb-0"> <a target="_blank" href="{{url('view/pending/orders')}}" style="height: 20px; line-height: 10px; margin-top: -4px;" class="btn btn-sm btn-success rounded">View All</a> </span>
                        </div>
                    </div> <!-- end row -->

                    <div id="sparkline3" class="mt-3"></div>
                </div> <!-- end card-body-->
                <i class="feather-package" style="color: #c28a00; background: #daa5202e;"></i>
            </div> <!-- end card-->
        </div> <!-- end col-->

        <div class="col-lg-6 col-xl-3">
            <div class="card graph_card">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <h6 class="text-uppercase font-size-12 text-muted mb-3">Registered Users (Monthly)</h6>
                            <span class="h3 mb-0"> {{ number_format($registeredUsers[0]) }} </span>
                        </div>
                    </div> <!-- end row -->

                    <div id="sparkline4" class="mt-3"></div>
                </div> <!-- end card-body-->
                <i class="feather-users" style="color: #a60000; background: #a6000026;"></i>
            </div> <!-- end card-->
        </div> <!-- end col-->
    </div>
    <!-- end row-->

    <div class="row">
        <div class="col-xl-4 col-lg-5">
            <div class="card">
                <div class="card-body">

                    <h4 class="card-title">Best Selling Products (6 months)</h4>
                    <p class="card-subtitle mb-4">From date of {{date("jS M, Y", strtotime($queryStartDate))}} to continue</p>

                    <div id="morris-donut-example" class="morris-chart"></div>

                </div> <!-- end card-body-->
            </div> <!-- end card-->

        </div> <!-- end col-->

        <div class="col-xl-8 col-lg-7">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Sales Analytics (Successfull & Failed Order Ratio)</h4>
                    <p class="card-subtitle mb-4" style="color: trans">From Last Few Months</p>
                    <div id="morris-bar-example" class="morris-chart"></div>
                </div>
            </div>
        </div> <!-- end col-->
    </div>
    <!-- end row-->

    <div class="row">
        <div class="col-xl-6">
            <div class="card">
                <div class="card-body" style="min-height: 435px;">

                    <h4 class="card-title">Recent Customers</h4>

                    <div class="table-responsive">
                        <table class="table table-centered table-striped table-nowrap">
                            <thead>
                                <tr>
                                    <th>Customer</th>
                                    <th>Phone</th>
                                    <th>Email</th>
                                    <th>Location</th>
                                    <th>Create Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                @if(count($orderPayments) > 0)
                                @foreach ($recentCustomers as $customer)
                                    <tr>
                                        <td class="table-user">
                                            @if ($customer->image && file_exists(public_path($customer->image)))
                                                <img src="{{ $customer->image }}" alt="table-user" class="mr-2 avatar-xs rounded-circle">
                                            @else
                                                <img src="assets/images/users/avatar-4.jpg" alt="table-user" class="mr-2 avatar-xs rounded-circle">
                                            @endif
                                            <a href="javascript:void(0);" class="text-body font-weight-semibold">{{ $customer->name }}</a>
                                        </td>
                                        <td>
                                            {{ $customer->phone }}
                                        </td>
                                        <td>
                                            {{ $customer->email }}
                                        </td>
                                        <td>
                                            {{ $customer->address }}
                                        </td>
                                        <td>
                                            {{ date('h:i:s A, jS F Y', strtotime($customer->created_at)) }}
                                        </td>
                                    </tr>
                                @endforeach
                                @else
                                <tr>
                                    <td colspan="5" class="text-center">No Customers Found</td>
                                </tr>
                                @endif
                            </tbody>
                        </table>
                    </div>

                </div> <!-- end card-body-->
            </div> <!-- end card-->
        </div> <!-- end col -->

        <div class="col-xl-6">
            <div class="card">
                <div class="card-body" style="min-height: 435px;">

                    <h4 class="card-title">Account Transactions</h4>

                    <div class="table-responsive">
                        <table class="table table-centered table-striped table-nowrap">
                            <thead>
                                <tr>
                                    <th>TRX ID</th>
                                    <th>Amount</th>
                                    <th>Card Type/Brand</th>
                                    <th>Payment Through</th>
                                </tr>
                            </thead>
                            <tbody>
                                @if(count($orderPayments) > 0)
                                @foreach ($orderPayments as $payment)
                                    <tr>
                                        <td>
                                            <h5 class="font-size-15 mb-1 font-weight-normal">{{ $payment->tran_id }}</h5>
                                            <span
                                                class="text-muted font-size-12">{{ date('h:i:s A, jS F Y', strtotime($payment->created_at)) }}</span>
                                        </td>
                                        <td>
                                            <h5 class="font-size-15 mb-1 font-weight-normal">৳ {{ $payment->amount }}</h5>
                                            <span class="text-muted font-size-12">Amount</span>
                                        </td>
                                        <td>
                                            <h5 class="font-size-17 mb-1 font-weight-normal">
                                                {{ $payment->card_brand != '' ? $payment->card_brand : 'N/A' }}</h5>
                                            <span class="text-muted font-size-12">{{ $payment->card_type }}</span>
                                        </td>
                                        <td>
                                            <h5 class="font-size-15 mb-1 font-weight-normal">
                                                {{ $payment->payment_through }}</h5>
                                            <span class="text-muted font-size-12">{{ $payment->status }}</span>
                                        </td>
                                    </tr>
                                @endforeach
                                @else
                                    <tr>
                                        <td colspan="4" class="text-center">No Transaction Found</td>
                                    </tr>
                                @endif
                            </tbody>
                        </table>
                    </div>

                </div> <!-- end card-body-->
            </div> <!-- end card-->
        </div> <!-- end col -->
    </div>
    <!-- end row-->
@endsection

@section('footer_js')
    <script>
        $(document).ready(function() {

            var DrawSparkline = function() {
                $('#sparkline1').sparkline([{{ $countOrders[8] }}, {{ $countOrders[7] }},
                    {{ $countOrders[6] }}, {{ $countOrders[5] }}, {{ $countOrders[4] }},
                    {{ $countOrders[3] }}, {{ $countOrders[2] }}, {{ $countOrders[1] }},
                    {{ $countOrders[0] }}
                ], {
                    type: 'line',
                    width: "100%",
                    height: '50',
                    chartRangeMax: 35,
                    lineColor: '#2e7ce4',
                    fillColor: 'rgba(46, 124, 228, 0.3)',
                    highlightLineColor: 'rgba(0,0,0,.1)',
                    highlightSpotColor: 'rgba(0,0,0,.2)',
                    maxSpotColor: false,
                    minSpotColor: false,
                    spotColor: false,
                    lineWidth: 1
                });

                $('#sparkline2').sparkline([{{ $totalOrderAmount[8] }}, {{ $totalOrderAmount[7] }},
                    {{ $totalOrderAmount[6] }}, {{ $totalOrderAmount[5] }},
                    {{ $totalOrderAmount[4] }}, {{ $totalOrderAmount[3] }},
                    {{ $totalOrderAmount[2] }}, {{ $totalOrderAmount[1] }},
                    {{ $totalOrderAmount[0] }}
                ], {
                    type: 'line',
                    width: "100%",
                    height: '50',
                    chartRangeMax: 35,
                    lineColor: '#627898',
                    fillColor: 'rgba(98, 120, 152, 0.3)',
                    highlightLineColor: 'rgba(0,0,0,.1)',
                    highlightSpotColor: 'rgba(0,0,0,.2)',
                    maxSpotColor: false,
                    minSpotColor: false,
                    spotColor: false,
                    lineWidth: 1
                });

                $('#sparkline3').sparkline([{{ $todaysOrder[8] }}, {{ $todaysOrder[7] }},
                    {{ $todaysOrder[6] }}, {{ $todaysOrder[5] }}, {{ $todaysOrder[4] }},
                    {{ $todaysOrder[3] }}, {{ $todaysOrder[2] }}, {{ $todaysOrder[1] }},
                    {{ $todaysOrder[0] }}
                ], {
                    type: 'line',
                    width: "100%",
                    height: '50',
                    chartRangeMax: 35,
                    lineColor: '#f1bf43',
                    fillColor: 'rgba(241, 191, 67, 0.3)',
                    highlightLineColor: 'rgba(0,0,0,.1)',
                    highlightSpotColor: 'rgba(0,0,0,.2)',
                    maxSpotColor: false,
                    minSpotColor: false,
                    spotColor: false,
                    lineWidth: 1
                });

                $('#sparkline4').sparkline([{{ $registeredUsers[8] }}, {{ $registeredUsers[7] }},
                    {{ $registeredUsers[6] }}, {{ $registeredUsers[5] }}, {{ $registeredUsers[4] }},
                    {{ $registeredUsers[3] }}, {{ $registeredUsers[2] }}, {{ $registeredUsers[1] }},
                    {{ $registeredUsers[0] }}
                ], {
                    type: 'line',
                    width: "100%",
                    height: '50',
                    chartRangeMax: 35,
                    lineColor: '#df3554',
                    fillColor: 'rgba(223, 53, 84, 0.3)',
                    highlightLineColor: 'rgba(0,0,0,.1)',
                    highlightSpotColor: 'rgba(0,0,0,.2)',
                    maxSpotColor: false,
                    minSpotColor: false,
                    spotColor: false,
                    lineWidth: 1
                });
            };

            DrawSparkline();

            var resizeChart;

            $(window).resize(function(e) {
                clearTimeout(resizeChart);
                resizeChart = setTimeout(function() {
                    DrawSparkline();
                }, 300);
            });
        });


        $(function() {
            'use strict';
            if ($("#morris-bar-example").length) {
                Morris.Bar({
                    element: 'morris-bar-example',
                    barColors: ['#00C2B2', '#DF3554'],
                    data: [{
                            y: '{{$countOrdersRatioDate[9]}}',
                            a: {{$countOrdersRatioFailed[9]}},
                            b: {{$countOrdersRatioSuccess[9]}},
                        },
                        {
                            y: '{{$countOrdersRatioDate[8]}}',
                            a: {{$countOrdersRatioFailed[8]}},
                            b: {{$countOrdersRatioSuccess[8]}}
                        },
                        {
                            y: '{{$countOrdersRatioDate[7]}}',
                            a: {{$countOrdersRatioFailed[7]}},
                            b: {{$countOrdersRatioSuccess[7]}}
                        },
                        {
                            y: '{{$countOrdersRatioDate[6]}}',
                            a: {{$countOrdersRatioFailed[6]}},
                            b: {{$countOrdersRatioSuccess[6]}}
                        },
                        {
                            y: '{{$countOrdersRatioDate[5]}}',
                            a: {{$countOrdersRatioFailed[5]}},
                            b: {{$countOrdersRatioSuccess[5]}}
                        },
                        {
                            y: '{{$countOrdersRatioDate[4]}}',
                            a: {{$countOrdersRatioFailed[4]}},
                            b: {{$countOrdersRatioSuccess[4]}}
                        },
                        {
                            y: '{{$countOrdersRatioDate[3]}}',
                            a: {{$countOrdersRatioFailed[3]}},
                            b: {{$countOrdersRatioSuccess[3]}}
                        },
                        {
                            y: '{{$countOrdersRatioDate[2]}}',
                            a: {{$countOrdersRatioFailed[2]}},
                            b: {{$countOrdersRatioSuccess[2]}}
                        },
                        {
                            y: '{{$countOrdersRatioDate[1]}}',
                            a: {{$countOrdersRatioFailed[1]}},
                            b: {{$countOrdersRatioSuccess[1]}}
                        },
                        {
                            y: '{{$countOrdersRatioDate[0]}}',
                            a: {{$countOrdersRatioFailed[0]}},
                            b: {{$countOrdersRatioSuccess[0]}}
                        }
                    ],
                    xkey: 'y',
                    ykeys: ['a', 'b'],
                    hideHover: 'auto',
                    gridLineColor: '#eef0f2',
                    resize: true,
                    barSizeRatio: 0.4,
                    labels: ['Successfull Orders', 'Failed Orders']
                });
            }

            if ($("#morris-donut-example").length) {
                Morris.Donut({
                    element: 'morris-donut-example',
                    resize: true,
                    colors: ['#2e7ce4', '#00c2b2', '#df3554'],
                    data: [{
                            label: "{{isset($bestSelling[0]) ? $bestSelling[0]->name : ''}}",
                            value: {{isset($bestSelling[0]) ? $bestSelling[0]->total_qty : 0}}
                        },
                        {
                            label: '{{isset($bestSelling[1]) ? $bestSelling[1]->name : ''}}',
                            value: {{isset($bestSelling[1]) ? $bestSelling[0]->total_qty : 0}}
                        },
                        {
                            label: '{{isset($bestSelling[2]) ? $bestSelling[2]->name : ''}}',
                            value: {{isset($bestSelling[2]) ? $bestSelling[2]->total_qty : 0}}
                        }
                    ]
                });
            }

        });
    </script>
@endsection
