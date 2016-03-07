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

            <div class="container col-md-7" style="PADDING-TOP: 75px">
                <div style="PADDING-LEFT: 20px">
                    <div>
                        <h2>Search</h2>
                        <form class="form-horizontal" role="form">
                            <table id="SearchTable" class="table table-hover">
                                <tr>
                                <div>
                                    <label class="" for=""></label><input style="width: 150px;" type="text" placeholder="Member ID">
                                    <label class="" for=""></label><input style="width: 150px;" type="text" placeholder="Name">
                                    <label><button type="submit" id="search-button" class="btn btn-default">Search</button></label>
                                </div>                           
                                </tr>
                            </table>
                        </form>
                    </div> 
                    <div>
                        <div class="row">
                            <table id="MembersTable" class="table table-hover">
                                <tr>
                                    <th width="10%">Member ID</th>
                                    <th width="10%">Name</th>
                                    <th width="10%"></th>
                                    <th width="10%">Email</th>
                                    <th width="10%">Phone</th>
                                </tr>
                                <tbody id="membersRows"></tbody>
                            </table>
                        </div> 
                    </div>
                </div>
            </div>
                

            <div class="container col-md-5" style="PADDING-TOP: 45px">
                <form class="form-labels-on-top" method="post" action="#" id="addMembersForm">
                    <div class="form-title-row">
                        <h1>Add Member</h1>
                    </div>
                    <div class="form-row">
                        <label>
                            <input type="text" id="username" placeholder="User Name">
                        </label>
                    </div>
                    <div class="form-row">
                        <label>
                            <input type="text" id="first_name" placeholder="First Name">
                        </label>
                    </div>
                    <div class="form-row">
                        <label>
                            <input type="text" id="last_name" placeholder="Last Name">
                        </label>
                    </div>
                    <div class="form-row">
                        <label>
                            <input type="text" id="email" placeholder="email">
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <input type="text" id="phone" placeholder="Phone">
                        </label>
                    </div>
                    <div class="form-row">
                        <div class="form-radio-buttons">
                            <div>
                                <label>
                                    <input type="radio" id="employeeRadio">
                                    <span>Employee</span>
                                </label>
                            </div>
                            <div>
                                <label>
                                    <input type="radio" id="adminRadio">
                                    <span>Admin</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <button type="submit" id="addMember">Add Member</button>
                    </div>
                </form>
            </div>
     
    
            <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
            <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>    
            <script src="${pageContext.request.contextPath}/js/kobold.js"></script>
        </body>
    </html>
