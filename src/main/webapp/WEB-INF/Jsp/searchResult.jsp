<%--
  Created by IntelliJ IDEA.
  User: Cheng
  Date: 2019/6/11
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>搜索结果</title>
    <!-- 在线引入bootstrap -->
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <style>
        .caption a{
            color: #0066cc;
            cursor:pointer;
            font-size:18px;

        }
        .caption{
            margin-left: 10px;
        }
    </style>

</head>
<body>

    <div class="container-fluid" >
        <div class="row-fluid">
            <div class="span2">
                1
            </div>
            <div class="span8">
                <div class="col-md-10" style="border: 3px solid #fd982d">
                    <c:forEach items="${productList}" var="product">
                            <div class="caption">
                                <img width="100px" height="60px" src="static/product_picture/${product.picture}">
                                <a>${product.name}</a>
                                <div style="border: 2px solid orangered"/>
                            </div>
                    </c:forEach>
                </div>
            </div>
            <div class="span2">
                2
            </div>
        </div>
    </div>

</body>
</html>
