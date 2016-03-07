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
        <link href="${pageContext.request.contextPath}/css/forms.css" rel="stylesheet">
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
                            <li><a href="${pageContext.request.contextPath}/mainAjaxPage">HOME</a></li>
                            <li><a href="${pageContext.request.contextPath}/rentals">RENTALS</a></li>
                                <sec:authorize access="hasRole('ROLE_EMPLOYEE')">
                                <li><a href="${pageContext.request.contextPath}/asset">ASSETS</a></li>
                                </sec:authorize>
                                <sec:authorize access="hasRole('ROLE_EMPLOYEE')">
                                <li><a href="${pageContext.request.contextPath}/members">MEMBERS</a></li>
                                </sec:authorize>
                                <sec:authorize access="hasRole('ROLE_ADMIN')">
                                <li><a href="${pageContext.request.contextPath}/admin">ADMIN</a></li>
                                </sec:authorize>
                                <sec:authorize access="hasRole('ROLE_USER')">
                                <li><a href="${pageContext.request.contextPath}/profile">PROFILE</a></li>
                                </sec:authorize>
                            <li role="presentation">
                                <a id ="logInUsername"><sec:authentication property="principal.username" /></a>
                            </li>
                            <li role="presentation">
                                <a href="${pageContext.request.contextPath}/j_spring_security_logout">LOG OUT</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

        <div class="container col-md-6" style="PADDING-TOP: 35px">
            <form class="form-labels-on-top" method="post" action="#">

                <div class="form-title-row">
                    <h1>Edit Information</h1>
                </div>
                <div class="form-row">
                    <label>
                        <input type="text" id="profileFirstName" placeholder="First Name">
                    </label>
                </div>
                <div class="form-row">
                    <label>
                        <input type="text" id="profileLastName" placeholder="Last Name">
                    </label>
                </div>
                <div class="form-row">
                    <label>
                        <input type="text" id="profileEmail" placeholder="Email">
                    </label>
                </div>
                <div class="form-row">
                    <label>
                        <input type="text" id="profilePhone" placeholder="Phone">
                    </label>
                </div>
                <div class="form-row">
                    <button type="submit" id="updateUserInfo">Update Information</button>
                </div>
                
            </form>
            <form class="form-labels-on-top" method="post" action="#">
                <div class="form-title-row">
                    <h1>Change Password</h1>
                </div>
                <div class="form-row">
                    <label>
                        <input type="text" id="profileNewPassword" placeholder="New Password">
                    </label>
                </div>
                <div class="form-row">
                    <label>
                        <input type="text" id="profileRepeatPassword" placeholder="Repeat Password">
                    </label>
                </div>
                <div class="form-row">
                    <button type="submit" id="changePassword">Change Password</button>
                </div>
            </form>
        </div>


        <div class="container col-md-6" style="PADDING-TOP: 75px">
            <div>
                <div class="row">
                    <h2>Rental History</h2>
                    <table id="profileTable" class="table table-hover">
                        <tr>       
                            <th width="10%">Date</th>
                            <th width="10%">Employee</th>
                            <th width="10%">Status</th>
                            <th width="10%">Tag#</th>
                        </tr>
                        <tbody id="profileRows"></tbody>
                    </table>
                </div> 
            </div>
        </div>


                            <div id="user_id" hidden></div>
        <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>    
        <script src="${pageContext.request.contextPath}/js/kobold.js"></script>
    </body>
</html>
