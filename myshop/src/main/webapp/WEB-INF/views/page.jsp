<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
    
<c:set var="contextRoot" value="${pageContext.request.contextPath }" />    
<s:url var="css" value="/resources/css" />    
 <s:url var="js" value="/resources/js" />    
 <s:url var="images" value="/resources/images" />       

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>my shop - ${title}</title>
    
    <script >
     
       window.menu = '${title}';
    
    </script>

    <!-- Bootstrap Core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    
    <!-- bootstrap readable theme .css -->
      <link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${css}/myapp.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

 <div class="wrapper">

    <!-- Navigation -->
    
     <%@ include file="./shared/navbar.jsp"%>
    

    <!-- Page Content -->
    
    <!-- loading the home content -->
    
   <div class="content"> 
    
    <c:if test="${userClickHome==true }">
       <%@ include file="home.jsp" %>
    </c:if>
    
    <!-- about -->
    
     <c:if test="${userClickAbout==true }">
       <%@ include file="about.jsp" %>
    </c:if>
    
    <!-- contact us -->
     <c:if test="${userClickContact==true }">
       <%@ include file="contact.jsp" %>
    </c:if>
    
  </div>   
    <!-- /.container -->
    
    <!-- footer -->
    
    <%@include file="./shared/footer.jsp" %>

   
    <!-- /.container -->

    <!-- jQuery -->
    <script src="${js}/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${js}/bootstrap.min.js"></script>
    
    <!-- my coded js -->
    <script src="${js}/myapp.js"></script>
    
    </div>

</body>

</html>

