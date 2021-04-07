<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>香水之家</title>
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/sort.js"></script>
    <script src="${pageContext.request.contextPath}/js/holder.js"></script>

    <script>

    </script>
</head>
<body>
<div id="main" class="container">

    <div id="header">
        <%@ include file="header.jsp" %>

        <!-- 旋转图 -->
        <div class="header-bottom">
            <div class="sort">
                <div class="sort-channel">
                    <ul class="sort-channel-list list-group">
                        <li class="list-group-item"><a href="${pageContext.request.contextPath}/category?cate=香奈儿">香奈儿</a>
                            <div class="sort-detail">
                                <dl class="dl-hor">
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=邂逅">邂逅系列</a>
                                    </dt>
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=蔚蓝">蔚蓝男士系列</a>
                                    </dt>
                                </dl>
                                <dl class="dl-hor">
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=五号">五号香水系列</a>
                                    </dt>
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=可可小姐">可可小姐香水系列</a>
                                    </dt>
                                </dl>

                                <dl class="dl-hor">
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=嘉柏丽尔">香奈儿嘉柏丽尔香水系列</a>
                                    </dt>
                                </dl>
                            </div>
                        </li>
                        <li class="list-group-item"><a href="${pageContext.request.contextPath}/category?cate=迪奥">迪奥</a>
                            <div class="sort-detail">
                                <dl class="dl-hor">
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=真我">真我香水系列</a>
                                    </dt>
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=芭伊颂">芭伊颂系列</a>
                                    </dt>
                                </dl>
                                <dl class="dl-hor">
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=旷野男士">旷野男士香水系列</a>
                                    </dt>
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=迪奥魅惑">迪奥魅惑香水系列</a>
                                    </dt>
                                </dl>
                                <dl class="dl-hor">
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=永恒的爱">永恒的爱香水系列</a>
                                    </dt>

                                </dl>

                            </div>
                        </li>
                        <li class="list-group-item"><a href="${pageContext.request.contextPath}/category?cate=纪梵希">纪梵希</a>
                            <div class="sort-detail">
                                <dl class="dl-hor">
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=女士">女士系列</a>
                                    </dt>
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=男士">男士系列</a>
                                    </dt>
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=男士">通用</a>
                                    </dt>

                                </dl>

                            </div>
                        </li>
                        <li class="list-group-item"><a href="${pageContext.request.contextPath}/category?cate=古驰">古驰</a>
                            <div class="sort-detail">
                                <dl class="dl-hor">
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=古驰炼金士">古驰炼金士系列</a>
                                    </dt>
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=花悦">花悦系列</a>
                                    </dt>
                                </dl>
                                <dl class="dl-hor">
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=Gucci Flora">Gucci Flora系列</a>
                                    </dt>

                                </dl>

                            </div>
                        </li>
                        <li class="list-group-item"><a href="${pageContext.request.contextPath}/category?cate=宝格丽">宝格丽</a>
                            <div class="sort-detail">
                                <dl class="dl-hor">
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=女士">女士系列</a>
                                    </dt>
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=男士">男士系列</a>
                                    </dt>
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=男士">通用</a>
                                    </dt>

                                </dl>
                            </div>
                        </li>
                        <li class="list-group-item"><a href="${pageContext.request.contextPath}/category?cate=圣罗兰">圣罗兰</a>
                            <div class="sort-detail">
                                <dl class="dl-hor">
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=女士">女士系列</a>
                                    </dt>
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=男士">男士系列</a>
                                    </dt>
                                    <dt>
                                        <a href="${pageContext.request.contextPath}/category?cate=男士">通用</a>
                                    </dt>

                                </dl>
                            </div>
                        </li>
                        <li class="list-group-item"><a href="${pageContext.request.contextPath}/category?cate=雅诗兰黛">其他</a>
                             <div class="sort-detail">
                                 <dl class="dl-hor">
                                     <dt>
                                         <a href="${pageContext.request.contextPath}/category?cate=女士">女士系列</a>
                                     </dt>
                                     <dt>
                                         <a href="${pageContext.request.contextPath}/category?cate=男士">男士系列</a>
                                     </dt>
                                     <dt>
                                         <a href="${pageContext.request.contextPath}/category?cate=男士">通用</a>
                                     </dt>

                                 </dl>
                        </div>
                         </li>
                    </ul>
                </div>

            </div>
            <div id="mycarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="${pageContext.request.contextPath}/image/3.jpg" alt="">
                    </div>

                    <div class="item">
                        <img src="${pageContext.request.contextPath}/image/4.jpg" alt="">
                    </div>
                    <div class="item">
                        <img src="${pageContext.request.contextPath}/image/5.jpg" alt="">
                    </div>
                  <%--  <div class="item">
                        <img src="${pageContext.request.contextPath}/image/6.jpg" alt="">
                    </div>--%>
                </div>

                <ol class="carousel-indicators">
                    <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#mycarousel" data-slide-to="1"></li>
                    <li data-target="#mycarousel" data-slide-to="2"></li>
                   <%-- <li data-target="#mycarousel" data-slide-to="3"></li>--%>
                </ol>

                <a class="left carousel-control" href="#mycarousel" role="button"
                   data-slide="prev" style="display: none;"> <span
                        class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a> <a class="right carousel-control" href="#mycarousel" role="button"
                        data-slide="next" style="display: none;"> <span
                    class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
            </div>
            <div class="clear-float"></div>
        </div>
    </div>
    <div class="content">

        <c:if test="${!empty chanelGoods}">
            <div class="module">
                <div class="hd">
                    <h2>香奈儿</h2>
                    <hr>
                </div>

                <div class="bd">
                    <div class="data">
                        <ul>
                            <c:forEach items="${chanelGoods}" var="goods">
                                    <li class="data-item-li">
                                        <div class="to-big" style="border: #a8a8a8 1px solid;">
                                            <a href="${pageContext.request.contextPath}/detail?goodsid=${goods.goodsid}" >
                                                <img src="${pageContext.request.contextPath}/pictures/${goods.imagePaths[0].path}" alt=""
                                                                                                                               width="190" height="190"/>
                                            </a>
                                        </div>
                                        <div style="width: 190px;height: auto;">
                                            <p class="text-right" >
                                                <a href="${pageContext.request.contextPath}/detail?goodsid=${goods.goodsid}">${goods.goodsname}</a>
                                            </p>
                                        </div>

                                        <div class="text-right">
                                            <b>￥${goods.price}</b>
                                        </div>
                                        <div>
                                            <c:if test="${goods.fav}">
                                                <button
                                                        class="like-button glyphicon glyphicon-heart btn btn-default"
                                                        data-id="${goods.goodsid}"
                                                        style="display: none;"></button>
                                            </c:if>
                                            <c:if test="${!goods.fav}">
                                                <button
                                                        class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                                                        data-id="${goods.goodsid}"
                                                        style="display: none;"></button>
                                            </c:if>
                                            <!-- <button class="like-button1 glyphicon glyphicon-heart-empty btn btn-default "></button> -->
                                        </div>
                                    </li>
                            </c:forEach>


                            <div class="clear-float" style="clear: both;"></div>
                        </ul>
                    </div>
                </div>
            </div>
        </c:if>

        <c:if test="${!empty diorGoods}">
            <div class="module">
                <div class="hd">
                    <h2>迪奥</h2>
                    <hr>
                </div>

                <div class="bd">
                    <div class="data">
                        <ul>
                            <c:forEach items="${diorGoods}" var="diorGoods">
                                <li class="data-item-li">
                                    <div class="to-big">
                                        <a href="${pageContext.request.contextPath}/detail?goodsid=${diorGoods.goodsid}"> <img
                                                src="${pageContext.request.contextPath}/pictures/${diorGoods.imagePaths[0].path}" alt=""
                                                width="190" height="190">
                                        </a>
                                    </div>
                                    <div style="width: 190px;height: auto;">
                                        <p class="text-right">
                                            <a href="${pageContext.request.contextPath}/detail?goodsid=${diorGoods.goodsid}">${diorGoods.goodsname}</a>
                                        </p>
                                    </div>
                                    <div class="text-right">
                                        <b>￥${diorGoods.price}</b>
                                    </div>
                                    <div>
                                        <c:if test="${diorGoods.fav}">
                                            <button
                                                    class="like-button glyphicon glyphicon-heart btn btn-default"
                                                    data-id="${diorGoods.goodsid}"
                                                    style="display: none;"></button>
                                        </c:if>
                                        <c:if test="${!diorGoods.fav}">
                                            <button
                                                    class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                                                    data-id="${diorGoods.goodsid}"
                                                    style="display: none;"></button>
                                        </c:if>
                                        <!-- <button class="like-button1 glyphicon glyphicon-heart-empty btn btn-default "></button> -->
                                    </div>
                                </li>
                            </c:forEach>

                            <div class="clear-float" style="clear: both;"></div>
                        </ul>

                    </div>
                </div>
            </div>
        </c:if>

        <c:if test="${!empty colGoods}">
            <div class="module">
                <div class="hd">
                    <h2>纪梵希</h2>
                    <hr>
                </div>

                <div class="bd">
                    <div class="data">
                        <ul>
                            <c:forEach items="${colGoods}" var="colgoods">
                                <li class="data-item-li">
                                    <div class="to-big">
                                        <a href="${pageContext.request.contextPath}/detail?goodsid=${colgoods.goodsid}"> <img
                                                src="${pageContext.request.contextPath}/pictures/${colgoods.imagePaths[0].path}" alt=""
                                                width="190" height="190">
                                        </a>
                                    </div>
                                    <div style="width: 190px;height: auto;">
                                        <p class="text-right">
                                            <a href="${pageContext.request.contextPath}/detail?goodsid=${colgoods.goodsid}">${colgoods.goodsname}</a>
                                        </p>
                                    </div>
                                    <div class="text-right">
                                        <b>￥${colgoods.price}</b>
                                    </div>
                                    <div>
                                        <c:if test="${colgoods.fav}">
                                            <button
                                                    class="like-button glyphicon glyphicon-heart btn btn-default"
                                                    data-id="${colgoods.goodsid}"
                                                    style="display: none;"></button>
                                        </c:if>
                                        <c:if test="${!colgoods.fav}">
                                            <button
                                                    class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                                                    data-id="${colgoods.goodsid}"
                                                    style="display: none;"></button>
                                        </c:if>
                                        <!-- <button class="like-button1 glyphicon glyphicon-heart-empty btn btn-default "></button> -->
                                    </div>
                                </li>
                            </c:forEach>

                            <div class="clear-float" style="clear: both;"></div>
                        </ul>
                    </div>
                </div>
            </div>
        </c:if>

        <c:if test="${!empty bookGoods}">
            <div class="module">
                <div class="hd">
                    <h2>古驰</h2>
                    <hr>
                </div>

                <div class="bd">
                    <div class="data">
                        <ul>
                            <c:forEach items="${bookGoods}" var="bookgoods">
                                <li class="data-item-li">
                                    <div class="to-big">
                                        <a href="${pageContext.request.contextPath}/detail?goodsid=${bookgoods.goodsid}"> <img
                                                src="${pageContext.request.contextPath}/pictures/${bookgoods.imagePaths[0].path}" alt=""
                                                width="190" height="190">
                                        </a>
                                    </div>
                                    <div style="width: 190px;height: auto;">
                                        <p class="text-right">
                                            <a href="${pageContext.request.contextPath}/detail?goodsid=${bookgoods.goodsid}">${bookgoods.goodsname}</a>
                                        </p>
                                    </div>
                                    <div class="text-right">
                                        <b>￥${bookgoods.price}</b>
                                    </div>
                                    <div>
                                        <c:if test="${bookgoods.fav}">
                                            <button
                                                    class="like-button glyphicon glyphicon-heart btn btn-default"
                                                    data-id="${bookgoods.goodsid}"
                                                    style="display: none;"></button>
                                        </c:if>
                                        <c:if test="${!bookgoods.fav}">
                                            <button
                                                    class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                                                    data-id="${bookgoods.goodsid}"
                                                    style="display: none;"></button>
                                        </c:if>
                                        <!-- <button class="like-button1 glyphicon glyphicon-heart-empty btn btn-default "></button> -->
                                    </div>
                                </li>
                            </c:forEach>

                            <div class="clear-float" style="clear: both;"></div>
                        </ul>
                    </div>
                </div>
            </div>
        </c:if>

        <c:if test="${!empty bvlgariGoods}">
            <div class="module">
                <div class="hd">
                    <h2>宝格丽</h2>
                    <hr>
                </div>

                <div class="bd">
                    <div class="data">
                        <ul>
                            <c:forEach items="${bvlgariGoods}" var="bvlgariGoods">
                                <li class="data-item-li">
                                    <div class="to-big">
                                        <a href="${pageContext.request.contextPath}/detail?goodsid=${bvlgariGoods.goodsid}"> <img
                                                src="${pageContext.request.contextPath}/pictures/${bvlgariGoods.imagePaths[0].path}" alt=""
                                                width="190" height="190">
                                        </a>
                                    </div>
                                    <div style="width: 190px;height: auto;">
                                        <p class="text-right">
                                            <a href="${pageContext.request.contextPath}/detail?goodsid=${bvlgariGoods.goodsid}">${bvlgariGoods.goodsname}</a>
                                        </p>
                                    </div>
                                    <div class="text-right">
                                        <b>￥${bvlgariGoods.price}</b>
                                    </div>
                                    <div>
                                        <c:if test="${bvlgariGoods.fav}">
                                            <button
                                                    class="like-button glyphicon glyphicon-heart btn btn-default"
                                                    data-id="${bvlgariGoods.goodsid}"
                                                    style="display: none;"></button>
                                        </c:if>
                                        <c:if test="${!bvlgariGoods.fav}">
                                            <button
                                                    class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                                                    data-id="${bvlgariGoods.goodsid}"
                                                    style="display: none;"></button>
                                        </c:if>
                                        <!-- <button class="like-button1 glyphicon glyphicon-heart-empty btn btn-default "></button> -->
                                    </div>
                                </li>
                            </c:forEach>

                            <div class="clear-float" style="clear: both;"></div>
                        </ul>
                    </div>
                </div>
            </div>
        </c:if>

        <c:if test="${!empty yslGoods}">
            <div class="module">
                <div class="hd">
                    <h2>宝格丽</h2>
                    <hr>
                </div>

                <div class="bd">
                    <div class="data">
                        <ul>
                            <c:forEach items="${yslGoods}" var="yslGoods">
                                <li class="data-item-li">
                                    <div class="to-big">
                                        <a href="${pageContext.request.contextPath}/detail?goodsid=${yslGoods.goodsid}"> <img
                                                src="${pageContext.request.contextPath}/pictures/${yslGoods.imagePaths[0].path}" alt=""
                                                width="190" height="190">
                                        </a>
                                    </div>
                                    <div style="width: 190px;height: auto;">
                                        <p class="text-right">
                                            <a href="${pageContext.request.contextPath}/detail?goodsid=${yslGoods.goodsid}">${yslGoods.goodsname}</a>
                                        </p>
                                    </div>
                                    <div class="text-right">
                                        <b>￥${yslGoods.price}</b>
                                    </div>
                                    <div>
                                        <c:if test="${yslGoods.fav}">
                                            <button
                                                    class="like-button glyphicon glyphicon-heart btn btn-default"
                                                    data-id="${yslGoods.goodsid}"
                                                    style="display: none;"></button>
                                        </c:if>
                                        <c:if test="${!yslGoods.fav}">
                                            <button
                                                    class="like-button glyphicon glyphicon-heart-empty btn btn-default"
                                                    data-id="${yslGoods.goodsid}"
                                                    style="display: none;"></button>
                                        </c:if>
                                        <!-- <button class="like-button1 glyphicon glyphicon-heart-empty btn btn-default "></button> -->
                                    </div>
                                </li>
                            </c:forEach>

                            <div class="clear-float" style="clear: both;"></div>
                        </ul>
                    </div>
                </div>
            </div>
        </c:if>
    </div>
</div>
</body>
</html>


