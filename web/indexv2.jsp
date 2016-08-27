<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href='http://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>

    <title>Dominic Heal - Portfolio</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/3-col-portfolio.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" id="mini-header" href="#">DominicHeal.com</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li>
                    <a class="menu-item" href="#">About</a>
                </li>
                <li>
                    <a class="menu-item" href="#">Projects</a>
                </li>
                <li>
                    <a class="menu-item" href="#">Contact</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<!-- Page Content -->
<div class="container">

    <!-- Page Header -->
    <div class="row">
        <div class="col-lg-12" id="headerimg">
            <h1 class="page-header">Dominic Heal</h1>
            <small>Online Portfolio</small>
        </div>
    </div>
    <!-- /.row -->

    <!-- Projects Row -->
    <c:forEach items="${projects}" var="project" varStatus="theCount">
        <c:if test="${theCount.count % 3 == 0}">
            <div class="row">
        </c:if>
            <div class="col-md-4 portfolio-item">
                 <a href="${project.url}">
                    <img class="img-responsive" src="images/${project.name}.png" onerror="this.src='images/ShowImage.jpg'">
                 </a>
                 <h3>
                    <a href="${project.url}">${project.name}</a>
                 </h3>
                    <p>${project.description}</p>
                 <p>Language: <img src="images/${project.language}.png" alt="${project.language}" data-toggle="tooltip" title="${project.language}" onerror="Unknown" width="16px" height="16px">
                     ${project.forks} <img class="project-icons" src="images/fork.png" data-toggle="tooltip" title="Forks" alt="" onerror="Unknown">
                     ${project.stars} <img class="project-icons" src="images/star.png" data-toggle="tooltip" title="Stars" alt="" onerror="Unknown">
                </p>
            </div>
        <c:if test="${theCount.count % 3 == 0}">
            </div>
        </c:if>
    </c:forEach>
    <!-- /.row -->

    <!-- Footer -->
    <jsp:include page="footer.jsp"/>

</div>
<!-- /.container -->

<!-- jQuery -->
<script src="js/jquery.js"></script>

<script>
    $(document).ready(function(){
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

</body>

</html>