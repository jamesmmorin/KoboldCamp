<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
    <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Kobold Camp</title>
        <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/img/koboldicon.png" rel="shortcut icon">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <link href="${pageContext.request.contextPath}/css/forms.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/scss/login.scss" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/jquery.vegas.min.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />
        <link href='http://fonts.googleapis.com/css?family=Ruluko' rel='stylesheet' type='text/css' />
    </head>
    <body>
        <!-- Navigation -->

        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!--     <a class="navbar-brand" href="img/4.jpg"></a> -->
                </div>
                <!-- Collect the nav links for toggling -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="${pageContext.request.contextPath}/mainAjaxPage">HOME</a>
                        </li>
                        <li><a href="#about">THE WEST</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/rentals">RENTALS</a>
                        </li>
                        <li><a href="#contact-sec">CONTACT</a>
                        </li>
                        <li role="presentation">
                            <a href="${pageContext.request.contextPath}/login">Log In</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>
        <!--End Navigation -->











        <!--Header section  -->
        <div class="container" id="home">
            <div class="row text-center">
                <div class="col-md-12">
                    <h1 class="head-main">KOBOLD CAMP</h1>
                    <h2 class="head-sub-main">Go West</h2>
                    <div class="head-last"></div>

                </div>


            </div>
        </div>
        <!--End Header section  -->


        <!--words Section-->
        <section class="for-full-back color-white" id="about">
            <div class="container">

                <div class="row text-center">
                    <div class="col-md-8 col-md-offset-2">
                        <h1>Enjoy All This Area Has To Offer</h1>
                        <h4>
                            <strong>From abundant wildlife to breathtaking scenery,
                                Kobold Camp sits at the gateway to some of the most picturesque country this
                                nation has left to offer. Use the links below to learn more about the wildlife
                                and natural wonders you'll see when you come visit us. And feel free to peruse our 
                                list of well-stocked rental equipment to help plan that perfect trip... 
                            </strong>
                        </h4>
                    </div>

                </div>

                <div class="row text-center space-pad">
                    <div class="col-md-3 ">

                        <div class="about-div">

                            <i class="fa fa-paw fa-4x main-color-red"></i>


                            <h3>Wildlife </h3>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                Curabitur nec nisl odio. Mauris vehicula at nunc id posuere.
                            </p>

                        </div>

                    </div>
                    <div class="col-md-3 ">

                        <div class="about-div">

                            <i class="fa fa-tree fa-4x main-color-red"></i>


                            <h3>Scenic Nature </h3>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                Curabitur nec nisl odio. Mauris vehicula at nunc id posuere.
                            </p>

                        </div>

                    </div>
                    <div class="col-md-3 ">

                        <div class="about-div">

                            <i class="fa fa-binoculars fa-4x main-color-red"></i>


                            <h3>Rentals </h3>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                Curabitur nec nisl odio. Mauris vehicula at nunc id posuere.
                            </p>

                        </div>

                    </div>
                    <div class="col-md-3 ">

                        <div class="about-div">

                            <i class="fa fa-folder fa-4x main-color-red"></i>


                            <h3>Subscribe </h3>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                Curabitur nec nisl odio. Mauris vehicula at nunc id posuere.
                            </p>

                        </div>

                    </div>
                </div>
                <div class="row text-center">
                    <div class="col-md-12">
                        <h2></h2>
                        <p>

                        </p>
                    </div>

                </div>
            </div>


        </section>

        <section class="for-full-back " id="Parallax-one">
            <div class="container">

                <div class="row text-center for-parallax-one">
                    <div class="col-md-6 ">
                        <h3>Lorem ipsum dolor</h3>
                        <h4>
                            <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                Curabitur nec nisl odio. Mauris vehicula at nunc id posuere.
                            </strong>
                        </h4>
                    </div>
                    <div class="col-md-6 ">
                        <h3>Lorem ipsum dolor</h3>
                        <h4>
                            <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                Curabitur nec nisl odio. Mauris vehicula at nunc id posuere.
                            </strong>
                        </h4>
                    </div>
                </div>


            </div>
        </section>
        <!--./parallax one-->
        <!--End words Section-->




        <!-- Pricing Section -->

        <section class="for-full-back color-white " id="price-sec">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-8 col-md-offset-2">
                        <h1>LITTLE PRICING SCHEDULE</h1>
                        <h4>
                            <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                Curabitur nec nisl odio. Mauris vehicula at nunc id posuere.
                            </strong>
                        </h4>
                    </div>

                </div>
                <div class="row text-center">

                    <div class="col-md-12 ">



                        <div class="col-md-3">
                            <ul class="plan">
                                <li class="plan-head">BASIC RATE</li>
                                <li class="main-price">$99 only</li>
                                <li><strong>per </strong>hour</li>
                                <li class="bottom">
                                    <a class="btn btn-default">BOOK</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-md-3">
                            <ul class="plan">
                                <li class="plan-head">SIMPLE RATE</li>
                                <li class="main-price">$199 only</li>
                                <li><strong>per </strong>hour</li>
                                <li class="bottom">
                                    <a href="#contact-sec" class="btn btn-default">BOOK</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-3">
                            <ul class="plan">
                                <li class="plan-head">VALUE RATE</li>
                                <li class="main-price">$299 only</li>
                                <li><strong>per </strong>hour</li>
                                <li class="bottom">
                                    <a href="#contact-sec" class="btn btn-default">BOOK</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-md-3">
                            <ul class="plan">
                                <li class="plan-head">ADVANCE RATE</li>
                                <li class="main-price">$399 only</li>
                                <li><strong>per </strong>hour</li>
                                <li class="bottom">
                                    <a href="#contact-sec" class="btn btn-default">BOOK</a>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>


            </div>
        </section>

        <section class="for-full-back for-parallax-two" id="Parallax-two">
            <div class="container">

                <div class="row text-center">
                    <div class="col-md-8 col-md-offset-2 ">
                        <h2>Lorem ipsum dolor sit</h2>
                        <h4>
                            <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                Curabitur nec nisl odio. Mauris vehicula at nunc id posuere.
                            </strong>
                        </h4>
                    </div>

                </div>


            </div>
        </section>
        <!--./parallax two-->
        <!--End Pricing Section -->

        <!-- Contact Section -->
        <section class="for-full-back color-white " id="contact-sec">
            <div class="container">


                <div class="row">
                    <div class="col-md-5 contact-cls">
                        <h3>CONTACT US ANYTIME </h3>
                        <div>
                            <span><i class="fa fa-home"></i>&nbsp; Address: 500 Wyoming Street <br/>
                                Jackson Hole, WY 83001</span>
                            <br />
                            <span><i class="fa fa-phone"></i>&nbsp;Phone: (307) 789-1234</span>
                            <br />
                            <span><i class="fa fa-envelope-o"></i>&nbsp;E-Mail: info@kobaldcamp.com</span>
                            <br />
                            <span><i class="fa fa-globe"></i>&nbsp;Web: www.kobaldcamp.com</span>
                            <br />
                        </div>
                        <br />
                        <div id="social-icon">
                            <a href="#"><i class="fa fa-facebook fa-2x"></i></a>
                            <a href="#"><i class="fa fa-twitter fa-2x"></i></a>
                            <a href="#"><i class="fa fa-linkedin fa-2x"></i></a>
                            <a href="#"><i class="fa fa-google-plus fa-2x"></i></a>
                            <a href="#"><i class="fa fa-pinterest fa-2x"></i></a>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <h2>Lorem ipsum dolor sit amet</h2>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                            Curabitur nec nisl odio. Mauris vehicula at nunc id posuere.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                            Curabitur nec nisl odio. Mauris vehicula at nunc id posuere.


                        </p>
                        <form>
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" required="required" placeholder="Name">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" required="required" placeholder="Email address">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="form-group">
                                        <textarea name="message" id="message" required="required" class="form-control" rows="3" placeholder="Message"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-default">Submit Request</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </section>

        <div class="modal fade" id="logInModal" tabindex="-1" role="dialog" aria-labelledby="detailsModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <form class="form-labels-on-top" method="post" action="#" id="logInForm">
                        <div class="form-title-row">
                            <h1>Log in</h1>
                        </div>
                        <div class="form-row">
                            <label>
                                <input type="text" id="loginUsername" placeholder="User Name">
                            </label>
                        </div>
                        <div class="form-row">
                            <label>
                                <input type="text" id="loginPassword" placeholder="Password">
                            </label>
                        </div>
                        <div class="form-row">
                            <button type="submit" id="logIn">Log In</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>



        <!--End Contact Section -->
        <!--footer Section -->
        <div class="for-full-back " id="footer">
            2014 www.yourdomain.com | All Right Reserved

        </div>
        <!--End footer Section -->
        <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
        <!-- CORE JQUERY  -->
        <script src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP CORE SCRIPT   -->
        <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
        <!-- VEGAS SLIDESHOW SCRIPTS -->
        <script src="${pageContext.request.contextPath}/js/jquery.vegas.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.parallax-1.1.3.js"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="${pageContext.request.contextPath}/js/custom.js"></script>
        <script src="${pageContext.request.contextPath}/js/login.js"></script>

    </body>
</html>
