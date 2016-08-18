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
                        <li><a href="#tours">TOURS</a>
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
                                From Elk and Bison to Wolves and Grizzly Bears, learn about the wildlife 
                                that had made this part of our country famous for hundreds of years.
                            </p>

                        </div>

                    </div>
                    <div class="col-md-3 ">

                        <div class="about-div">

                            <i class="fa fa-tree fa-4x main-color-red"></i>
                            
                            <h3>Scenic Nature </h3>
                            <p>
                                With some of the most breathtaking scenery you'll find the world over, 
                                this area has been drawing people here since the time
                                of Lewis and Clark.
                            </p>

                        </div>

                    </div>
                    <div class="col-md-3 ">

                        <div class="about-div">

                            <i class="fa fa-binoculars fa-4x main-color-red"></i>


                            <h3>Rentals </h3>
                            <p>
                                Hike, camp, fish, canoe, kayak, or whatever else floats your boat (pun intended)
                                we have it. Wanna rent a pair of binoculars? Give us a call. We rent out single items.
                            </p>

                        </div>

                    </div>
                    <div class="col-md-3 ">

                        <div class="about-div">

                            <i class="fa fa-folder fa-4x main-color-red"></i>


                            <h3>Subscribe </h3>
                            <p>
                                Live near us? Coming to visit? Follow us on all the regular social media channels. 
                                If you're ever in our neck of the woods, send us a message. We'd love to see you! 
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

        <!--///////////////////////////////////////////////////-->
        <!--Words for first background picture go below-->
        <!--///////////////////////////////////////////////////-->
        <section class="for-full-back " id="Parallax-one">
            <div class="container">

                <div class="row text-center for-parallax-one">
                    <div class="col-md-6 ">
                        <h3></h3>
                        <h4>
                            <strong>
                            </strong>
                        </h4>
                    </div>
                    <div class="col-md-6 ">
                        <h3></h3>
                        <h4>
                            <strong>
                            </strong>
                        </h4>
                    </div>
                </div>


            </div>
        </section>
        <!--./parallax one-->
        <!--End words Section-->



        <!--///////////////////////-->
        <!-- TOURS SECTION -->
        <!--//////////////////////-->

        <section class="for-full-back color-white " id="tours">
            <div class="container">

                <div class="row text-center">
                    <div class="col-md-8 col-md-offset-2">
                        <h1>Take a Gander at the Tours we Offer</h1>
                        <h4>
                            <strong>Look through the different tours we offer, and let us know if you find what you're 
                                looking for. Nothing we offer quite fitting the bill? Give us a call, or send us an email.
                                We would love to build a custom tour to fit your requirements. 
                            </strong>
                        </h4>
                    </div>

                </div>

                <div class="row text-center space-pad">
                    <div class="col-md-3 ">

                        <div class="about-div">

                            <i class="fa fa-camera fa-4x main-color-red"></i>


                            <h3>Yellowstone Tours</h3>
                            <p>
                                From Elk and Bison to Wolves and Grizzly Bears, learn about the wildlife 
                                that had made this part of our country famous for hundreds of years.
                            </p>

                        </div>

                    </div>
                    <div class="col-md-3 ">

                        <div class="about-div">

                            <i class="fa fa-map fa-4x main-color-red"></i>
                            
                            <h3>Teton Tours</h3>
                            <p>
                                With some of the most breathtaking scenery you'll find the world over, 
                                this area has been drawing people here since the time
                                of Lewis and Clark.
                            </p>

                        </div>

                    </div>
                    <div class="col-md-3 ">

                        <div class="about-div">

                            <i class="fa fa-binoculars fa-4x main-color-red"></i>


                            <h3>River and Park Tours</h3>
                            <p>
                                Hike, camp, fish, canoe, kayak, or whatever else floats your boat (pun intended)
                                we have it. Wanna rent a pair of binoculars? Give us a call. We rent out single items.
                            </p>

                        </div>

                    </div>
                    <div class="col-md-3 ">

                        <div class="about-div">

                            <i class="fa fa-bus fa-4x main-color-red"></i>


                            <h3>Bus Tours</h3>
                            <p>
                                Live near us? Coming to visit? Follow us on all the regular social media channels. 
                                If you're ever in our neck of the woods, send us a message. We'd love to see you! 
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

        <section class="for-full-back for-parallax-two" id="Parallax-two">
            <div class="container">

                <div class="row text-center">
                    <div class="col-md-8 col-md-offset-2 ">
                        <h2></h2>
                        <h4>
                            <strong>
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
                        <h2>Not ready to call us? Send an email instead then</h2>
                        <p>
                            We're pretty good about responding to emails within the first 24 hours.
                            If you have an urgent question and need to speak with someone right away,
                            please feel free to give us a call anytime (our number is listed over to
                            the left, under our address). We look forward to talking with you!


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
