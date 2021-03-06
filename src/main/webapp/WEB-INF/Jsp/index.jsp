<%--
  Created by IntelliJ IDEA.
  User: Cheng
  Date: 2019/6/17
  Time: 8:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>逍遥游</title>
    <!--lunbo-->
    <link rel="stylesheet" type="text/css" href="static/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="static/css/default.css">
    <link rel="stylesheet" href="static/css/main.css">
    <link rel="stylesheet" href="static/css/pogo-slider.min.css">
    <!--导航栏布局框架-->
    <link rel="stylesheet" href="static/bootstrap4/css/bootstrap.css">
    <script src="static/bootstrap4/js/bootstrap.js"></script>
    <!--搜索框-->
    <script src="static/js/search-js/jquery-1.8.2.min.js"></script>
    <script src="static/js/search-js/common.js"></script>
    <link rel="stylesheet" href="static/css/search.css">
    <!--mainDirect -->
    <link rel="stylesheet" href="static/css/mainDirect.css">
    <!--title-->
    <link rel="stylesheet" href="static/css/mainborder.css">
    <!--logo-->
    <link rel="stylesheet" href="static/css/logo.css">

</head>
<body >

<div class="container-fluid" >
    <div class="row" >
        <div class="col-md-12"  >
            <div class="row"  >
                <!-- language-->	<div class="col-md-6">
            </div>
                <div class="col-md-6" id="mianDirect">
                    <div id="nav">
                        <ul>
                            <li><a>你好,${sessionScope.user.nickname}</a></li>
                            <li><a>免费注册</a></li>
                            <li><a>客服中心</a></li>
                            <li><a>我的逍遥游</a>
                                <ul>
                                    <li><a>我的钱包</a></li>
                                    <li><a>我的优惠卷</a></li>
                                    <li><a>我的收藏</a></li>
                                </ul>
                            </li>
                            <li><a>我的订单</a>
                                <ul>
                                    <li><a>旅游订单</a></li>
                                    <li><a>酒店订单</a></li>
                                    <li><a>机票订单</a></li>
                                    <li><a>火车票订单</a></li>
                                    <li><a>全部订单</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="main-border" >
</div>
<div id="logo">
    <img src="static/img/logo/logo.jpg" height="150" width="200" />
</div>
<div class="htmleaf-container">
    <header class="htmleaf-header">
        <!--搜索框-->
        <div style="width:530px;margin:0 auto;">
            <div class="search_box">
                <span class="left l_bg"></span>
                <span class="right r_bg"></span>
                <div class="search">
                    <form action="${pageContext.request.contextPath}/toSearch" method="post">
                        <div id="pt1" class="select">
                            <a id="s0">城市</a>
                            <div style="display:none;" id="pt2" class="part">
                                <p>
                                    <a id="s1">北京</a>
                                    <a id="s2">上海</a>
                                    <a id="s3">深圳</a>
                                    <a id="s4">广州</a>
                                    <a id="s5">苏州</a>
                                    <a id="s6">杭州</a>
                                    <a id="s7">武汉</a>
                                    <a id="s8">成都</a>
                                    <a id="s9">重庆</a>
                                    <a id="s10">昆明</a>
                                    <a id="s11">南京</a>
                                    <a id="s12">西安</a>
                                </p>
                            </div>
                        </div>
                        <input id="catid" name="catid" type="hidden" value="7">
                        <input class="enter" name="name">
                        <input class="sb" name="Input" type="submit" value="">
                    </form>
                </div>
            </div>
        </div>
    </header>
    <div class="container">
        <div class="pogoSlider" id="js-main-slider">
            <div class="pogoSlider-slide" data-transition="slideOverLeft" data-duration="1000"  style="background-image:url(/static/img/lunbo-img/上海.jpg);"></div>
            <div class="pogoSlider-slide " data-transition="fold" data-duration="1000"  style="background-image:url(/static/img/lunbo-img/武汉东湖.jpg);"></div>
            <div class="pogoSlider-slide " data-transition="shrinkReveal" data-duration="1000"  style="background-image:url(/static/img/lunbo-img/三亚.jpg);"></div>
        </div><!-- .pogoSlider -->

        <div class="demos" id="demos" style="margin-left:30px; ">

            <div class="slideDemos clearfix">

                <div class="grid12 small12">

                    <h2 class="sectionHeading">热门景点</h2>

                </div>

                <div class="row fl">

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo1">

                            <div class="pogoSlider-slide" style="background-image: url(/static/img/photo/北京故宫.jpg);">
                                <h3 class="pogoSlider-slide-element">北京故宫</h3>
                            </div>
                            <div class="pogoSlider-slide" style="background-image: url(/static/img/photo/北京天安门.jpg);">
                                <h3 class="pogoSlider-slide-element">北京天安门</h3>
                            </div>
                            <div class="pogoSlider-slide" style="background-image: url(/static/img/photo/北京颐和园.jpg)">
                                <h3 class="pogoSlider-slide-element">北京颐和园</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider " id="demo2">

                            <div class="pogoSlider-slide" data-transition="blocksReveal" style="background-image: url(/static/img/photo/上海陆家嘴.jpg);">
                                <h3 class="pogoSlider-slide-element">上海陆家嘴</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="blocksReveal" style="background-image: url(/static/img/photo/上海外滩.jpg);">
                                <h3 class="pogoSlider-slide-element">上海外滩l</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="blocksReveal" style="background-image: url(/static/img/photo/上海迪士尼.jpg);">
                                <h3 class="pogoSlider-slide-element">上海迪士尼</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo3">

                            <div class="pogoSlider-slide" data-transition="verticalSplitReveal" style="background-image: url(/static/img/photo/广州小蛮腰.jpg);">
                                <h3 class="pogoSlider-slide-element">广州小蛮腰</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="verticalSplitReveal" style="background-image: url(/static/img/photo/广州大丰门景区.jpg);">
                                <h3 class="pogoSlider-slide-element">广州大丰门景区</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="verticalSplitReveal" style="background-image: url(/static/img/photo/广州白云山景区.jpg)">
                                <h3 class="pogoSlider-slide-element">广州白云山景区</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo4">

                            <div class="pogoSlider-slide" data-transition="zipReveal" style="background-image: url(/static/img/photo/深圳世界之窗.jpg);">
                                <h3 class="pogoSlider-slide-element">深圳世界之窗</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="zipReveal" style="background-image: url(/static/img/photo/深圳大小梅沙.jpg);">
                                <h3 class="pogoSlider-slide-element">深圳大小梅沙</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="zipReveal" style="background-image: url(/static/img/photo/深圳华侨城.jpg)">
                                <h3 class="pogoSlider-slide-element">深圳华侨城</h3>
                            </div>

                        </div>

                    </div>

                </div><!-- .row -->

                <div class="row fl">

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo5">

                            <div class="pogoSlider-slide" data-transition="shrinkReveal" style="background-image: url(/static/img/photo/南京夫子庙.jpg);">
                                <h3 class="pogoSlider-slide-element">南京夫子庙</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="shrinkReveal" style="background-image: url(/static/img/photo/南京中山陵.jpg);">
                                <h3 class="pogoSlider-slide-element">南京中山陵</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="shrinkReveal" style="background-image: url(/static/img/photo/南京玄武湖.jpg)">
                                <h3 class="pogoSlider-slide-element">南京玄武湖</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single" id="demo2">

                        <div class="pogoSlider" id="demo6">

                            <div class="pogoSlider-slide" data-transition="expandReveal" style="background-image: url(/static/img/photo/成都熊猫基地.jpg);">
                                <h3 class="pogoSlider-slide-element">成都熊猫基地</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="expandReveal" style="background-image: url(/static/img/photo/成都太古.jpg);">
                                <h3 class="pogoSlider-slide-element">成都太古</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="expandReveal" style="background-image: url(/static/img/photo/成都青山城.jpg)">
                                <h3 class="pogoSlider-slide-element">成都青山城</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo7">

                            <div class="pogoSlider-slide" data-transition="fold" style="background-image: url(/static/img/photo/重庆CBD雾景.jpg);">
                                <h3 class="pogoSlider-slide-element">重庆CBD雾景</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="fold" style="background-image: url(/static/img/photo/重庆万州大瀑布.jpg);">
                                <h3 class="pogoSlider-slide-element">重庆万州大瀑布</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="fold" style="background-image: url(/static/img/photo/重庆洪崖洞.jpg)">
                                <h3 class="pogoSlider-slide-element">重庆洪崖洞</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo8">

                            <div class="pogoSlider-slide" data-transition="verticalSlide" style="background-image: url(/static/img/photo/三亚.jpg);">
                                <h3 class="pogoSlider-slide-element">三亚</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="verticalSlide" style="background-image: url(/static/img/photo/三亚凤凰岛.jpg);">
                                <h3 class="pogoSlider-slide-element">三亚凤凰岛</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="verticalSlide" style="background-image: url(/static/img/photo/三亚南海观音.jpg)">
                                <h3 class="pogoSlider-slide-element">三亚南海观音</h3>
                            </div>

                        </div>

                    </div>

                </div><!-- .row -->

                <div class="row fl">

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo9">

                            <div class="pogoSlider-slide" data-transition="fade" style="background-image: url(/ static/img/photo/西安.jpg);">
                                <h3 class="pogoSlider-slide-element">西安</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="fade" style="background-image: url(/static/img/photo/西安商业街.jpg);">
                                <h3 class="pogoSlider-slide-element">西安商业街</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="fade" style="background-image: url(/static/img/photo/西安大雁塔.jpg)">
                                <h3 class="pogoSlider-slide-element">西安大雁塔</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo10">

                            <div class="pogoSlider-slide" data-transition="slideRevealLeft" style="background-image: url(/static/img/photo/武汉黄鹤楼.jpg);">
                                <h3 class="pogoSlider-slide-element">武汉黄鹤楼</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="slideRevealLeft" style="background-image: url(/static/img/photo/武汉东湖.jpg);">
                                <h3 class="pogoSlider-slide-element">武汉东湖</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="slideRevealLeft" style="background-image: url(/static/img/photo/武汉长江大桥.jpg)">
                                <h3 class="pogoSlider-slide-element">武汉长江大桥</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo11">

                            <div class="pogoSlider-slide" data-transition="slideOverLeft" style="background-image: url(/static/img/photo/苏州园林.jpg);">
                                <h3 class="pogoSlider-slide-element">苏州园林</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="slideOverLeft" style="background-image: url(/static/img/photo/苏州太湖景区.jpg);">
                                <h3 class="pogoSlider-slide-element">苏州太湖景区</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="slideOverLeft" style="background-image: url(/static/img/photo/苏州常熟虞山公园.jpg)">
                                <h3 class="pogoSlider-slide-element">苏州常熟虞山公园</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo12">

                            <div class="pogoSlider-slide" data-transition="barRevealDown" style="background-image: url(/static/img/photo/昆明滇池.jpg);">
                                <h3 class="pogoSlider-slide-element">昆明滇池</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="barRevealDown" style="background-image: url(/static/img/photo/昆明南屏街.jpg);">
                                <h3 class="pogoSlider-slide-element">昆明南屏街</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="barRevealDown" style="background-image: url(/static/img/photo/昆明西山公园.jpg)">
                                <h3 class="pogoSlider-slide-element">昆明西山公园</h3>
                            </div>

                        </div>

                    </div>

                </div><!-- row -->

            </div><!-- slideDemos -->

        </div><!-- demos -->

    </div><!-- .container -->
    <div class="related">

    </div>
</div>
<script src="static/js/vendor/jquery-1.11.1.min.js"></script>
<script src="static/js/lunbo/jquery.pogo-slider.min.js"></script>
<script src="static/js/lunbo/main.js"></script>

</body>
</html>