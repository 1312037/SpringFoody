<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<spring:url value="/resources/css" var="css" />
	<spring:url value="/resources/vendor" var="vendor" />
	<spring:url value="/resources/img" var="img" />
	<spring:url value="/resources/js" var="js" />
	<spring:url value="/resources/fonts" var="fonts" />
	
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>Spring Foody</title>

	<!-- Bootstrap Core CSS -->
	<link href="${vendor}/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom Fonts -->
	<link href="${vendor}/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link   href="${fonts}/opensans.css" rel='stylesheet' type='text/css'>
	<link   href="${fonts}/merriweather.css" rel='stylesheet' type='text/css'>

	<!-- Plugin CSS -->
	<link href="${vendor}/magnific-popup/magnific-popup.css" rel="stylesheet">

	<!-- Theme CSS -->

	<link href="${css}/creative.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${css}/homepage.css">
</head>

<body id="page-top">
    <!--Button back to top page -->
    <!-- <div class="btn-group-vertical goTopPage">
		<button class="btn btn-outline"><a href="#page-top"><span class="fa fa-arrow-up"></span></a></button>
		<button class="btn btn-outline"><a href="#page-gift"><span class="fa fa-gift"></span></a></button>
	</div> -->
    <div class="icon-bar goTopPage" id="goTopPage">
        <a class="active" href="#"><i class="fa fa-home"></i></a>
        <a href="#"><i class="fa fa-shopping-cart"></i></a>
        <a href="#"><i class="fa fa-envelope"></i></a>
        <a href="#"><i class="fa fa-globe"></i></a>
    </div>
    <div id="mySidenav" class="sidenav" style="position: fixed; top: 20%;z-index: 1;">
        <a href="#" id="myabout">About</a>
        <a href="#" id="myblog">Service</a>
        <a href="#" id="myprojects">Contact</a>
    </div>
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="row">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="col-xs-2">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                        </button>
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
                            <span class="sr-only">Toggle navigation</span> Menu Login <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand page-scroll" href="#page-top">Spring Foody</a>
                    </div>
                </div>
                <div class="search col-xs-7">
                    <input type="text" name="txtSearch" class="txtSearch" id="txtSearch" style="" placeholder="Search...">
                    <button class="btnSearch" id="btnSearch" name="btnSearch"><span class="fa fa-search"></span></button>
                    <button class="btnCloseSearch" id="btnCloseSearch" name="btnCloseSearch"><span class="fa fa-close"></span></button>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="col-xs-7" id="navMenu">
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li>
                                <a class="page-scroll" href="#favorite-food">Favorite food</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="#favorite-address">Favorite address</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="#services">Services</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="#contact">Contact</a>
                            </li>
                            <li class="pull-right">
                                <a class="btnSearchPlus" id="btnSearchPlus"><span class="fa fa-search-plus"></span></a>
                            </li>
                        </ul>
                    </div>
                </div>
                                <!-- /.navbar-collapse -->
                <!-- Login nav -->
                <div class="col-xs-3">
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
                        <ul class="nav navbar-nav navbar-right user" id="user">
                            <li><a href="" class="btnCart" id="btnCart"><span class="fa fa-shopping-cart"></span></a></li>
                            <li><a href="" class="btnNotice" id="btnNotice"><span class="fa fa-bell"></span></a></li>
                            <li><a href="#modalSignup" class="signup" id="signup"><span class="glyphicon glyphicon-user"></span>&nbsp;Sign Up</a></li>
                            <li><a href="#modalLogin" class="login" id="login"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Login</a></li>
                        </ul>
                    </div>
                </div>
                <!-- ./ Login nav -->
            </div>
        </div>
        <!-- /.container -->
    </nav>
    <!-- Modal Login, Sign Up, Reset Password -->
    <div class="container">
        <!-- Modal -->
        <div class="modal fade" id="ModalLogin" role="dialog">
            <div class="modal-dialog">
                <!-- Login Modal-->
                <div class="modal-content">
                    <div class="modal-header" style="padding:35px 50px;">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4><span class="fa fa-sign-in"></span>&#32;Login</h4>
                    </div>
                    <div class="modal-body" style="padding:40px 50px;">
                        <form role="form">
                            <div class="form-group">
                                <label for="usernameLogin"><span class="fa fa-envelope-o"></span> Email</label>
                                <input type="text" class="form-control" id="usernameLogin" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                                <label for="psw"><span class="fa fa-lock"></span> Password</label>
                                <input type="password" class="form-control" id="pswLogin" placeholder="Enter password">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="" checked>&nbsp;Remember me</label>
                            </div>
                            <button type="button" class="btn btn-success btn-block" id="btnLogin">Login</button>
                        </form>
                    </div>
                    <div class="modal-footer" style="padding:40px 50px;">
                        <p>Not a member? <a href="#" id="signup">Sign Up</a></p>
                        <p>Forgot <a href="#" id="resetPassword">Password?</a></p>
                    </div>
                </div>
                <!--End of Login Modal-->
            </div>
            <!--End of modal-dialog-->
        </div>
    </div>
    <!-- 	Sign Up Modal -->
    <div class="container">
        <!-- Modal -->
        <div class="modal fade" id="ModalSignUp" role="dialog">
            <div class="modal-dialog">
                <!-- Sign Up Modal-->
                <div class="modal-content">
                    <div class="modal-header" style="padding:35px 50px;">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4><span class="fa fa-user-plus"></span>&#32;Sign Up</h4>
                    </div>
                    <div class="modal-body" style="padding:40px 50px;">
                        <form role="form">
                            <div class="form-group">
                                <label for="username"><span class="fa fa-envelope-o"></span> Email</label>
                                <input type="text" class="form-control" id="usernameSignup" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                                <label for="psw"><span class="fa fa-lock"></span> Password</label>
                                <input type="password" class="form-control" id="pswSignup" placeholder="Enter password">
                            </div>
                            <div class="form-group">
                                <label for="psw"><span class="fa fa-lock"></span> Re-enter Password</label>
                                <input type="password" class="form-control" id="pswSignup2" placeholder="Enter password">
                            </div>
                            <button type="button" class="btn btn-success btn-block" id="btnSignUp">Sign Up</button>
                        </form>
                    </div>
                </div>
                <!--End of Sign Up Modal-->
            </div>
            <!--End of modal-dialog-->
        </div>
    </div>
    <!-- 	Forget Password Modal -->
    <div class="container">
        <!-- Modal -->
        <div class="modal fade" id="ModalResetPassword" role="dialog">
            <div class="modal-dialog">
                <!-- Reset Modal-->
                <div class="modal-content">
                    <div class="modal-header" style="padding:35px 50px;">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4><span class="fa fa-undo"></span>&#32;Reset Password</h4>
                    </div>
                    <div class="modal-body" style="padding:40px 50px;">
                        <form role="form">
                            <div class="form-group">
                                <label for="username"><span class="fa fa-envelope-o"></span> Your email</label>
                                <input type="text" class="form-control" id="usernameReset" placeholder="Enter email">
                            </div>
                            <button type="button" class="btn btn-success btn-block" id="btnReset">Send</button>
                        </form>
                    </div>
                    <!--End of Forget Password Modal-->
                </div>
                <!--End of modal-dialog-->
            </div>
        </div>
    </div>
    <!-- ./ carousel background -->
    <section class="favorite-food" id="favorite-food">
        <div class="container">
            <div class="row" style="text-align: center;">
                <h2 style="font-weight: 700;">Favorite Food</h2>
            </div>
            <div class="row">
                <div class="item item-deals">
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile-hmmmmmmmmmm-jpg.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile--43a1b3c3c43d9920ce0-915-636414297593585968.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile-25-jpg.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile-b1f1-jpg.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile-hmmmmmmmmmm-jpg.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile--43a1b3c3c43d9920ce0-915-636414297593585968.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile-25-jpg.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile-b1f1-jpg.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile-hmmmmmmmmmm-jpg.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                </div>
            </div>
            <div class="row" style="text-align: center;">
                <a class="btn btn-info btn-block btn-readmore" href="foody.html" target="_blank" style="color: #FFFFFF;"><i>Xem thêm&#32;<span class="fa fa-arrow-right" aria-hidden="true"></span></i></a>
            </div>
        </div>
    </section>
    <section class="favorite-address" id="favorite-address">
        <div class="container">
            <div class="row" style="text-align: center;">
                <h2 style="font-weight: 700;">Favorite Address</h2>
            </div>
            <div class="row">
                <div class="item item-deals">
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile-hmmmmmmmmmm-jpg.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile--43a1b3c3c43d9920ce0-915-636414297593585968.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile-25-jpg.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile-b1f1-jpg.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile-hmmmmmmmmmm-jpg.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile--43a1b3c3c43d9920ce0-915-636414297593585968.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile-25-jpg.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile-b1f1-jpg.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#">
							<img class="img-responsive" src="${img}/hotdeals/foody-mobile-hmmmmmmmmmm-jpg.jpg" alt="">
							<div class="info-deals">
								<div class="description">
									<h4 class="item-name">Trà sữa First Kiss</h4>
									<div class="item-address txt-elipsis">401 Minh Phụng, P. 10, Quận 11">401 Minh Phụng, P. 10, Quận 11</div>
								</div>
								<p class="item-promotion">
									<i><span class="fa fa-tag"></span>&#32;Giảm 45% tổng pill</i>
								</p>
							</div>
						</a>
                    </div>
                </div>
            </div>
            <div class="row" style="text-align: center;">
                <a class="btn btn-info btn-block btn-readmore" href="address.html" target="_blank">Xem thêm&#32;<span class="fa fa-arrow-right" aria-hidden="true"></span></a>
            </div>
        </div>
    </section>
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Dịch vụ</h2>
                    <hr class="primary">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-diamond text-primary sr-icons"></i>
                        <h3>Đặt bàn</h3>
                        <p class="text-muted">Our templates are updated regularly so they don't break.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-newspaper-o text-primary sr-icons"></i>
                        <h3>Đặt giao hàng</h3>
                        <p class="text-muted">We update dependencies to keep things fresh.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-paper-plane text-primary sr-icons"></i>
                        <h3>Electronic Ship</h3>
                        <p class="text-muted">You can use this theme as is, or you can make changes!</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="no-padding" id="portfolio">
        <div class="container">
            <div class="row no-gutter popup-gallery">
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/1.jpg" class="portfolio-box">
						<img src="${img}/portfolio/thumbnails/1.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">
									Category
								</div>
								<div class="project-name">
									Project Name
								</div>
							</div>
						</div>
					</a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/2.jpg" class="portfolio-box">
						<img src="${img}/portfolio/thumbnails/2.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">
									Category
								</div>
								<div class="project-name">
									Project Name
								</div>
							</div>
						</div>
					</a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/3.jpg" class="portfolio-box">
						<img src="${img}/portfolio/thumbnails/3.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">
									Category
								</div>
								<div class="project-name">
									Project Name
								</div>
							</div>
						</div>
					</a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/4.jpg" class="portfolio-box">
						<img src="${img}/portfolio/thumbnails/4.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">
									Category
								</div>
								<div class="project-name">
									Project Name
								</div>
							</div>
						</div>
					</a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/5.jpg" class="portfolio-box">
						<img src="${img}/portfolio/thumbnails/5.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">
									Category
								</div>
								<div class="project-name">
									Project Name
								</div>
							</div>
						</div>
					</a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/6.jpg" class="portfolio-box">
						<img src="${img}/portfolio/thumbnails/6.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">
									Category
								</div>
								<div class="project-name">
									Project Name
								</div>
							</div>
						</div>
					</a>
                </div>
            </div>
        </div>
    </section>
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Let's Get In Touch!</h2>
                    <hr class="primary">
                    <p>Ready to start your next project with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
                </div>
                <div class="col-lg-4 col-lg-offset-2 text-center">
                    <i class="fa fa-phone fa-3x sr-contact"></i>
                    <p>123-456-6789</p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-envelope-o fa-3x sr-contact"></i>
                    <p><a href="mailto:your-email@your-domain.com">feedback@startbootstrap.com</a></p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- jQuery -->
	<script src="${vendor}/jquery/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="${vendor}/bootstrap/js/bootstrap.js"></script>
    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="${vendor}/scrollreveal/scrollreveal.min.js"></script>
    <script src="${vendor}/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Theme JavaScript -->
    <script src="${js}/creative.min.js"></script>
	<script type="text/javascript" src="${js}/homepage.js"></script>
</body>
</html>