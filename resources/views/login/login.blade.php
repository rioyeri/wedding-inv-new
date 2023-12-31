<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Studio Si Apin</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="{{ asset('onepiece.png') }}">

        <!-- App css -->
        <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
        <link href="{{ asset('assets/css/icons.css') }}" rel="stylesheet" type="text/css" />
        <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet" type="text/css" />

        <!-- Notification css (Toastr) -->
        <link href="{{ asset('assets/plugins/toastr/toastr.min.css') }}" rel="stylesheet" type="text/css" />

        <script src="{{ asset('assets/js/modernizr.min.js') }}"></script>

    </head>

    <style>
        .logo h1 {
            font-size: 28px;
            margin: 0;
            padding: 10px 0;
            line-height: 1;
            font-weight: 400;
        }

        .logo h1 a, #header .logo h1 a:hover {
            color: #425451;
            text-decoration: none;
            font-family: "Poppins", sans-serif;
            font-weight: 600;
        }

        #login button:hover {
            color: #425451;
            background: #ffffff;
        }
    </style>

    <body>

        <div class="account-pages"></div>
        <div class="clearfix"></div>
        <div class="wrapper-page">
            <div class="text-center">
                <div class="logo">
                    <h1 class="text-light"><a href="{{ route('getHome') }}"><span>Studio Si Apin</span></a></h1>
                </div>
                {{-- <a href="{{ route('getHome') }}" class="logo"><span><span><br>Gereja Pantekosta Tabernakel<br></span>Tulungagung</span></a> --}}
                {{-- <h5 class="text-muted mt-0 font-600">Sign In to Editor Page</h5> --}}
            </div>
        	<div class="m-t-40 card-box">
                <div class="text-center">
                    <h4 class="text-uppercase font-bold mb-0">Sign In</h4>
                </div>
                <div class="p-20">
                    <form class="form-horizontal m-t-20" action="{{route('Login')}}" method="POST">
                        @csrf
                        <div class="form-group">
                            <div class="col-xs-12">
                                <input class="form-control" type="text" required="" placeholder="Username" name="username">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-12">
                                <input class="form-control" type="password" required="" placeholder="Password" name="password">
                            </div>
                        </div>

                        {{-- <div class="form-group ">
                            <div class="col-xs-12">
                                <div class="checkbox checkbox-custom">
                                    <input id="checkbox-signup" type="checkbox">
                                    <label for="checkbox-signup">
                                        Remember me
                                    </label>
                                </div>

                            </div>
                        </div> --}}

                        <div class="form-group text-center m-t-30">
                            <div class="col-xs-12">
                                <button class="btn btn-block waves-effect" id="login" style="background: #425451; color: #ffffff;" type="submit">Log In</button>
                            </div>
                        </div>

                        {{-- <div class="form-group m-t-30 mb-0">
                            <div class="col-sm-12">
                                <a href="page-recoverpw.html" class="text-muted"><i class="fa fa-lock m-r-5"></i> Forgot your password?</a>
                            </div>
                        </div> --}}
                    </form>

                </div>
            </div>
            <!-- end card-box-->

            <div class="row">
                <div class="col-sm-12 text-center">
                    <p class="text-muted">Belum mempunyai akun? <a href="{{ route('get_register') }}" class="text-primary m-l-5"><b>Daftar</b></a></p>
                </div>
            </div>

        </div>
        <!-- end wrapper page -->

        @include('layout.js')

        <!-- jQuery  -->
        <script src="{{ asset('assets/js/jquery.min.js') }}"></script>
        <script src="{{ asset('assets/js/popper.min.js') }}"></script>
        <script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
        <script src="{{ asset('assets/js/waves.js') }}"></script>
        <script src="{{ asset('assets/js/jquery.slimscroll.js') }}"></script>

        <!-- App js -->
        <script src="{{ asset('assets/js/jquery.core.js') }}"></script>
        <script src="{{ asset('assets/js/jquery.app.js') }}"></script>
	</body>
</html>
