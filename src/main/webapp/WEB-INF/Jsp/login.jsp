<%--
  Created by IntelliJ IDEA.
  User: Cheng
  Date: 2019/6/17
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>逍遥游/登录and注册</title>
    <link rel="stylesheet" href="static/bootstrap4/css/bootstrap.css">
    <script src="static/js/vendor/jquery-1.11.1.min.js"></script>
    <script src="static/bootstrap4/js/bootstrap.js"></script>

    <style>
        body{
            background: url("/static/img/A.png") no-repeat center 0;
        }

        .nav{
            font-size: 15px;
        }

        .navbar-brand{
            font-size: 20px;
            color: #ffffff;
        }

        .nav-link{
            color: #ffffff;
        }

        .dropdown-item{
            font-size: 15px;
        }

    </style>

    <style type="text/css">
        .nav>li :hover{
            color: #ececf6;
        }

        @font-face {
            font-family: AMAZR;
            src: url("/static/fonts/AMAZR___.TTF");
        }
    </style>

    <script>

        function loginCheck(form) {
            var usernameValue = document.getElementById("username").value;
            if(usernameValue.length <= 6)
            {
                alert("用户名长度大于6个字符！");
                return false;
            }else {
                return true;
            }

        }

        function registerCheck(form) {
            var newUsernameValue = document.getElementById("newUsername").value;
            var newPasswordValue = document.getElementById("newPassword").value;
            var rNewPasswordValue = document.getElementById("rNewPassword").value;
            var phoneNumber = document.getElementById("phoneNumber").value;
            if (newUsernameValue.length <= 6 )
            {
                alert("用户名长度大于6个字符！");
                return false;
            }

            if (newPasswordValue.length <= 6){
                alert("密码长度大于6个字符！");
                return false;
            }

            if (newPasswordValue != rNewPasswordValue){
                alert("两次输入密码不一致！");
                return false;
            }

            if (phoneNumber.length != 11){
                alert("手机号码输入长度错误！");
                return false;
            }

        }

    </script>

    <script>
        $(function () {
            $("#newUsername").blur(function () {
                var label=$("#checkNewUsername");
                var newUsernameLength = document.getElementById("newUsername").value.length;
                if(newUsernameLength <= 6){
                    label.html("用户名！长度>6");
                } else{
                    label.html("用户名");
                }
            })

            $("#newPassword").blur(function () {
                var label=$("#checkNewPassword");
                var newPasswordLength = document.getElementById("newPassword").value.length;
                if (newPasswordLength <= 6 ){
                    label.html("密&nbsp;&nbsp;&nbsp;码！长度>6");
                } else {
                    label.html("密&nbsp;&nbsp;&nbsp;码");
                }
            })

            $("#rNewPassword").blur(function () {
                var label=$("#checkRNewPassword");
                var newPassword = document.getElementById("newPassword").value;
                var rNewPassword = document.getElementById("rNewPassword").value;
                if (newPassword == rNewPassword){
                    label.html("确认密码");
                } else {
                    label.html("密码不一致");
                }
            })

            $("#phoneNumber").blur(function () {
                var label=$("#checkPhoneNumber");
                var phoneNumberLength = document.getElementById("phoneNumber").value.length;
                if (phoneNumberLength != 11 ){
                    label.html("手机号码！出错");
                } else {
                    label.html("手机号码");
                }
            })

        })
    </script>



</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <nav id="first" class="navbar navbar-default navbar-fixed-top bg-custom" style="margin-left: 0px">
                <ul class="nav">
                    <li class="nav-item">
                        <a class="navbar-brand" href="#" style="font-family: 华文行楷;font-size: 30px">逍遥游</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#" style="font-family: 华文行楷;font-size: 25px">主页</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" style="font-family: 华文行楷;font-size: 25px">登录/注册</a>
                    </li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                    <li class="nav-item dropdown ml-md-auto ">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" style="font-family: 华文行楷;font-size: 25px">关于我们</a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#" style="font-family: 华文行楷;font-size: 25px">联系我们</a> <a class="dropdown-item" href="#" style="font-family: 华文行楷;font-size: 25px">提出建议</a>
                            <div class="dropdown-divider">
                            </div> <a class="dropdown-item" href="#" style="font-family: 华文行楷;font-size: 25px">制作者名单</a>
                        </div>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h1 class="text-center" style="margin-top: 250px;color: #ececf6;font-size:100px;font-family: 华文行楷;">
                逍&nbsp;遥&nbsp;游<small style="font-family: AMAZR">Easy Travel</small>
                <p style="font-family: AMAZR;font-size: 50px">A Simple Travel Website</p>
            </h1>
            <hr>
            <button type="button" class="btn btn-default" style="margin-left: 700px;background-color: transparent;color: #ececf6;border-color: #ececf6;font-size: 40px;font-family: 华文行楷" data-toggle="modal" data-target="#login">登录</button>
            &nbsp;
            <button type="button" class="btn btn-default" style="margin-left: 270px;background-color: transparent;color: #ececf6;border-color: #ececf6;font-size: 40px;font-family: 华文行楷" data-toggle="modal" data-target="#register">注册</button>

            <!-- 登录模态框 -->
            <div class="modal fade" id="login">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">

                        <!-- 模态框头部 -->
                        <div class="modal-header">
                            <h4 class="modal-title">登录</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- 模态框主体 -->
                        <form action="${pageContext.request.contextPath}/loginCheck" method="post">
                            <div class="modal-body">

                                <div class="form-group row">
                                    <label for="username" class="col-4 col-form-label">用户名</label>
                                    <div class="col-8">
                                        <input id="username" name="account" type="text" required="required" class="form-control">
                                    </div>
                                    <br>
                                    <br>
                                    <label for="password" class="col-4 col-form-label">密&nbsp;&nbsp;&nbsp;码</label>
                                    <div class="col-8">
                                        <input id="password" name="password" type="password" required="required" class="form-control">
                                    </div>
                                </div>

                            </div>

                            <!-- 模态框底部 -->
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-secondary" id="loginbutton" onclick="return loginCheck(this.form)">登录</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>

            <!-- 注册模态框 -->
            <div class="modal fade" id="register">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">

                        <!-- 模态框头部 -->
                        <div class="modal-header">
                            <h4 class="modal-title">注册</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- 模态框主体 -->
                        <form action="${pageContext.request.contextPath}/userRegister" method="post">
                            <div class="modal-body">

                                <div class="form-group row">
                                    <label for="newUsername" class="col-4 col-form-label" id="checkNewUsername">用户名</label>
                                    <div class="col-8">
                                        <input id="newUsername" name="newUsername" type="text" required="required" class="form-control">
                                    </div>
                                    <br>
                                    <br>
                                    <label for="newPassword" class="col-4 col-form-label" id="checkNewPassword">密&nbsp;&nbsp;&nbsp;码</label>
                                    <div class="col-8">
                                        <input id="newPassword" name="newPassword" type="password" required="required" class="form-control">
                                    </div>
                                    <br>
                                    <br>
                                    <label for="rNewPassword" class="col-4 col-form-label" id="checkRNewPassword">确认密码</label>
                                    <div class="col-8">
                                        <input id="rNewPassword" name="rNewPassword" type="password" required="required" class="form-control">
                                    </div>
                                    <br>
                                    <br>
                                    <label for="phoneNumber" class="col-4 col-form-label" id="checkPhoneNumber">手机号码</label>
                                    <div class="col-8">
                                        <input id="phoneNumber" name="phoneNumber" type="text" required="required" class="form-control">
                                    </div>
                                    <br>

                                    <br>
                                    <label for="email" class="col-4 col-form-label">邮箱地址</label>
                                    <div class="col-8">
                                        <input id="email" name="email" type="email" required="required" class="form-control">
                                    </div>
                                </div>

                            </div>

                            <!-- 模态框底部 -->
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-secondary" onclick="return registerCheck(this.form)">注册</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>