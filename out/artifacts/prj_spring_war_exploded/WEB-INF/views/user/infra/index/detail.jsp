<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>dodomall_detail</title>

    <!-- 구글 폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
            href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
            rel="stylesheet"
    />

    <!-- 폰트어썸 -->
    <script
            src="https://kit.fontawesome.com/df1b18aebb.js"
            crossorigin="anonymous"
    ></script>

    <!-- 부트스트렙 -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
            crossorigin="anonymous"
    />
    <!-- 리셋 css -->
    <link rel="stylesheet" href="resetcss.css" />

    <!-- 메인 css -->
    <link rel="stylesheet" href="style.css" />

    <!-- 쿼리 -->
    <script src="jquery.min.js"></script>
    <!-- 메인 js -->
    <script src="shop.js"></script>
</head>
<body>
<%@ include file="header.jsp" %>
<style>
    .layout_frame {
        padding: 30px 0px;
    }
    .layout_frame .layout_frame_inner {
        position: relative;
        width: 1200px;
        margin: 0px auto;
        padding-bottom: 0px;
    }
    .layout_noframe .layout_frame_inner {
        padding-bottom: 60px;
    }
</style>
<div class="layout_frame" style="background: #fff">
    <div class="layout_frame_inner">
        <style>
            .hide {
                display: none;
            }

            /* 관련상품 */
            .sam_item_list .thmb img {
                width: 100%;
                border: 1px solid #f0f2f5;
            }
            .sam_item_list .detail {
                margin-top: 5px;
            }
            .sam_item_list .detail .subject {
                display: block;
                font-weight: normal;
                font-size: 12px;
                line-height: 16px;
                color: #464646;
                width: 164px;
                letter-spacing: 0;
                text-overflow: ellipsis;
                overflow: hidden;
                white-space: nowrap;
            }

            .sam_item_list .detail .price1 {
                text-decoration: line-through;
                color: #999;
                font-size: 11px;
            }
            .sam_item_list .detail .price1 em {
                font-family: Verdana;
                font-weight: bold;
            }

            .sam_item_list .detail .price2 {
                color: #ff3300;
                font-size: 11px;
            }
            .sam_item_list .detail .price2 em {
                font-family: Verdana;
                font-weight: bold;
            }

            .sub_item_wrap {
                background: #fff;
                padding: 0px;
                margin-bottom: 50px;
            }
            .sub_item_wrap .item_thum {
                float: left;
                position: relative;
                text-align: center;
            }
            .sub_item_wrap .item_thum .thum {
                width: 550px;
                height: 550px;
            }
            .sub_item_wrap .item_thum .thum img {
                width: 100%;
            }
            /* 상품대표이미지 */
            #it_img {
                display: block;
                width: 550px;
                height: 550px;
            }
            #it_img img {
                width: 100%;
            }

            /* 상품기타이미지 */
            .it_img_thumb {
                margin: 0px;
                padding: 0px;
                display: block;
                margin-top: 10px;
            }
            .it_img_thumb li {
                margin: 0px;
                padding: 0px;
                display: inline;
            }
            .it_img_s {
                width: 80px;
                height: 80px;
                cursor: pointer;
                border: solid 2px #eeeeee;
            }
            .it_img_s_on {
                border: solid 2px #d32f2f;
            }
            .sub_item_wrap .item_info {
                float: right;
                position: relative;
                display: block;
                width: 580px;
                min-height: 544px;
            }
            .sub_item_wrap .item_info:after {
                content: "";
                display: block;
                clear: both;
            }
            .sub_item_wrap .item_info .ct_wrp {
                min-height: 22px;
                padding-top: 0;
                padding-bottom: 15px;
                padding-left: 0;
                border-bottom: 1px solid #e3e5e8;
                position: relative;
            }
            .sub_item_wrap .item_info .ct_wrp .sns_share_btn {
                cursor: pointer;
                position: absolute;
                top: 5px;
                right: 0;
                font-size: 13px;
            }
            .sub_item_wrap .item_info .ct_wrp .sns_share_btn i {
                display: inline-block;
                width: 15px;
                height: 18px;
                margin: 0px 4px 0 0;
                background: url(../../../../../resources/img/sns_gong.png) no-repeat;
                vertical-align: top;
            }

            .sns_share_popup {
                display: none;
                position: absolute;
                top: 35px;
                right: 0px;
                width: 206px;
                height: 150px;
                z-index: 1000;
                border: solid 1px #ccc;
                background-color: #fff;
                z-index: 99999;
            }
            .sns_share_popup .lay_tit {
                height: 38px;
                padding: 0 15px;
                border-bottom: 1px solid #dadada;
                font-size: 14px;
                font-weight: normal;
                color: #333;
                line-height: 34px;
            }
            .sns_share_popup .lay_conts {
                padding: 15px 0 10px;
                font-size: 14px;
                line-height: 1.6;
                color: #666;
            }
            .sns_share_popup .lay_conts .sns_type {
                overflow: hidden;
                padding: 0 0 15px 0px;
            }
            .sns_share_popup .lay_conts .sns_type li {
                float: left;
                margin-left: 15px;
            }
            .sns_share_popup .lay_conts .sns_type .facebook {
                display: block;
                width: 33px;
                height: 32px;
                background: url("skin/demo/img/sns_face.png") no-repeat;
            }
            .sns_share_popup .lay_conts .sns_type .twitter {
                display: block;
                width: 33px;
                height: 32px;
                background: url("skin/demo/img/sns_twee.png") no-repeat;
            }
            .sns_share_popup .lay_conts .sns_type .kakao {
                display: block;
                width: 33px;
                height: 32px;
                background: url("skin/demo/img/sns_kaka.png") no-repeat;
            }
            .sns_share_popup .lay_conts .sns_type .naver {
                display: block;
                width: 33px;
                height: 32px;
                background: url("skin/demo/img/sns_naver.png") no-repeat;
            }

            .sns_share_popup .sns_url {
                padding: 10px 15px 0;
                border-top: 1px solid #dadada;
            }
            .sns_share_popup .sns_url input[type="text"] {
                width: 124px;
                padding: 3px 4px 0;
                padding-top: 5px;
                height: 25px;
                padding-bottom: 2px;
                color: #666;
                font-size: 12px;
                border: 1px solid #dadada;
                border-right: 0;
                line-height: 25px;
                vertical-align: middle;
            }
            .sns_share_popup .sns_url a.copy_btn {
                display: inline-block;
                width: 41px;
                height: 23px;
                border: 1px solid #555;
                background-color: #555;
                font-size: 12px;
                line-height: 20px;
                color: #fff;
                text-align: center;
                vertical-align: middle;
            }
            #sns_share_popup_close_btn {
                display: block;
                position: absolute;
                right: 4px;
                top: 5px;
                width: 24px;
                height: 24px;
                border: none;
                cursor: pointer;
                background: url("skin/demo/img/close_btn_sns.png") no-repeat;
            }

            .sub_item_wrap .item_info .ct_wrp span.del {
                border: solid 1px #a54211;
                color: #a54211;
                display: inline-block;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                height: 22px;
                padding: 0 6px;
                background-color: #fff;
                font-size: 11px;
                font-family: "돋움", dotum, "Apple SD Gothic Neo", sans-serif;
                line-height: 22px;
                letter-spacing: -0.3px;
            }
            .sub_item_wrap .item_info .ct_wrp span.card_benefit {
                cursor: pointer;
                color: #8d9ebd;
                border: 1px solid #8d9ebd;
            }
            .sub_item_wrap:after {
                content: "";
                display: block;
                clear: both;
            }
            .sub_item_wrap .pro_title {
                padding: 24px 0 12px;
                border-bottom: 0;
            }
            .sub_item_wrap .pro_title .itdes {
                display: block;
                padding: 0 0 8px 0;
                font-size: 16px;
                line-height: 1.5;
                color: #7d7e80;
            }
            .sub_item_wrap .pro_title .itname {
                font-weight: 400;
                font-size: 30px;
                line-height: 1.27;
                letter-spacing: -0.6px;
                word-wrap: break-word;
                word-break: keep-all;
                font-family: "NanumGothicBold", Sans-serif;
                font-weight: normal;
            }
            .sub_item_wrap .p_info {
                position: relative;
                padding: 14px 0 14px 120px;
                border-bottom: 1px solid #f0f2f5;
            }
            .sub_item_wrap .p_info:after {
                display: block;
                clear: both;
                content: "";
            }
            .sub_item_wrap .p_info .tit_align_left {
                position: absolute;
                top: 14px;
                left: 0;
                line-height: 26px;
                font-weight: 400;
                font-size: 14px;
                color: #16181a;
            }
            .sub_item_wrap .p_info .ct {
                position: relative;
                font-size: 14px;
                line-height: 26px;
                color: #7d7e80;
            }
            .sub_item_wrap .p_info .ct .price1 {
                display: inline-block;
                font-size: 16px;
                vertical-align: middle;
                color: #a6a9ad;
                text-decoration: line-through;
            }
            .sub_item_wrap .p_info .ct .itdisco {
                display: inline-block;
                margin-left: 10px;
                font-weight: 600;
                font-size: 32px;
                color: #e83862;
                vertical-align: top;
                font-family: Tahoma, "돋움", Dotum, sans-serif;
            }
            .sub_item_wrap .p_info .ct .itdisco span {
                font-size: 20px;
            }
            .sub_item_wrap .p_info .ct .price2 {
                display: inline-block;
                margin-left: 0px;
                font-weight: 600;
                font-size: 32px;
                color: #16181a;
                vertical-align: top;
                font-family: Tahoma, "돋움", Dotum, sans-serif;
            }
            .sub_item_wrap .p_info .ct .del {
                font-size: 16px;
            }
            .sub_item_wrap .p_info .ct .price2 span {
                font-family: "NanumGothicBold";
                vertical-align: 8px;
                font-size: 20px;
                color: #16181a;
            }
            .sub_item_wrap .p_info .ct .coupon {
                font-size: 16px;
            }
            .sub_item_wrap .p_info .ct .coupon .num {
                font-family: "NanumGothicBold";
                color: #ff0000;
            }
            .sub_item_wrap .total_price {
                margin-top: 10px;
            }
            .sub_item_wrap .total_price:after {
                content: "";
                display: block;
                clear: both;
            }
            .sub_item_wrap .total_price .tit {
                float: left;
                margin-top: 10px;
            }
            .sub_item_wrap .total_price .t_price {
                float: right;
            }
            .sub_item_wrap .total_price .t_price .opt_cal_total_span {
                display: inline-block;
                position: relative;
                margin-right: 1px;
                font-size: 28px;
                font-weight: bold;
                font-family: Tahoma, "돋움", Dotum, sans-serif;
            }

            .item_info .opt_cart_order_btn {
                overflow: hidden;
            }
            .item_info .opt_cart_order_btn li {
                float: left;
                padding-left: 6px;
                position: relative;
            }
            .item_info .item_btn {
                display: inline-block;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                height: 34px;
                padding: 0 16px;
                background-color: #e83862;
                font-size: 14px;
                line-height: 33px;
                color: #fff;
                text-align: center;
                -ms-box-sizing: border-box;
                -o-box-sizing: border-box;
                height: 64px;
                font-size: 18px;
                line-height: 64px;
                font-family: "NanumGothicBold";
                cursor: pointer;
            }
            .item_info .item_btn_cart {
                width: 236px;
                border: 1px solid #e83862;
                background-color: #fff;
                color: #e83862;
            }
            .item_info .item_btn_cart:hover {
                color: #e83862;
            }
            .item_info .item_btn_buy {
                width: 236px;
                border: 1px solid #e83862;
            }
            .item_info .item_btn_buy:hover {
                color: #fff;
            }
            .item_info .btn_zzim {
                position: relative;
                display: block;
                width: 90px;
                border: 1px solid #e3e5e8;
                background-color: #eee;
                color: #666;
                background: url("img/btn_deal.png?time=1685585102") center;
                background-position: -0px -0px;
            }
            .item_info .btn_zzim:hover,
            .btn_zzim.on {
                background-position: -0px -65px;
                width: 90px;
            }
            .item_info .btn_zzim .txt {
                position: absolute;
                display: block;
                bottom: 5px;
                font-size: 11px;
                left: 50%;
                line-height: 12px;
                height: 12px;
            }

            .button_wrap {
                overflow: hidden;
                margin-top: 30px;
            }
            .button_wrap .btn_zzim {
                float: left;
            }
            .button_wrap .opt_cart_order_btn {
                float: left;
            }

            /*많이본상품*/
            .same_item_wrap {
                overflow: hidden;
                border-top: none;
                background: #fff;
                padding: 0px 0px 0px 0px;
                margin-top: 60px;
                margin-bottom: 60px;
            }
            /* .same_item_wrap .blank_line{margin-top:40px;padding-top:35px;border-top:1px solid #efefef} */
            .same_item_wrap .tit {
                font-size: 18px;
                margin-bottom: 20px;
                font-family: "NanumGothicBold", Sans-serif;
                font-weight: normal;
            }
            .same_item_wrap .tit em {
                font-size: 18px;
                color: #ff3300;
            }

            /* 옵션에러버튼 */
            .option_error_msg1 {
                float: left;
                background-color: #ddd;
                color: #111;
                display: block;
                width: 300px;
                height: 64px;
                line-height: 64px;
                text-align: center;
            }
            .option_error_msg2 {
                background-color: #ddd;
                color: #111;
                display: block;
                width: 287px;
                height: 64px;
                line-height: 64px;
                text-align: center;
            }

            .relation_page_wrap {
                position: absolute;
                right: 0;
                top: 0;
                font-size: 13px;
                color: #666;
            }

            .relation_left {
                vertical-align: -6px;
            }
            .relation_right {
                vertical-align: -6px;
            }

            .tab-wrap {
                position: relative;
                z-index: 200;
                width: 100%;
                height: 58px;
            }
            .tab-wrap .tab-inner {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                border-top: 1px solid #e3e5e8;
                border-bottom: 2px solid #30343b;
                border-left: solid 1px #e3e5e8;
                border-right: solid 1px #e3e5e8;
                background-color: #fff;
            }
            .tab-wrap .tab-inner .tabmenu {
                width: 1200px;
                margin: -1px auto 0;
            }
            .tab-wrap .tab-inner .tabmenu li {
                float: left;
                position: relative;
                width: 196px;
                text-align: center;
            }
            .tab-wrap .tab-inner .tabmenu li a {
                cursor: pointer;
                font-family: "NanumGothicBold";
                display: block;
                width: 100%;
                font-weight: 600;
                font-size: 16px;
                line-height: 56px;
                color: #7d7e80;
            }
            .fixed {
                top: 0px;
                position: fixed !important;
                z-index: 300 !important;
            }
            .tab-wrap .tab-inner .tabmenu li.active a {
                background-color: #30343b;
                color: #fff;
            }

            .nfor_line {
                height: 1px;
            }

            .deals_container {
                position: relative;
                width: 1200px;
                margin: -58px auto 0;
                padding-top: 58px;
                border-right: 1px solid #e3e5e8;
                border-bottom: 1px solid #e3e5e8;
            }
            .tab-cont {
                width: 860px;
                padding: 0px 0px;
                box-sizing: border-box;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                border-left: 1px solid #e3e5e8;
                border-right: 1px solid #e3e5e8;
                min-height: 1000px;
            }
            .deals_floating_opt {
                position: absolute;
                top: 58px;
                right: 0;
                width: 313px;
                background-color: #fff;
            }

            .deals_floating_opt .total_price {
                margin: 10px 0px;
            }
            .deals_floating_opt .total_price:after {
                content: "";
                display: block;
                clear: both;
            }
            .deals_floating_opt .total_price .tit {
                float: left;
                margin-top: 10px;
            }
            .deals_floating_opt .total_price .t_price {
                float: right;
            }
            .deals_floating_opt .total_price .t_price .opt_cal_total_span {
                display: inline-block;
                position: relative;
                margin-right: 1px;
                font-size: 28px;
                font-weight: bold;
                font-family: Tahoma, "돋움", Dotum, sans-serif;
            }

            .deals_floating_opt .opt_cart_order_btn li {
                padding: 0px 0px 5px;
            }
            .deals_floating_opt .item_btn {
                border: 1px solid #e83862;
                display: block;
                box-sizing: border-box;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                -ms-box-sizing: border-box;
                -o-box-sizing: border-box;
                height: 64px;
                line-height: 64px;
                padding: 0 16px;
                font-size: 18px;
                color: #fff;
                text-align: center;
                font-family: "NanumGothicBold";
                cursor: pointer;
            }

            .deals_floating_opt .item_btn_cart {
                background-color: #fff;
                color: #e83862;
            }
            .deals_floating_opt .item_btn_cart:hover {
                color: #e83862;
            }
            .deals_floating_opt .item_btn_buy {
                background-color: #e83862;
            }
            .deals_floating_opt .item_btn_buy:hover {
                color: #fff;
            }

            .order_top {
                overflow: hidden;
                min-height: 550px;
                height: auto;
                margin: 20px 0px;
                box-sizing: border-box;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
            }
            .order_bottom {
                overflow: visible;
                position: absolute;
                bottom: 0;
                left: 0;
                width: 100%;
                background-color: #fff;
                border-top: solid 1px #ccc;
                box-sizing: border-box;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
            }

            .right_order {
                position: relative;
                top: auto;
                bottom: auto;
                height: 0px;
                min-height: 571px;
                width: 300px;
            }
            .right_order.junadown {
                position: fixed;
                top: 58px;
                bottom: 0px;
                height: auto;
                max-height: 774px !important;
            }

            .right_order .opt_cal_list {
                overflow-y: auto;
                min-height: 200px;
            }

            .tab-cont {
                display: none;
            }
            .pa30 {
                padding: 30px;
            }
            #tab1 {
                display: block;
            }

            .item_coution {
                font-size: 12px;
                font-family: "Nanum Gothic";
                color: #a0a8b1 !important;
                line-height: 20px;
            }
            .it_info_val_tit {
                font-size: 17px;
                padding: 20px 0px;
                font-family: "NanumGothicBold";
            }
            .it_info_val_tbl {
                border-top: solid 2px #333;
                margin-bottom: 20px;
                line-height: 20px;
            }
            .it_info_val_tbl th {
                font-size: 12px;
                background-color: #f8f8f8;
                border-bottom: solid 1px #ccc;
                height: 30px;
                padding: 15px;
                text-align: left;
                font-weight: normal;
                color: #666;
            }
            .it_info_val_tbl td {
                font-size: 12px;
                border-bottom: solid 1px #ccc;
                height: 30px;
                padding: 15px;
                color: #a0a8b1;
            }

            .tab-wrap.top {
                position: fixed;
                top: 0px;
                left: 0px;
                height: 58px;
                width: 100%;
            }

            /* 장바구니담기 팝업 */
            #cart_popup {
                position: fixed;
                left: 0px;
                top: -280px;
                width: 100%;
                z-index: 99999;
                display: none;
            }
            #cart_popup div {
                background-color: rgba(0, 0, 0, 0.8);
                margin: 0 auto;
                width: 300px;
                text-align: center;
                padding: 30px 0px;
                font-family: NSKL;
            }
            #cart_popup p {
                margin-bottom: 10px;
                display: block;
                font-size: 16px;
                color: #fff;
                font-weight: bold;
            }
            #cart_popup a {
                background-color: #e83862;
                height: 30px;
                line-height: 30px;
                display: block;
                width: 150px;
                color: #fff;
                margin: 0 auto;
                font-family: NSKL;
            }

            /* 찜하기 팝업 */
            #zzim_popup {
                display: none;
                z-index: 9999;
            }
            #zzim_popup .zzim_msg {
                position: fixed;
                left: 50%;
                top: 50%;
                width: 150px;
                height: 150px;
                margin-top: -95px;
                margin-left: -75px;
                z-index: 9999;
            }
            #zzim_popup .zzim_msg.on p {
                background: url("/skin/mm_demo/img/zzim_on.png") no-repeat 50% 50%;
                background-size: 150px auto;
                width: 150px;
                height: 150px;
                position: relative;
                overflow: hidden;
                text-indent: -999px;
                animation-name: zzim-animate;
                animation-duration: 0.5s;
                animation-fill-mode: both;
            }
            #zzim_popup .zzim_msg.off p {
                background: url("/skin/mm_demo/img/zzim_off.png") no-repeat 50% 50%;
                background-size: 150px auto;
                width: 150px;
                height: 150px;
                position: relative;
                overflow: hidden;
                text-indent: -999px;
                animation-name: zzim-animate;
                animation-duration: 0.5s;
                animation-fill-mode: both;
            }
            @-webkit-keyframes zzim-animate {
                from {
                    -webkit-transform: scale3d(1, 1, 1);
                    transform: scale3d(1, 1, 1);
                }
                50% {
                    -webkit-transform: scale3d(1.05, 1.05, 1.05);
                    transform: scale3d(1.05, 1.05, 1.05);
                }
                to {
                    -webkit-transform: scale3d(1, 1, 1);
                    transform: scale3d(1, 1, 1);
                }
            }

            /* 판매알림 팝업 */
            #alarm_popup {
                display: none;
                z-index: 9999;
            }
            #alarm_popup .alarm_msg {
                position: fixed;
                left: 50%;
                top: 50%;
                width: 150px;
                height: 150px;
                margin-top: -95px;
                margin-left: -75px;
                z-index: 9999;
            }
            #alarm_popup .alarm_msg.on p {
                background: url("/skin/mm_demo/img/alarm_on.png") no-repeat 50% 50%;
                background-size: 150px auto;
                width: 150px;
                height: 150px;
                position: relative;
                overflow: hidden;
                text-indent: -999px;
                animation-name: alarm-animate;
                animation-duration: 0.5s;
                animation-fill-mode: both;
            }
            #alarm_popup .alarm_msg.off p {
                background: url("/skin/mm_demo/img/alarm_off.png") no-repeat 50% 50%;
                background-size: 150px auto;
                width: 150px;
                height: 150px;
                position: relative;
                overflow: hidden;
                text-indent: -999px;
                animation-name: alarm-animate;
                animation-duration: 0.5s;
                animation-fill-mode: both;
            }
            @-webkit-keyframes alarm-animate {
                from {
                    -webkit-transform: scale3d(1, 1, 1);
                    transform: scale3d(1, 1, 1);
                }
                50% {
                    -webkit-transform: scale3d(1.05, 1.05, 1.05);
                    transform: scale3d(1.05, 1.05, 1.05);
                }
                to {
                    -webkit-transform: scale3d(1, 1, 1);
                    transform: scale3d(1, 1, 1);
                }
            }

            .card_benefit_popup {
                display: none;
                position: absolute;
                top: 35px;
                left: 0;
                width: 580px;
                height: 350px;
                z-index: 1000;
                border: solid 1px #ccc;
                background-color: #fff;
                z-index: 99999;
            }
            .card_benefit_popup .fg {
                padding: 10px 20px;
            }
            .card_benefit_popup .card_benefit_popup_title {
                position: relative;
                padding: 20px 20px 20px;
                border-bottom: solid 1px #dcdcdc;
                background-color: #f8f8f8;
                font-size: 13px;
                font-family: "NanumGothicBold";
            }
            #card_benefit_popup_close_btn {
                display: block;
                position: absolute;
                top: 20px;
                right: 20px;
                text-align: right;
                cursor: pointer;
            }
            #card_benefit_popup_memo {
                overflow-y: auto;
                height: 280px;
            }

            .it_countdown_html {
                border: solid 1px #efefef;
                margin-top: 24px;
                height: 55px;
                line-height: 55px;
                text-align: center;
                background-color: #fafafa;
                font-family: nskr;
            }
        </style>

        <div class="item">
            <div class="subpath">
                <a href="/dodomall"><img src="../../../../../resources/img/homenavbtn.png" alt="홈" /> 홈</a>
                <img src="img/arrow.png" alt="" />
                <a href="item_list.php?category_id=002A">채소</a>
            </div>
            <div class="sub_item_wrap">
                <div class="item_thum">
                    <div class="thum">
                        <img
                                src="<c:out value="${item.itemImageUrl}"/>"
                                id="it_img"
                                alt=""
                        />
                    </div>
                    <ul class="it_img_thumb">
                        <li>
                            <img
                                    src="<c:out value="${item.itemImageUrl}"/>"
                                    class="it_img_s it_img_s_on"
                                    alt=""
                            />
                        </li>
                        <li>
                            <img
                                    src="<c:out value="${item.itemImageUrl}"/>"
                                    class="it_img_s"
                                    alt=""
                            />
                        </li>
                    </ul>
                </div>
                <div class="item_info">
                    <div class="ct_wrp">
                        <span class="del"><c:out value="${item.itemDeliveryStatus}"/></span>

                        <div class="sns_share_btn"><i></i> 공유하기</div>

                        <!-- 공유하기 팝업 -->
                        <div id="sns_share_popup" class="sns_share_popup">
                            <h3 class="lay_tit">공유하기</h3>
                            <div class="lay_conts">
                                <ul class="sns_type">
                                    <li>
                                        <a
                                                href="javascript:sns_link('naver')"
                                                class="naver"
                                                title="네이버 공유"
                                        ><span class="hide">naver</span></a
                                        >
                                    </li>
                                    <li>
                                        <a
                                                href="javascript:sns_link('facebook')"
                                                class="facebook"
                                                title="페이스북 공유"
                                        ><span class="hide">facebook</span></a
                                        >
                                    </li>
                                    <li>
                                        <a
                                                href="javascript:sns_link('twitter')"
                                                class="twitter"
                                                title="트위터에 보내기"
                                        ><span class="hide">twitter</span></a
                                        >
                                    </li>
                                    <li>
                                        <a
                                                href="javascript:sns_link('kakaostory')"
                                                class="kakao"
                                                title="카카오스토리 공유"
                                        ><span class="hide">카카오 스토리</span></a
                                        >
                                    </li>
                                </ul>
                                <div class="sns_url">
                                    <input
                                            type="text"
                                            id="copy_msg"
                                            value="https://4989farmer.co.kr/item.php?it_id=1669277971"
                                            class="text"
                                            title="URL 복사"
                                            readonly=""
                                            style="
                          box-sizing: border-box;
                          -webkit-box-sizing: border-box;
                        "
                                    /><a data-clipboard-target="#copy_msg" class="copy_btn"
                                >복사</a
                                >
                                </div>
                                <a id="sns_share_popup_close_btn"
                                ><span class="hide">레이어 닫기</span></a
                                >
                            </div>
                        </div>
                        <!-- //공유하기 팝업 -->
                    </div>
                    <div class="pro_title">
        <span class="itdes">
            <c:out value="${item.itemDescription}" />
        </span>
                        <span class="itname"><c:out value="${item.itemName}" /></span>
                    </div>
                    <div class="p_info">
                        <h3 class="tit_align_left">판매가격</h3>
                        <div class="ct">
                            <p class="price1"><c:out value="${item.itemPrice1}" /></p>
                            <br />
                            <p class="price2"><c:out value="${item.itemPrice2}" /><span class="won">원</span></p>
                            <p class="itdisco"><c:out value="${item.itemDiscountRate}" /><span>%</span></p>
                        </div>
                    </div>
                    <div class="p_info">
                        <h3 class="tit_align_left">배송정보</h3>
                        <div class="ct">
                            <p class="del"><c:out value="${item.itemDeliveryStatus}" /></p>
                        </div>
                    </div>

                    <div class="p_info">
                        <h3 class="tit_align_left">기타정보</h3>
                        <div class="ct">
                            <p class="del"><span>0개 구매</span></p>
                        </div>
                    </div>

                    <div style="margin: 20px 0px;">
                        <div class="opt_popup">
                            <form name="item_frm" id="item_frm" method="post" action="cart.php">
                                <input type="hidden" name="it_id" value="1669277971">
                                <input type="hidden" name="mode" value="insert">
                                <input type="hidden" name="move" id="move">
                                <div class="opt_cal_list" id="it_id_1669277971">
                                    <div class="append_box append_box616575">
                                        <input type="hidden" name="opt_id[]" class="opt_id basic" value="616575">
                                        <p class="append_opt_name">상품명</p>
                                        <p class="append_count">
                                            <a class="count_minus"></a>
                                            <input type="number" pattern="[0-9]*" name="opt_cnt[]" value="1" class="opt_cnt"
                                                   data-it_buy_qty_min="1" data-it_buy_qty_max="9999999" data-opt_id="616575"
                                                   data-price="<c:out value="${item.itemPrice2}" />" data-stock="19" data-it_opt_cnt="0" data-it_gp_cnt="1"
                                                   data-it_buy_qty_type="1" data-it_stock_type="2" data-it_id="1669277971">
                                            <a class="count_plus"></a>
                                        </p>
                                        <p class="append_price_del">
                                            <span class="append_price"><b>원</b></span>
                                        </p>
                                    </div>
                                </div>
                            </form>
                            <div></div>
                            <div class="opt_cal_total">
                                <div class="total_price">
                                    <div class="tit">총구매금액</div>
                                    <div class="t_price">
                                        <span class="opt_cal_total_span"><c:out value="${item.itemPrice2}" /></span><span>원</span>
                                    </div>
                                </div>
                            </div>

                            <div class="button_wrap">
                                <a class="item_btn btn_zzim" data-it_id="1669277971">
                                    <span class="txt">0</span>
                                </a>
                                <div class="opt_cart_order_btn on">
                                    <ul>
                                        <li>
                                            <a class="item_btn item_btn_cart opt_cart_btn">장바구니</a>
                                        </li>
                                        <li>
                                            <a class="item_btn item_btn_buy opt_order_btn">구매하기</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Add your JavaScript code here -->
                    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                    <script>
                        // 페이지 로드 후 실행할 함수 호출
                        $(document).ready(function () {
                            cal_total();
                        });

                        // 총구매금액계산
                        function cal_total() {
                            var opt_cal_total_span = 0;
                            var ea_price = 0;
                            var itemPrice2 = parseInt("<c:out value='${item.itemPrice2}' />");

                            $(".opt_cal_list:eq(0) .opt_cnt").each(function () {
                                ea_price = parseInt($(this).data("price")) * parseInt($(this).val());
                                opt_cal_total_span += ea_price;
                                $(".append_box" + $(this).data("opt_id") + " .append_price").html(number_format(ea_price) + "<b>원</b>");
                            });
                            $(".opt_cal_total_span").html(number_format(opt_cal_total_span + itemPrice2));
                            if (!$(".append_box").length) {
                                $(".opt_cal_total").addClass("hide");
                                $(".opt_cart_order_btn").removeClass("on");
                            } else {
                                $(".opt_cal_total").removeClass("hide");
                                $(".opt_cart_order_btn").addClass("on");
                                $(".opt_cal_list").show();
                            }
                        }

                        // 숫자를 천 단위로 끊어주는 함수
                        function number_format(num) {
                            return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                        }

                        // // + 버튼 클릭 시 수량 증가
                        // $(".count_plus").on("click", function () {
                        //     var inputElement = $(this).siblings("input.opt_cnt");
                        //     var currentValue = parseInt(inputElement.val());
                        //     var maxQuantity = parseInt(inputElement.attr("data-it_buy_qty_max"));
                        //     if (currentValue < maxQuantity) {
                        //         inputElement.val(currentValue + 1);
                        //         cal_total();
                        //     }
                        // });
                        //
                        // // - 버튼 클릭 시 수량 감소
                        // $(".count_minus").on("click", function () {
                        //     var inputElement = $(this).siblings("input.opt_cnt");
                        //     var currentValue = parseInt(inputElement.val());
                        //     var minQuantity = parseInt(inputElement.attr("data-it_buy_qty_min"));
                        //     if (currentValue > minQuantity) {
                        //         inputElement.val(currentValue - 1);
                        //         cal_total();
                        //     }
                        // });
                    </script>



                    <br />
                </div>
            </div>
        </div>
        <!-- 관련상품 -->

        <!--// 관련상품 -->

        <div class="nfor_line"></div>

        <div class="tab-wrap">
            <div class="tab-inner">
                <!-- fixed 상단으로 올라갔을때 클래스명 -->
                <ul class="tabmenu">
                    <li class="active"><a data-tab="#tab1">상품설명</a></li>
                    <li><a data-tab="#tab2">구매정보</a></li>
                    <li><a data-tab="#tab3">구매후기</a></li>
                    <li><a data-tab="#tab4">상품문의 </a></li>
                </ul>
            </div>
        </div>

        <div class="deals_container">
            <div id="tab1" class="tab-cont">
                <p><c:out value="${item.itemDescription}"/></p>

            </div>

            <div id="tab2" class="tab-cont pa30">
                <div class="item_coution"></div>

                <div>
                    <h3 class="it_info_val_tit">상품정보제공고시</h3>
                    <table
                            class="table it_info_val_tbl"
                            cellpadding="0"
                            cellspacing="0"
                    >
                        <colgroup>
                            <col width="230" />
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>포장단위별 용량(중량), 수량, 크기</th>
                            <td colspan="3"></td>
                        </tr>
                        <tr>
                            <th>생산자, 수입품의 경우 수입자를 함께 표기</th>
                            <td colspan="3"></td>
                        </tr>
                        <tr>
                            <th>농수산물의 원산지 표시에 관한 법률에 따른 원산지</th>
                            <td colspan="3"></td>
                        </tr>
                        <tr>
                            <th>
                                제조연월일(포장일 또는 생산연도), 유통기한 또는
                                품질유지기한
                            </th>
                            <td colspan="3"></td>
                        </tr>
                        <tr>
                            <th>관련법상 표시사항</th>
                            <td colspan="3"></td>
                        </tr>
                        <tr>
                            <th>
                                농산물 - 농수산물품질관리법상 유전자변형농산물 표시,
                                지리적표시
                            </th>
                            <td colspan="3"></td>
                        </tr>
                        <tr>
                            <th>
                                축산물 - 축산법에 따른 등급 표시, 쇠고기의 경우 이력관리에
                                따른 표시 유무
                            </th>
                            <td colspan="3"></td>
                        </tr>
                        <tr>
                            <th>
                                수산물 - 농수산물품질관리법상 유전자변형수산물 표시,
                                지리적표시
                            </th>
                            <td colspan="3"></td>
                        </tr>
                        <tr>
                            <th>
                                수입식품에 해당하는 경우 "식품위생법에 따른 수입신고를
                                필함"의 문구
                            </th>
                            <td colspan="3"></td>
                        </tr>
                        <tr>
                            <th>상품구성</th>
                            <td colspan="3"></td>
                        </tr>
                        <tr>
                            <th>소비자상담 관련 전화번호</th>
                            <td colspan="3"></td>
                        </tr>
                        </tbody>
                    </table>

                    <h3 class="it_info_val_tit">판매점 정보</h3>
                    <table
                            class="table it_info_val_tbl"
                            cellpadding="0"
                            cellspacing="0"
                    >
                        <colgroup>
                            <col width="230" />
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>사업자번호</th>
                            <td>123829383</td>
                        </tr>
                        <tr>
                            <th>통신판매업번호</th>
                            <td>1</td>
                        </tr>
                        <tr>
                            <th>상호/대표자</th>
                            <td>판매테스트/판매자</td>
                        </tr>
                        <tr>
                            <th>판매자명</th>
                            <td>판매테스트</td>
                        </tr>
                        <tr>
                            <th>연락처</th>
                            <td>010-5621-3401</td>
                        </tr>
                        <tr>
                            <th>주소</th>
                            <td>인천 서구 파랑로 495 (청라동) 1층</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div id="tab3" class="tab-cont pa30">
                <style>
                    /* 더보기버튼 */
                    .star_list_more {
                        display: block;
                        letter-spacing: -1px;
                        color: #999;
                        height: 40px;
                        line-height: 40px;
                        font-size: 14px;
                        text-align: center;
                        border-top: solid 1px #f4f4f4;
                    }
                    .star_list_more b {
                        display: inline-block;
                        width: 11px;
                        height: 7px;
                        background: url("./skin/demo/img/layout.png") no-repeat;
                        background-position: -200px -250px;
                        background-size: 320px auto;
                    }

                    /* 상품평리스트 */
                    .star_list {
                        border-bottom: solid 1px #e5e5e5;
                    }
                    .star_list .st_li {
                        padding: 20px 0px;
                        border-top: solid 1px #e5e5e5;
                    }

                    .star_list .star_memo {
                        color: #444;
                        font-size: 13px;
                        letter-spacing: -1px;
                        overflow: hidden;
                        text-overflow: ellipsis;
                        -webkit-line-clamp: 4;
                        display: -webkit-box;
                        -webkit-box-orient: vertical;
                    }
                    .star_list .star_memo.on {
                        color: #444;
                        font-size: 13px;
                        letter-spacing: -1px;
                        overflow: hidden;
                        text-overflow: ellipsis;
                        -webkit-line-clamp: 100;
                        display: -webkit-box;
                        -webkit-box-orient: vertical;
                    }

                    .star_list .st_li .star_list_name {
                        position: relative;
                        float: left;
                        font-size: 13px;
                        color: #999;
                        letter-spacing: -1px;
                    }

                    .staricon {
                        display: inline-block;
                        position: relative;
                        width: 80px;
                        height: 15px;
                        background: url("./skin/demo/img/star.png") no-repeat 0 -15px;
                        background-size: 87px auto;
                        vertical-align: middle;
                    }
                    .staricon em {
                        position: absolute;
                        left: 0px;
                        top: 0px;
                        height: 15px;
                        background: url("./skin/demo/img/star.png") no-repeat 0 0;
                        background-size: 87px auto;
                    }

                    .star_list .star_list_date {
                        float: right;
                        font-size: 12px;
                        color: #999;
                    }
                    .star_list .star_list_btn {
                        width: 100%;
                        text-align: right;
                        margin-top: 10px;
                    }
                    .star_list .star_list_btn button {
                        padding: 0px;
                        margin: 0px;
                        width: 40px;
                        height: 25px;
                        line-height: 25px;
                        text-align: center;
                        font-size: 12px;
                        text-decoration: none;
                    }
                    .star_list .star_list_btn .update {
                        border: 1px solid #9ea5ae;
                        background: #fff;
                        color: #9ea5ae;
                    }
                    .star_list .star_list_btn .delete {
                        border: solid 1px #e83862;
                        background: #fff;
                        color: #e83862;
                    }

                    .wrap_star_info {
                        position: relative;
                        width: 100%;
                        padding: 20px 0px 0px;
                    }
                    .wrap_star_info .txt {
                        font-size: 16px;
                        margin-bottom: 10px;
                        font-family: "NanumGothicBold";
                    }
                    .wrap_star_info .txt b {
                        font-size: 0.7em;
                        color: #959da6;
                    }
                    .wrap_star_info .sub_txt {
                        text-align: left;
                        font-size: 12px;
                        margin-bottom: 20px;
                        color: #6c7580;
                    }

                    .wrap_bigpoint {
                        overflow: hidden;
                        width: 100%;
                        text-align: center;
                        margin: 10px 0px;
                        padding: 30px 0px;
                        box-sizing: border-box;
                        -webkit-box-sizing: border-box;
                    }
                    .f_left {
                        float: left;
                        width: 45%;
                        border-right: 1px solid #e5e5e5;
                    }
                    .f_left .text_sub {
                        display: block;
                        font-size: 10px;
                        color: #929292;
                        margin-top: 15px;
                    }
                    .f_left .bigstaricon {
                        margin-top: 10px;
                        display: inline-block;
                        position: relative;
                        width: 134px;
                        height: 24px;
                        background: url("./skin/demo/img/star.png") no-repeat 0 -0px;
                        background-size: 134px auto;
                        vertical-align: middle;
                        font-weight: normal;
                    }
                    .f_left .bigstaricon em {
                        position: absolute;
                        left: 0px;
                        top: 0px;
                        height: 24px;
                        background: url("./skin/demo/img/star.png") no-repeat 0 -28px;
                        background-size: 134px auto;
                    }
                    .f_left .bigpoint {
                        display: block;
                        font-size: 37px;
                        letter-spacing: -1px;
                        color: #333;
                        font-family: "tahoma";
                    }
                    .f_left .bigpointmax {
                        display: inline-block;
                        color: #acacac;
                        font-size: 28px;
                        line-height: 28px;
                        vertical-align: middle;
                    }

                    .f_right {
                        float: right;
                        width: 52%;
                    }
                    .f_right .graph_zone {
                        width: 450px;
                        margin: 0 auto;
                        padding-bottom: 14px;
                    }
                    .f_right .graph_zone .g_txt {
                        font-size: 12px;
                        color: #4a4a4a;
                        display: inline-block;
                        width: 50px;
                        text-align: left;
                    }
                    .f_right .graph_zone .graph {
                        position: relative;
                        display: inline-block;
                        width: 360px;
                        height: 6.4px;
                        border-radius: 3.2px;
                        background-color: #e5e5e5;
                    }
                    .f_right .graph_zone .graph .graph_rate {
                        position: absolute;
                        display: inline-block;
                        left: 0px;
                        top: 0px;
                        width: 182.4px;
                        height: 6.4px;
                        border-radius: 3.2px;
                    }
                    .f_right .graph_zone .g_point {
                        display: inline-block;
                        font-size: 12px;
                    }
                    .f_right .graph_zone .g_color1 {
                        background-color: #ff284b;
                    }
                    .f_right .graph_zone .g_color2 {
                        background-color: #a603e6;
                    }
                    .f_right .graph_zone .g_color3 {
                        background-color: #9b9b9b;
                    }

                    .name_date_wrap {
                        margin-bottom: 10px;
                    }
                    .name_date_wrap:after {
                        clear: both;
                        display: block;
                        content: "";
                    }
                    .star_list_more {
                        border: solid 1px #d0d0d0;
                        display: block;
                    }
                    .best {
                        border: solid 1px #ff0000;
                        color: #ff0000;
                        display: inline-block;
                        padding: 3px 5px;
                        margin-right: 10px;
                        font-size: 11px;
                    }

                    .star_image .st_img {
                        width: 60px;
                        height: 60px;
                        border: solid 2px #ececec;
                    }

                    .bigimage_wrap {
                        display: none;
                        width: 100%;
                        height: 100%;
                        position: fixed;
                        top: 0;
                        right: 0;
                        z-index: 99999;
                    }
                    .bigimage_back {
                        background-color: #000;
                        height: 100%;
                        width: 100%;
                        opacity: 1;
                    }

                    .bigimage_wrap .swiper-container {
                        width: 100%;
                        height: 100%;
                    }
                    .bigimage_wrap .swiper-slide {
                        text-align: center;
                        font-size: 18px;
                        background: #000;
                        display: -webkit-box;
                        display: -ms-flexbox;
                        display: -webkit-flex;
                        display: flex;
                        -webkit-box-pack: center;
                        -ms-flex-pack: center;
                        -webkit-justify-content: center;
                        justify-content: center;
                        -webkit-box-align: center;
                        -ms-flex-align: center;
                        -webkit-align-items: center;
                        align-items: center;
                    }
                    .bigimage_wrap .swiper-slide img {
                        width: 86%;
                    }
                    .bigimage_wrap .swiper-pagination-bullet {
                        background: #fff;
                    }
                    .bigimage_wrap .swiper-pagination-bullet-active {
                        background: #e83862;
                    }
                    .bigimage_wrap .swiper-pagination-fraction,
                    .swiper-pagination-custom,
                    .swiper-container-horizontal > .swiper-pagination-bullets {
                        bottom: 15px;
                    }
                </style>

                <div class="wrap_star_info">
                    <div class="txt">이용후기 <b>( 총 0개 )</b></div>
                    <div class="sub_txt">
                        마이페이지 &gt; 구매내역에서 구매후기를 작성해주세요.
                    </div>

                    <div class="wrap_bigpoint">
                        <div class="f_left">
                            <b class="bigpoint">0<span class="bigpointmax">/5</span></b>
                            <b class="bigstaricon"><em style="width: 0%"></em></b>
                            <span class="text_sub">
                    구매한 회원만 작성할 수 있습니다.</span
                            >
                        </div>
                        <div class="f_right">
                            <div class="graph_zone">
                                <span class="g_txt">만족</span>
                                <b class="graph"
                                ><em class="graph_rate g_color1" style="width: 0%"></em
                                ></b>
                                <span class="g_point" style="color: #ff284b">0</span>
                            </div>
                            <div class="graph_zone">
                                <span class="g_txt">보통</span>
                                <b class="graph"
                                ><em class="graph_rate g_color2" style="width: 0%"></em
                                ></b>
                                <span class="g_point" style="color: #a603e6">0</span>
                            </div>
                            <div class="graph_zone">
                                <span class="g_txt">불만족</span>
                                <b class="graph"
                                ><em class="graph_rate g_color3" style="width: 0%"></em
                                ></b>
                                <span class="g_point" style="color: #9b9b9b">0</span>
                            </div>
                        </div>
                    </div>
                </div>

                <ul class="star_list"></ul>

                <div id="star_loading_wait" class="loading_wait">
                    <img src="./skin/demo/img/ajax-loader.gif" alt="" />
                    <span>목록을 불러오고 있습니다</span>
                    <p>잠시만 기다려 주세요</p>
                </div>

                <div class="bigimage_wrap">
                    <div class="bigimage_back">
                        <div class="swiper-container">
                            <div class="swiper-wrapper"></div>
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                </div>

<%--                <script type="text/html" id="star_item_list_script">--%>
<%--                    <li class="st_li" id="st_li_<%=st_id%>">--%>
<%--                        <div class="name_date_wrap">--%>
<%--                            <!-- <span class="star_list_name"><% if(st_best){ %><span class="best">베스트후기</span><% } %><b class="staricon"><em style="width:<%=st_star_per%>%;></em></b><%=st_mb_id%></span>--%>
<%--                  <span class="star_list_date"><%=st_insert_datetime_cut%></span> -->--%>
<%--                        </div>--%>

<%--                        <div class="star_memo"><%=st_memo%></div>--%>

<%--                        <div class="star_image">--%>
<%--                            <% _(image).each(function(data){ %>--%>
<%--                            <img--%>
<%--                                    src="<%=data.st_image_thumb%>"--%>
<%--                                    data-image="<%=data.st_image%>"--%>
<%--                                    data-number="<%=data.st_image_number%>"--%>
<%--                                    data-st_id="<%=st_id%>"--%>
<%--                                    class="st_img"--%>
<%--                            />--%>
<%--                            <% }); %>--%>
<%--                        </div>--%>

<%--                        <% if(st_access=="1"){ %>--%>
<%--                        <div class="star_list_btn">--%>
<%--                            <button type="button" class="update" data-st_id="<%=st_id%>">--%>
<%--                                수정--%>
<%--                            </button>--%>
<%--                            <button type="button" class="delete" data-st_id="<%=st_id%>">--%>
<%--                                삭제--%>
<%--                            </button>--%>
<%--                        </div>--%>
<%--                        <% } %>--%>
<%--                    </li>--%>

<%--                    <% _(reply).each(function(data){ %>--%>
<%--                    <li class="st_li" id="st_li_<%=data.st_id%>">--%>
<%--                        <div>--%>
<%--                  <span class="star_list_name"--%>
<%--                  ><i></i><b>답변</b> &nbsp;<%=data.st_mb_id%></span--%>
<%--                  >--%>
<%--                            <span class="star_list_date"--%>
<%--                            ><%=data.st_insert_datetime_cut%></span--%>
<%--                            >--%>
<%--                            <div style="clear:both;"></div>--%>
<%--                        </div>--%>

<%--                        <div--%>
<%--                                class="star_comment_wrap"--%>
<%--                                id="update_star_<%=data.st_id%>"--%>
<%--                        ></div>--%>

<%--                        <div class="star_memo" id="star_memo_<%=data.st_id%>">--%>
<%--                            <%=data.st_memo%>--%>
<%--                        </div>--%>

<%--                        <% if(data.st_access=="1"){ %>--%>
<%--                        <div class="star_list_btn">--%>
<%--                            <button--%>
<%--                                    type="button"--%>
<%--                                    class="update"--%>
<%--                                    data-st_id="<%=data.st_id%>"--%>
<%--                            >--%>
<%--                                수정--%>
<%--                            </button>--%>
<%--                            <button--%>
<%--                                    type="button"--%>
<%--                                    class="delete"--%>
<%--                                    data-st_id="<%=data.st_id%>"--%>
<%--                            >--%>
<%--                                삭제--%>
<%--                            </button>--%>
<%--                        </div>--%>
<%--                        <% } %>--%>
<%--                    </li>--%>
<%--                    <% }); %>--%>
<%--                </script>--%>

                <script>
                    var is_last_star = 0;
                    var star_page = 1;
                    var star_total_page = "0";

                    $(document).on("click", ".star_list_more", function (e) {
                        if (is_last_star == 0) {
                            ++star_page;
                            item_star_list_load();
                        }
                        if (star_total_page <= star_page) {
                            $(".star_list_more").hide();
                        }
                    });

                    function item_star_list_load() {
                        $("#star_loading_wait").show();
                        if (star_page == 1) {
                            $(".star_list").html("");
                        }
                        $.ajax({
                            type: "get",
                            url: "item_star_list.php",
                            data: "json=list&page=" + star_page + "&it_id_gp=" + it_id_gp,
                            dataType: "json",
                            cache: false,
                            success: function (data) {
                                console.log(data);
                                if (data.count > 0) {
                                    template = _.template($("#star_item_list_script").html());
                                    var template_html = "";
                                    for (var i = 0; i < data.star_list.list.length; i++) {
                                        template_html += template({
                                            st_id: data.star_list.list[i].st_id,
                                            st_insert_datetime_cut:
                                            data.star_list.list[i].st_insert_datetime_cut,
                                            st_access: data.star_list.list[i].st_access,
                                            st_star_per: data.star_list.list[i].st_star_per,
                                            st_mb_id: data.star_list.list[i].st_mb_id,
                                            st_memo: data.star_list.list[i].st_memo,
                                            st_best: data.star_list.list[i].st_best,
                                            reply: data.star_list.list[i].reply,
                                            image: data.star_list.list[i].image,
                                        });
                                    }
                                    $(".star_list").append(template_html);
                                }

                                $("#star_loading_wait").hide();

                                if (data.star_list.total_page <= data.page) {
                                    is_last_star++;
                                }
                            },
                            error: function (e) {
                                console.log(e);
                                console.log("Ajax failed");
                            },
                        });
                    }

                    $(document).on("click", ".star_list .delete", function () {
                        var st_id = $(this).data("st_id");
                        if (
                            confirm(
                                "상품평 삭제시에는 복구 및 재등록은 불가능합니다.\n정말 삭제하시겠습니까?"
                            )
                        ) {
                            $.ajax({
                                type: "post",
                                data: {
                                    mode: "delete",
                                    st_id: st_id,
                                },
                                url: "item_star_form.php",
                                success: function (response) {
                                    var json = $.parseJSON(response);
                                    if (json["result"] == "ok") {
                                        $("#st_li_" + st_id).remove();
                                        if ($(".star_list li").length < 1) {
                                            star_page = 1;
                                            item_star_list_load();
                                        }
                                    } else {
                                        alert(json["msg"]);
                                    }
                                },
                            });
                        }
                    });

                    $(document).on("click", ".star_list .update", function () {
                        var st_id = $(this).data("st_id");
                        location.href =
                            "item_star_form.php?it_id=" + it_id + "&st_id=" + st_id;
                    });

                    $(document).on("click", ".star_memo", function () {
                        if ($(this).hasClass("on")) {
                            $(this).removeClass("on");
                        } else {
                            $(this).addClass("on");
                        }
                    });

                    var star_swiper = null;
                    $(document).on("click", ".swiper-slide img", function () {
                        $(".bigimage_wrap").hide();
                        star_swiper.destroy();
                    });

                    $(document).on("click", ".st_img", function () {
                        var st_id = $(this).data("st_id");
                        var print_html = "";
                        $("#st_li_" + st_id + " .st_img").each(function (index) {
                            print_html +=
                                '<div class="swiper-slide"><img src="' +
                                $(this).data("image") +
                                "\" alt=''></div>";
                        });
                        $(".bigimage_wrap .swiper-wrapper").html(print_html);

                        var number = $(this).data("number");
                        $(".bigimage_wrap").show();

                        star_swiper = new Swiper(".swiper-container", {
                            initialSlide: number,
                            loop: true,
                            pagination: {
                                el: ".swiper-pagination",
                            },
                        });
                    });
                </script>
            </div>

            <div id="tab4" class="tab-cont pa30">
                <style>
                    /* 상품문의리스트*/
                    .qna_list {
                        border-bottom: solid 1px #e5e5e5;
                    }
                    .qna_list .q_li {
                        padding: 15px 10px;
                        border-top: solid 1px #e5e5e5;
                    }
                    .qna_list .a_li {
                        padding: 15px 10px 15px 25px;
                        border-top: dashed 1px #e5e5e5;
                    }

                    .qna_list .qna_memo {
                        color: #444;
                        font-size: 13px;
                        padding: 15px 10px 15px;
                        line-height: 20px;
                    }

                    .qna_list .q_li .qna_list_name {
                        position: relative;
                        font-size: 13px;
                        color: #444;
                        padding-left: 38px;
                        letter-spacing: -1px;
                    }
                    .qna_list .q_li .qna_list_name b {
                        width: 32px;
                        height: 22px;
                        top: 0px;
                        background-color: #2fcbe0;
                        color: #fff;
                        line-height: 22px;
                        text-align: center;
                        left: 0px;
                        border-radius: 10px;
                        font-size: 11px;
                        position: absolute;
                        font-weight: normal;
                    }

                    .qna_list .a_li .qna_list_name {
                        position: relative;
                        font-size: 13px;
                        color: #444;
                        padding-left: 45px;
                        letter-spacing: -1px;
                    }
                    .qna_list .a_li .qna_list_name b {
                        width: 32px;
                        height: 22px;
                        top: 0px;
                        left: 10px;
                        background-color: #9ea5ae;
                        color: #fff;
                        line-height: 22px;
                        text-align: center;
                        border-radius: 10px;
                        font-size: 11px;
                        position: absolute;
                        font-weight: normal;
                    }
                    .qna_list .a_li .qna_list_name i {
                        width: 6px;
                        height: 6px;
                        top: 5px;
                        left: 0px;
                        position: absolute;
                        background: url("/skin/nfor/img/layout.png") no-repeat;
                        background-position: -100px -350px;
                        background-size: 320px auto;
                    }

                    .qna_list .qna_list_date {
                        height: 22px;
                        font-size: 11px;
                        color: #999;
                    }

                    .qna_list .qna_list_btn {
                        width: 100%;
                        text-align: right;
                        margin-top: 0px;
                    }
                    .qna_list .qna_list_btn button {
                        padding: 0px;
                        margin: 0px;
                        width: 40px;
                        height: 25px;
                        line-height: 25px;
                        text-align: center;
                        font-size: 12px;
                        text-decoration: none;
                        cursor: pointer;
                    }

                    .reply {
                        border: solid 1px #9ea5ae;
                        background: #fff;
                        color: #9ea5ae;
                    }
                    .update {
                        border: solid 1px #9ea5ae;
                        background: #fff;
                        color: #9ea5ae;
                    }
                    .delete {
                        border: solid 1px #e83862;
                        background: #fff;
                        color: #e83862;
                    }

                    /* 더보기버튼 */
                    .qna_list_more {
                        display: block;
                        letter-spacing: -1px;
                        color: #999;
                        height: 40px;
                        line-height: 40px;
                        font-size: 14px;
                        text-align: center;
                        border-top: solid 1px #f4f4f4;
                    }
                    .qna_list_more b {
                        display: inline-block;
                        width: 11px;
                        height: 7px;
                        background: url("/skin/nfor/img/layout.png") no-repeat;
                        background-position: -200px -250px;
                        background-size: 320px auto;
                    }

                    #qna_form {
                        display: none;
                    }
                    .qna_form_wrap {
                        padding: 10px;
                        position: relative;
                    }
                    .qna_form_wrap h3 {
                        font-size: 17px;
                        margin: 20px 0px 10px;
                        font-family: "NanumGothicBold";
                    }
                    .qna_form_wrap .qa_inner {
                        position: relative;
                    }
                    .caution {
                        margin-top: 10px;
                        margin-bottom: 20px;
                    }
                    .caution li {
                        font-size: 12px;
                        color: #9ea5ae;
                        line-height: 18px;
                    }
                    .qna_form_wrap .qa_memo {
                        display: inline-block;
                        width: 655px;
                        height: 80px;
                        margin-bottom: 10px;
                        border: 1px solid #cacaca;
                        font-family: "Nanum Gothic";
                        padding: 10px;
                        box-sizing: border-box;
                        -webkit-box-sizing: border-box;
                        -moz-box-sizing: border-box;
                    }
                    .qna_form_wrap .btn_item_qna_submit {
                        position: absolute;
                        width: 133px;
                        height: 80px;
                        border: solid 1px #e83862;
                        background-color: #fff;
                        color: #e83862;
                        letter-spacing: -0.07em;
                        display: inline-block;
                    }
                    .list_button {
                        overflow: hidden;
                        position: absolute;
                        top: 10px;
                        right: 10px;
                    }
                    .list_button li {
                        float: left;
                        width: 50%;
                        padding-right: 3px;
                        -webkit-box-sizing: border-box;
                        -moz-box-sizing: border-box;
                        box-sizing: border-box;
                    }
                    .list_button li:nth-child(2) {
                        padding: 0px;
                    }
                    .list_button li .btn_item_qna_cancel_button {
                        display: inline-block;
                        margin-right: 5px;
                        border: solid 1px #9ea5ae;
                        background-color: #fff;
                        color: #9ea5ae;
                        letter-spacing: -0.07em;
                    }
                    .list_button li .btn_item_qna_button {
                        margin-left: 0px;
                        border: solid 1px #e83862;
                        background-color: #fff;
                        color: #e83862;
                        letter-spacing: -0.07em;
                        width: 111px;
                        height: 80px;
                    }
                </style>

                <!-- 신규 -->
                <form name="item_qna_form" id="item_qna_form" method="post">
                    <input type="hidden" name="mode" value="insert" />
                    <input type="hidden" name="qa_it_id" value="1669277971" />
                    <input type="hidden" name="qa_it_id_gp" value="1544417590" />

                    <div class="qna_form_wrap">
                        <h3>상품문의</h3>
                        <ul class="caution">
                            <li>
                                전화번호, 성명, 주소, 이메일을 남기시면 타인에 의해 도용될
                                수 있습니다. Q&amp;A에 개인정보를 남기지 말아주세요.
                            </li>
                            <li>
                                상품과 관련없는 글(비방, 홍보, 도배 등)은 예고없이
                                삭제됩니다.
                            </li>
                        </ul>
                        <div class="qa_inner">
                  <textarea
                          name="qa_memo"
                          class="qa_memo"
                          placeholder="문의 내용을 입력해주세요"
                  ></textarea>
                            <input
                                    type="button"
                                    value="상품문의등록"
                                    class="btn_item_qna_submit"
                            />
                        </div>
                    </div>
                </form>
                <!-- //신규 -->

                <!-- 수정답변삭제 -->
                <form name="item_qna_list" id="item_qna_list" method="post">
                    <input type="hidden" name="mode" id="mode" />
                    <input type="hidden" name="qa_it_id" value="1669277971" />
                    <input type="hidden" name="qa_it_id_gp" value="1544417590" />

                    <input type="hidden" name="qa_parent" id="qa_parent" />
                    <input type="hidden" name="qa_id" id="qa_id" />

                    <ul class="qna_list"></ul>
                </form>
                <!-- //수정답변삭제 -->

                <!-- 답변수정폼 -->
                <div id="qna_form">
                    <div class="qna_form_wrap">
                <textarea
                        name="qa_memo"
                        class="qa_memo"
                        placeholder="문의 내용을 입력해주세요"
                ></textarea>
                        <ul class="list_button">
                            <li style="display: none">
                                <input
                                        type="button"
                                        value="취소하기"
                                        class="btn_item_qna_cancel_button"
                                />
                            </li>
                            <li>
                                <input
                                        type="button"
                                        value="답변달기"
                                        class="btn_item_qna_button"
                                />
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- //답변수정폼 -->

                <div id="qna_loading_wait" class="loading_wait">
                    <img src="./skin/demo/img/ajax-loader.gif" alt="" />
                    <span>목록을 불러오고 있습니다</span>
                    <p>잠시만 기다려 주세요</p>
                </div>

<%--                <script type="text/html" id="item_qna_list_script">--%>
<%--                    <li class="q_li" id="qa_li_<%=qa_id%>">--%>
<%--                        <div>--%>
<%--                  <span class="qna_list_name"--%>
<%--                  ><b>질문</b> <%=qa_mb_id%>&nbsp; | &nbsp;</span--%>
<%--                  >--%>
<%--                            <span class="qna_list_date"><%=qa_insert_datetime_cut%></span>--%>
<%--                            <div style="clear:both;"></div>--%>
<%--                        </div>--%>
<%--                        <div class="qna_comment_wrap" id="update_qna_<%=qa_id%>"></div>--%>
<%--                        <div class="qna_memo" id="qna_memo_<%=qa_id%>">--%>
<%--                            <%=qa_memo%>--%>
<%--                        </div>--%>
<%--                        <% if(qa_access=="1"){ %>--%>
<%--                        <div class="qna_list_btn">--%>
<%--                            <button type="button" class="reply" data-qa_id="<%=qa_id%>">--%>
<%--                                답변--%>
<%--                            </button>--%>
<%--                            <button type="button" class="update" data-qa_id="<%=qa_id%>">--%>
<%--                                수정--%>
<%--                            </button>--%>
<%--                            <button type="button" class="delete" data-qa_id="<%=qa_id%>">--%>
<%--                                삭제--%>
<%--                            </button>--%>
<%--                        </div>--%>
<%--                        <% } %>--%>
<%--                        <div class="qna_comment_wrap" id="reply_qna_<%=qa_id%>"></div>--%>
<%--                    </li>--%>
<%--                    <% _(reply).each(function(data){ %>--%>
<%--                    <li class="a_li" id="qa_li_<%=data.qa_id%>">--%>
<%--                        <div>--%>
<%--                  <span class="qna_list_name"--%>
<%--                  ><i></i><b>답변</b> &nbsp;<%=data.qa_mb_id%></span--%>
<%--                  >--%>
<%--                            <span class="qna_list_date"--%>
<%--                            ><%=data.qa_insert_datetime_cut%></span--%>
<%--                            >--%>
<%--                            <div style="clear:both;"></div>--%>
<%--                        </div>--%>

<%--                        <div--%>
<%--                                class="qna_comment_wrap"--%>
<%--                                id="update_qna_<%=data.qa_id%>"--%>
<%--                        ></div>--%>

<%--                        <div class="qna_memo" id="qna_memo_<%=data.qa_id%>">--%>
<%--                            <%=data.qa_memo%>--%>
<%--                        </div>--%>

<%--                        <% if(data.qa_access=="1"){ %>--%>
<%--                        <div class="qna_list_btn">--%>
<%--                            <button--%>
<%--                                    type="button"--%>
<%--                                    class="update"--%>
<%--                                    data-qa_id="<%=data.qa_id%>"--%>
<%--                            >--%>
<%--                                수정--%>
<%--                            </button>--%>
<%--                            <button--%>
<%--                                    type="button"--%>
<%--                                    class="delete"--%>
<%--                                    data-qa_id="<%=data.qa_id%>"--%>
<%--                            >--%>
<%--                                삭제--%>
<%--                            </button>--%>
<%--                        </div>--%>
<%--                        <% } %>--%>
<%--                    </li>--%>
<%--                    <% }); %>--%>
<%--                </script>--%>

                <script>
                    var is_last_qna = 0;
                    var qna_page = 1;
                    var qna_total_page = "0";

                    $(document).on("click", ".qna_list_more", function (e) {
                        if (is_last_qna == 0) {
                            ++qna_page;
                            item_qna_list_load();
                        }
                        if (qna_total_page <= qna_page) {
                            $(".qna_list_more").hide();
                        }
                    });

                    function item_qna_list_load() {
                        $("#qna_loading_wait").show();
                        if (qna_page == 1) {
                            $(".qna_list").html("");
                        }
                        $.ajax({
                            type: "get",
                            url: "item_qna_list.php",
                            data: "json=list&page=" + qna_page + "&it_id_gp=" + it_id_gp,
                            dataType: "json",
                            cache: false,
                            success: function (data) {
                                if (data.qna_list.list.length > 0) {
                                    template = _.template($("#item_qna_list_script").html());
                                    var template_html = "";
                                    for (var i = 0; i < data.qna_list.list.length; i++) {
                                        template_html += template({
                                            qa_id: data.qna_list.list[i].qa_id,
                                            qa_insert_datetime_cut:
                                            data.qna_list.list[i].qa_insert_datetime_cut,
                                            qa_access: data.qna_list.list[i].qa_access,
                                            qa_mb_id: data.qna_list.list[i].qa_mb_id,
                                            qa_memo: data.qna_list.list[i].qa_memo,
                                            reply: data.qna_list.list[i].reply,
                                        });
                                    }
                                    $(".qna_list").append(template_html);
                                }

                                $("#qna_loading_wait").hide();

                                if (data.qna_list.total_page <= data.page) {
                                    is_last_qna++;
                                }
                            },
                            error: function (e) {
                                console.log(e);
                                console.log("Ajax failed");
                            },
                        });
                    }
                    $(document).on(
                        "click",
                        ".btn_item_qna_cancel_button",
                        function () {
                            $("#mode").val("");
                            $("#qa_id").val("");
                            $("#qa_parent").val("");
                            $(".qna_comment_wrap").html("");
                            $(".qna_memo").show();
                            $(".qna_list_btn").show();
                        }
                    );

                    $(document).on("click", ".qna_list .update", function () {
                        var qa_id = $(this).data("qa_id");
                        $("#mode").val("update");
                        $("#qa_id").val(qa_id);
                        $(".qna_comment_wrap").html("");
                        $("#update_qna_" + qa_id).html($("#qna_form").html());
                        $(".qna_list_btn").show();
                        $("#qa_li_" + qa_id + " .qna_list_btn").hide();
                        $("#item_qna_list .btn_item_qna_button").val("수정하기");
                        $(".qna_memo").show();
                        $("#qna_memo_" + qa_id).hide();
                        $("#item_qna_list .qa_memo")
                            .val($("#qna_memo_" + qa_id).html())
                            .focus();
                    });

                    $(document).on("click", ".reply", function () {
                        var qa_id = $(this).data("qa_id");
                        $("#mode").val("reply");
                        $("#qa_parent").val(qa_id);
                        $(".qna_comment_wrap").html("");
                        $("#reply_qna_" + qa_id).html($("#qna_form").html());
                        $(".qna_list_btn").show();
                        $("#qa_li_" + qa_id + " .qna_list_btn").hide();
                        $("#item_qna_list .btn_item_qna_button").val("답변달기");
                        $(".qna_memo").show();
                        $("#item_qna_list .qa_memo").focus();
                    });

                    $(document).on("click", ".qna_list .delete", function () {
                        var qa_id = $(this).data("qa_id");
                        if (confirm("삭제하시겠습니까?")) {
                            $.ajax({
                                type: "post",
                                data: {
                                    mode: "delete",
                                    qa_id: qa_id,
                                },
                                url: "item_qna_form.php",
                                success: function (response) {
                                    var json = $.parseJSON(response);
                                    if (json["result"] == "ok") {
                                        $("#qa_li_" + qa_id).remove();
                                        if ($(".qna_list li").length < 1) {
                                            qna_page = 1;
                                            item_qna_list_load();
                                        }
                                    } else {
                                        alert(json["msg"]);
                                    }
                                },
                            });
                        }
                    });

                    $(document).on("click", ".btn_item_qna_button", function () {
                        var qa_memo = $("#item_qna_list .qa_memo").val();
                        if (!qa_memo) {
                            alert("내용을 입력해주세요");
                            $("#item_qna_list .qa_memo").focus();
                            return;
                        }
                        $.ajax({
                            type: "post",
                            data: $("#item_qna_list").serialize(),
                            url: "item_qna_form.php",
                            success: function (response) {
                                var json = $.parseJSON(response);
                                if (json["result"] == "ok") {
                                    $(".qa_memo").val("");
                                    qna_page = 1;
                                    item_qna_list_load();
                                } else {
                                    alert(json["msg"]);
                                }
                            },
                        });
                    });

                    $(document).on("click", ".btn_item_qna_submit", function () {
                        var qa_memo = $("#item_qna_form .qa_memo").val();
                        if (!qa_memo) {
                            alert("내용을 입력해주세요");
                            $("#item_qna_form .qa_memo").focus();
                            return;
                        }
                        $.ajax({
                            type: "post",
                            data: $("#item_qna_form").serialize(),
                            url: "item_qna_form.php",
                            success: function (response) {
                                var json = $.parseJSON(response);
                                if (json["result"] == "ok") {
                                    $(".qa_memo").val("");
                                    qna_page = 1;
                                    item_qna_list_load();
                                    $("#item_qna_form .qa_memo").focus();
                                } else {
                                    alert(json["msg"]);
                                }
                            },
                        });
                    });
                </script>
            </div>

            <div class="deals_floating_opt">
                <div class="inner right_order" style="height: 0px">
                    <div class="order_top">
                        <div class="opt_popup">
                            <form
                                    name="item_frm"
                                    id="item_frm"
                                    method="post"
                                    action="cart.php"
                            >
                                <input type="hidden" name="it_id" value="1669277971" />
                                <input type="hidden" name="mode" value="insert" />
                                <input type="hidden" name="move" id="move" />
                                <div
                                        class="opt_cal_list"
                                        id="it_id_1669277971"
                                        style="height: 0px"
                                >
                                    <div class="append_box append_box616575">
                                        <input
                                                type="hidden"
                                                name="opt_id[]"
                                                class="opt_id basic"
                                                value="616575"
                                        />
                                        <p class="append_opt_name">
                                            <c:out value="${list.itemName}"></c:out>
                                        </p>
                                        <p class="append_count">
                                            <a class="count_minus"></a>
                                            <input
                                                    type="number"
                                                    pattern="[0-9]*"
                                                    name="opt_cnt[]"
                                                    value="1"
                                                    class="opt_cnt"
                                                    data-it_buy_qty_min="1"
                                                    data-it_buy_qty_max="9999999"
                                                    data-opt_id="616575"
                                                    data-price="<c:out value="${list.itemPrice2}"/>"
                                                    data-stock="19"
                                                    data-it_opt_cnt="0"
                                                    data-it_gp_cnt="1"
                                                    data-it_buy_qty_type="1"
                                                    data-it_stock_type="2"
                                                    data-it_id="1669277971"
                                            />
                                            <a class="count_plus"></a>
                                        </p>
                                        <p class="append_price_del">
                                            <span class="append_price"><c:out value="${list.itemPrice2}"/><b>원</b></span>
                                        </p>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="order_bottom">
                        <div class="opt_cal_total">
                            <div class="total_price">
                                <div class="tit">총구매금액</div>
                                <div class="t_price">
                      <span class="opt_cal_total_span"><c:out value="${item.itemPrice2}"/></span
                      ><span>원</span>
                                </div>
                            </div>
                        </div>
                        <div class="opt_cart_order_btn on">
                            <ul>
                                <li>
                                    <a class="item_btn item_btn_cart opt_cart_btn"
                                    >장바구니</a
                                    >
                                </li>
                                <li>
                                    <a class="item_btn item_btn_buy opt_order_btn"
                                    >구매하기</a
                                    >
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <span id="bottom"></span>

        <!-- 찜하기팝업 -->
        <div id="zzim_popup">
            <div class="zzim_msg off"><p>찜하기팝업</p></div>
        </div>
        <!-- //찜하기팝업 -->

        <!-- 판매알림팝업 -->
        <div id="alarm_popup">
            <div class="alarm_msg off"><p>판매알림팝업</p></div>
        </div>
        <!-- //판매알림팝업 -->

        <!-- 장바구니담기팝업 -->
        <div id="cart_popup">
            <div>
                <p>장바구니에 상품이 담겼습니다.</p>
                <a href="cart.php">구매하러가기</a>
            </div>
        </div>
        <!-- 장바구니담기팝업 -->

        <script>

            var it_id = "1669277971";
            var it_id_gp = "1544417590";
            var it_buy_qty = parseInt("");
            var it_opt_depth = parseInt("");
            var it_url = location.href;
            var it_img =
                "https://4989farmer.co.kr/data/list/1669277984991028216_oHf3NQcS_EC8B9DED928822.png";
            var it_name = "초이스등급 1855 소찜갈비 1kg(면)";
            var it_description =
                "양념,무,밤 등을 첨가하면 더욱맛있는 원산지 : 상품상세참조";

            new ClipboardJS(".copy_btn");

            $(document).ready(function () {
                var swiperB = new Swiper(".sam_item_list", {
                    slidesPerView: 6,
                    spaceBetween: 10,
                    loop: true,
                    navigation: {
                        nextEl: ".relation_left",
                        prevEl: ".relation_right",
                    },
                });
            });

            $(document).on("click", ".card_benefit", function () {
                $("#card_benefit_popup").toggle();
                $("#card_benefit_popup_memo").animate({ scrollTop: 0 }, 0);
            });

            $(document).on("click", "#card_benefit_popup_close_btn", function () {
                $("#card_benefit_popup").hide();
            });

            $(document).on("click", ".sns_share_btn", function () {
                $("#sns_share_popup").toggle();
            });

            $(document).on("click", "#sns_share_popup_close_btn", function () {
                $("#sns_share_popup").hide();
            });

            $(window).scroll(function () {
                var scrollTop = $(document).scrollTop();
                if (scrollTop >= $(".nfor_line").offset().top + 1) {
                    $(".right_order").addClass("junadown").css("height", "");
                    $(".tab-wrap").addClass("top");
                } else {
                    var scrollBottom = $(window).scrollTop() + $(window).height();
                    bottomtop = scrollBottom - $(".nfor_line").offset().top;
                    bottomtop = bottomtop - 90;
                    $(".right_order")
                        .removeClass("junadown")
                        .css("height", bottomtop + "px");
                    $(".right_order .opt_cal_list").css(
                        "height",
                        bottomtop / 2 + "px"
                    );
                    $(".tab-wrap").removeClass("top");
                }
                var scrollHeight = $(document).height();
                var scrollPosition = $(window).height() + $(window).scrollTop();
                bottom_height = scrollHeight - scrollPosition;
                $(".junadown").css("height", bottom_height + "px");
            });

            $(document).on("click", ".tabmenu li", function () {
                $(".tabmenu li").removeClass("active");
                $(this).addClass("active");
                $(".tab-cont").hide();
                $($(this).find("a").data("tab")).show();
            });

            $(document).on("click", ".it_img_s", function () {
                $(".it_img_s").removeClass("it_img_s_on");
                $(this).addClass("it_img_s_on");

                $("#it_img").attr("src", $(this).attr("src"));
            });

            $(document).on("click", ".btn_sns", function () {
                $("#sns_popup").show();
            });

            $(document).on("click", ".sns_close_btn", function () {
                $("#sns_popup").hide();
            });

            $(document).on("click", ".opt_cart_order_btn", function () {
                if (!$(this).hasClass("on")) {
                    alert("옵션을 선택해주세요");
                }
            });

            $(document).on(
                "click",
                ".opt_cart_order_btn.on .opt_cart_btn",
                function () {
                    nfor_cart_order("cart");
                }
            );

            $(document).on(
                "click",
                ".opt_cart_order_btn.on .opt_order_btn",
                function () {
                    nfor_cart_order("order");
                }
            );

            function nfor_cart_order(ty) {
                $("#move").val(ty);
                $.ajax({
                    type: "post",
                    url: "cart.php",
                    cache: false,
                    data: $("#item_frm").serialize(),
                    success: function (response) {
                        var json = $.parseJSON(response);
                        if (json["result"] == "ok") {
                            if (ty == "order") {
                                location.href = "cart_order.php?it_id=" + it_id;
                            } else if (ty == "cart") {
                                location.href = "cart.php";
                            } else if (ty == "naverpay") {
                                location.href = "naverpay_order.php?it_id=" + it_id;
                            } else {
                            }
                        } else {
                            alert(json["msg"]);
                        }
                    },
                });
            }
            //-->
        </script>

        <script>
            // 옵션수량 증가 및 차감
            $(document).on(
                "blur change click",
                ".opt_popup .append_count a, .opt_popup .append_count .opt_cnt",
                function () {
                    if ($(this).hasClass("opt_cnt")) {
                        var obj = $(this);
                    } else {
                        var obj = $(this).parent().find(".opt_cnt");
                    }
                    var it_buy_qty_min = parseInt(obj.data("it_buy_qty_min")); // 최소구매수량
                    var it_buy_qty_max = parseInt(obj.data("it_buy_qty_max")); // 최대구매수량
                    var it_buy_qty_type = obj.data("it_buy_qty_type"); // 1제한없음 2구매제한
                    var it_stock_type = obj.data("it_stock_type"); // 1무한정판매 2재고량에따름
                    var it_gp_cnt = parseInt(obj.data("it_gp_cnt")); // 몇개씩 증가
                    var it_opt_cnt = parseInt(obj.data("it_opt_cnt")); // 기본옵션갯수
                    var ea_opt_cnt = parseInt(obj.val()); // 수량
                    var ea_stock = parseInt(obj.data("stock")); // 재고수량
                    var opt_id = parseInt(obj.data("opt_id")); // 옵션아이디
                    var it_id = parseInt(obj.data("it_id")); // 상품코드

                    if ($(this).hasClass("count_plus")) {
                        ea_opt_cnt = ea_opt_cnt + it_gp_cnt;
                        if (
                            it_buy_qty_type == 2 &&
                            opt_cnt_total("opt_popup", it_id) + it_gp_cnt > it_buy_qty_max
                        ) {
                            alert(
                                "해당상품의 1인당 최대 구매 수량은 " +
                                it_buy_qty_max +
                                "개 입니다.\n구매 수량을 확인해주세요."
                            );
                            ea_opt_cnt = ea_opt_cnt - it_gp_cnt;
                        }
                        if (ea_opt_cnt > ea_stock) {
                            ea_stock = ea_stock - it_buy_qty_min;
                            ea_stock =
                                Math.floor(ea_stock / it_gp_cnt) * it_gp_cnt +
                                it_buy_qty_min;
                            alert(
                                "해당옵션은 최대 " + ea_stock + "개 까지 구매가능합니다"
                            );
                            ea_opt_cnt = ea_stock;
                        }
                    }
                    if ($(this).hasClass("count_minus")) {
                        ea_opt_cnt = ea_opt_cnt - it_gp_cnt;
                        if (ea_opt_cnt < it_buy_qty_min) {
                            ea_opt_cnt = it_buy_qty_min;
                        }
                    }
                    if ($(this).hasClass("opt_cnt")) {
                        if (
                            isNaN(ea_opt_cnt) ||
                            ea_opt_cnt < it_buy_qty_min ||
                            !ea_opt_cnt
                        ) {
                            // 숫자가아니거나 최소구매수량보다 작거나 값이없으면
                            ea_opt_cnt = it_buy_qty_min;
                        }
                        if ((ea_opt_cnt - it_buy_qty_min) % it_gp_cnt != 0) {
                            alert("옵션은 " + it_gp_cnt + "개 단위로 주문이 가능합니다");
                            ea_opt_cnt = it_buy_qty_min;
                        }
                        if (
                            it_buy_qty_type == 2 &&
                            opt_cnt_total("opt_popup", it_id) > it_buy_qty_max
                        ) {
                            alert(
                                "해당상품의 1인당 최대 구매 수량은 " +
                                it_buy_qty_max +
                                "개 입니다.\n구매 수량을 확인해주세요."
                            );
                            ea_opt_cnt = it_buy_qty_min;
                        }
                        if (ea_opt_cnt > ea_stock) {
                            ea_stock = ea_stock - it_buy_qty_min;
                            ea_stock =
                                Math.floor(ea_stock / it_gp_cnt) * it_gp_cnt +
                                it_buy_qty_min;
                            alert(
                                "해당옵션은 최대 " + ea_stock + "개 까지 구매가능합니다"
                            );
                            ea_opt_cnt = ea_stock;
                        }
                    }
                    $(".append_box" + opt_id + " .opt_cnt").val(ea_opt_cnt);
                    cal_total();
                }
            );
            // 옵션삭제
            $(document).on("click", ".opt_del", function () {
                var opt_id = $(this).data("opt_id");
                $(".append_box" + opt_id).remove();
                if (!$(".basic").length) {
                    $(".opt_cal_list").html(""); // 마지막남은 기본옵션이라면 모두삭제
                    $(".opt_list ul li").removeClass("on"); // 모든체크박스삭제
                }
                // 해당옵션 체크상태 삭제
                $(".opt_popup").each(function (index) {
                    $(this)
                        .find("#opt_li_" + opt_id)
                        .removeClass("on");
                });
                cal_total();
            });
            // 총구매금액계산
            function cal_total() {
                var opt_cal_total_span = 0;
                var ea_price = 0;
                $(".opt_cal_list:eq(0) .opt_cnt").each(function () {
                    ea_price =
                        parseInt($(this).data("price")) * parseInt($(this).val());
                    opt_cal_total_span += ea_price;
                    $(".append_box" + $(this).data("opt_id") + " .append_price").html(
                        number_format(ea_price) + "<b>원</b>"
                    );
                });
                $(".opt_cal_total_span").html(number_format(opt_cal_total_span));
                if (!$(".append_box").length) {
                    $(".opt_cal_total").addClass("hide");
                    $(".opt_cart_order_btn").removeClass("on");
                } else {
                    $(".opt_cal_total").removeClass("hide");
                    $(".opt_cart_order_btn").addClass("on");
                    $(".opt_cal_list").show();
                }
            }
            // 타이틀선택
            $(document).on("click", ".opt_title", function () {
                // 추가옵션을 클릭했을때 기본옵션이 없으면 체크
                if ($(this).hasClass("aopt_title")) {
                    if ($(".basic").length < 1) {
                        alert("기본옵션을 먼저 선택해주세요");
                        return;
                    }
                }
                // 목록 보이고 닫기
                var opt_index = $(".opt_title").index(this);

                if ($(".opt_list:eq(" + opt_index + ")").css("display") == "none") {
                    // 옵션이 닫혀있으면
                    // 목록에 옵션이 선택되었다는 체크추가
                    $(".opt_popup .opt_id").each(function () {
                        var opt_li_val = $(this).val();
                        $(".opt_popup").each(function (index) {
                            $(this)
                                .find("#opt_li_" + opt_li_val)
                                .addClass("on");
                        });
                    });
                    // 목록값이 있는지체크
                    if ($.trim($(".opt_ul:eq(" + opt_index + ")").html())) {
                        $(".opt_list").hide();
                        $(".opt_list:eq(" + opt_index + ")").show(); // 해당목록값출력
                    }
                    $(".opt_cal_list").css("min-height", "150px");
                } else {
                    // 옵션목록값닫을때
                    $(".opt_list").hide();
                    $(".opt_cal_list").css("min-height", "auto");
                }
            });
            // 옵션선택
            $(document).on("click", ".opt_list li", function () {
                var it_buy_qty_type = $(this).data("it_buy_qty_type");
                var it_buy_qty_min = parseInt($(this).data("it_buy_qty_min"));
                var it_buy_qty_max = parseInt($(this).data("it_buy_qty_max"));
                var it_gp_cnt = parseInt($(this).data("it_gp_cnt"));
                var it_opt_cnt = parseInt($(this).data("it_opt_cnt"));
                var it_stock_type = parseInt($(this).data("it_stock_type"));
                var opt_soldout = $(this).data("opt_soldout");
                var opt_tobe = $(this).data("opt_tobe");
                var opt_id = $(this).data("opt_id");
                var opt_name = $(this).data("opt_name");
                var opt_stock = parseInt($(this).data("opt_stock"));
                var price = $(this).data("opt_price2");
                var depth = parseInt($(this).data("depth"));
                var next_depth = parseInt($(this).data("depth")) + 1;
                var basic = $(this).data("basic");
                var opt_index = depth - 1;
                var it_id = $(this).data("it_id");
                var opt_value = $(this).data("opt_value");

                // 기본옵션 선택할때 타이틀값 기본으로 설정
                if (basic) {
                    $(".opt_popup").each(function (index) {
                        for (var i = depth; i < it_opt_cnt; i++) {
                            $(this)
                                .find(".opt_basic .opt_title:eq(" + i + ")")
                                .html(
                                    $(".opt_basic .opt_title:eq(" + i + ")").data("opt_name")
                                );
                        }
                    });
                }
                if ($(this).hasClass("opt_tobe")) {
                    alert("선택하신 옵션은 입고예정인 옵션입니다");
                    return;
                }
                if ($(this).hasClass("opt_soldout")) {
                    alert("선택하신 옵션은 재고가 없습니다");
                    return;
                }
                if (depth == it_opt_cnt || !basic) {
                    // 마지막옵션선택이거나 추가옵션이면
                    var is_select = 0;
                    $(".opt_popup .opt_id").each(function () {
                        if ($(this).val() == opt_id) {
                            is_select = 1;
                        }
                    });
                    if (is_select) {
                        alert("이미 선택하신 옵션입니다");
                        return;
                    }
                    if (
                        opt_cnt_total("opt_popup", it_id) + it_buy_qty_min >
                        it_buy_qty_max
                    ) {
                        alert(
                            "해당상품의 1인당 최대 구매 수량은 " +
                            it_buy_qty_max +
                            "개 입니다.\n구매 수량을 확인해주세요."
                        );
                        return;
                    }
                }
                $(".opt_list").hide(); // 옵션 리스트 제거
                $(".opt_popup").each(function (index) {
                    $(this)
                        .find(".opt_title:eq(" + opt_index + ")")
                        .html(opt_name); // 선택된 옵션명 지정
                });
                $(".opt_select").removeClass("on"); // 옵션 선택상태 제거

                $(".opt_cal_list").css("min-height", "auto"); // 옵션 높이 수정

                if (depth == it_opt_cnt || !basic) {
                    // 마지막옵션선택이거나 추가옵션이면
                    if (basic == "1") {
                        // 기본옵션이면
                        $(".opt_popup").each(function (index) {
                            $(this).find(".opt_select:eq(0)").addClass("on"); // 첫번째셀렉트선택
                        });
                        var append_opt_name = opt_value; // 옵션명지정
                        var class_basic = " basic"; // 클래스명추가
                    } else {
                        // 추가옵션이면

                        var append_opt_name = opt_name; // 옵션명지정
                        var class_basic = "";
                    }
                    // 기본옵션의 옵션목록값 삭제(2차분류이상)
                    $(".opt_popup").each(function (index) {
                        for (
                            var i = 1;
                            i < $(this).find(".opt_basic .opt_ul").length;
                            i++
                        ) {
                            $(this)
                                .find(".opt_basic .opt_ul:eq(" + i + ")")
                                .html("");
                        }
                    });
                    // 옵션명 초기화
                    $(".opt_title").each(function () {
                        $(this).html($(this).data("opt_name"));
                    });
                    if (it_stock_type == "1") {
                        // 판매재고 무한정판매일경우
                        opt_stock = "9999999";
                    }
                    if (
                        opt_tobe == "1" ||
                        opt_soldout == "2" ||
                        (it_buy_qty_type == "2" && opt_stock < it_buy_qty_min)
                    ) {
                        opt_stock = "0";
                    }
                    template = _.template($("#opt_append_script").html());
                    var template_html = template({
                        opt_id: opt_id,
                        class_basic: class_basic,
                        append_opt_name: append_opt_name,
                        price: price,
                        opt_stock: opt_stock,
                        it_buy_qty_max: it_buy_qty_max,
                        it_buy_qty_min: it_buy_qty_min,
                        it_opt_cnt: it_opt_cnt,
                        it_buy_qty_type: it_buy_qty_type,
                        it_gp_cnt: it_gp_cnt,
                        it_stock_type: it_stock_type,
                        it_id: it_id,
                    });
                    $(".opt_cal_list").append(template_html);
                    cal_total(); // 합산금액
                } else {
                    // 다음셀렉트 선택
                    $(".opt_popup").each(function (index) {
                        $(this)
                            .find(".opt_select:eq(" + depth + ")")
                            .addClass("on");
                    });
                    // 다음선택옵션 불러옴
                    $.ajax({
                        type: "get",
                        url: nfor_path + "/opt_popup.php",
                        data:
                            "json=option&it_id=" +
                            it_id +
                            "&opt_id=" +
                            opt_id +
                            "&depth=" +
                            next_depth,
                        dataType: "json",
                        cache: false,
                        success: function (data) {
                            template = _.template($("#opt_li_script").html());
                            var template_html = "";
                            for (var i = 0; i < data.list.length; i++) {
                                template_html += template({
                                    opt_value: data.list[i].opt_value,
                                    opt_tobe: data.list[i].opt_tobe,
                                    opt_soldout: data.list[i].opt_soldout,
                                    it_stock_type: data.list[i].it_stock_type,
                                    opt_id: data.list[i].opt_id,
                                    opt_name: data.list[i].opt_name,
                                    opt_stock: data.list[i].opt_stock,
                                    depth: data.list[i].depth,
                                    opt_price2: data.list[i].opt_price2,
                                    opt_price2_echo: data.list[i].opt_price2_echo,
                                    basic: data.list[i].basic,
                                    it_buy_qty_min: data.list[i].it_buy_qty_min,
                                    it_buy_qty_max: data.list[i].it_buy_qty_max,
                                    it_opt_cnt: data.list[i].it_opt_cnt,
                                    it_buy_qty_type: data.list[i].it_buy_qty_type,
                                    it_gp_cnt: data.list[i].it_gp_cnt,
                                    it_id: data.list[i].it_id,
                                });
                            }
                            $(".ul_opt" + next_depth).html(template_html);
                        },
                        error: function () {
                            console.log("Ajax failed");
                        },
                    });
                }
            });
        </script>
<%--        <script type="text/html" id="opt_li_script">--%>
<%--            <li <% if(it_opt_cnt==depth){ %>id="opt_li_<%=opt_id%>" class="<% if(opt_soldout=="2"){ %>opt_soldout<% } %> <% if(opt_tobe=="1"){ %>opt_tobe<% } %>" data-opt_value="<%=opt_value%>" data-opt_soldout="<%=opt_soldout%>" data-opt_tobe="<%=opt_tobe%>" data-opt_stock="<%=opt_stock%>"<% } %> data-depth="<%=depth%>" data-opt_id="<%=opt_id%>" data-opt_name="<%=opt_name%>" data-opt_price2="<%=opt_price2%>" data-it_gp_cnt="<%=it_gp_cnt%>" data-it_opt_cnt="<%=it_opt_cnt%>" data-it_buy_qty_min="<%=it_buy_qty_min%>" data-it_buy_qty_max="<%=it_buy_qty_max%>" data-it_stock_type="<%=it_stock_type%>" data-it_buy_qty_type="<%=it_buy_qty_type%>" data-it_id="<%=it_id%>" <% if(basic==1){ %> data-basic="1"<% } %>>--%>
<%--                <div>--%>
<%--                    <%=opt_name%>--%>
<%--                    <% if(it_opt_cnt==depth){ %>--%>

<%--                    <% if(opt_tobe=="1"){ %>--%>
<%--                    (입고예정)--%>
<%--                    <% } else{ %>--%>
<%--                    <% if(opt_soldout=="2"){ %>(품절)<% } else{ %><% if(it_stock_type=="2"){ %> - 남은수량 : <%=opt_stock%>개<% } %><% } %>--%>
<%--                    <% } %>--%>

<%--                    <% } %>--%>
<%--                </div>--%>
<%--                <% if(it_opt_cnt==depth){ %>--%>
<%--                <b><%=opt_price2_echo%><span>원</span></b>--%>
<%--                <% } %>--%>
<%--            </li>--%>
<%--        </script>--%>
<%--        <script type="text/html" id="opt_append_script">--%>
<%--            <div class="append_box append_box<%=opt_id%>">--%>
<%--                <input--%>
<%--                        type="hidden"--%>
<%--                        name="opt_id[]"--%>
<%--                        class="opt_id <%=class_basic%>"--%>
<%--                        value="<%=opt_id%>"--%>
<%--                />--%>
<%--                <p class="append_opt_name"><%=append_opt_name%></p>--%>
<%--                <p class="append_count">--%>
<%--                    <a class="count_minus"></a>--%>
<%--                    <input--%>
<%--                            type="number"--%>
<%--                            pattern="[0-9]*"--%>
<%--                            name="opt_cnt[]"--%>
<%--                            value="<%=it_buy_qty_min%>"--%>
<%--                            class="opt_cnt"--%>
<%--                            data-it_buy_qty_min="<%=it_buy_qty_min%>"--%>
<%--                            data-it_buy_qty_max="<%=it_buy_qty_max%>"--%>
<%--                            data-opt_id="<%=opt_id%>"--%>
<%--                            data-price="<%=price%>"--%>
<%--                            data-stock="<%=opt_stock%>"--%>
<%--                            data-it_opt_cnt="<%=it_opt_cnt%>"--%>
<%--                            data-it_gp_cnt="<%=it_gp_cnt%>"--%>
<%--                            data-it_buy_qty_type="<%=it_buy_qty_type%>"--%>
<%--                            data-it_stock_type="<%=it_stock_type%>"--%>
<%--                            data-it_id="<%=it_id%>"--%>
<%--                    />--%>
<%--                    <a class="count_plus"></a>--%>
<%--                </p>--%>
<%--                <p class="append_price_del">--%>
<%--              <span class="append_price"--%>
<%--              ><%=price*it_buy_qty_min%><b>원</b></span--%>
<%--              >--%>
<%--                    <a class="opt_del" data-opt_id="<%=opt_id%>"></a>--%>
<%--                </p>--%>
<%--            </div>--%>
<%--        </script>--%>



        <style>
            .opt_popup {
                box-sizing: border-box;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
            }
            .opt_tobe {
                color: #888;
            }
            .opt_soldout {
                color: #888;
            }

            .append_count {
                display: flex;
                align-items: center;
                justify-content: space-between;
                flex-direction: row;
                width: 100px;
                height: 24px;
                background-color: #fff;
                border: 1px solid #c2c7cc;
                margin-top: 5px;
            }
            .append_count .opt_cnt {
                display: inline-block;
                border: none;
                padding: 0px;
                width: 14px !important;
                height: 22px !important;
                line-height: 22px;
                color: #000;
                vertical-align: top;
                appearance: none;
                border: none;
                font-size: 11px;
            }
            .append_count .opt_cnt:focus {
                outline: none;
            }
            .append_count .count_plus {
                display: inline-block;
                cursor: pointer;
                width: 24px;
                height: 24px;
                background-color: #fff;
                background: url(../../../../../resources/img/pl_mi.png) no-repeat;
                background-position: -24px -0px;
            }
            .append_count .count_plus:after {
                content: "+";
                display: block;
                clear: both;
                font-size: 12px;
                color: #fff;
            }
            .append_count .count_minus {
                display: inline-block;
                cursor: pointer;
                width: 24px;
                height: 24px;
                background-color: #fff;
                background: url(../../../../../resources/img/pl_mi.png) no-repeat;
                background-position: -0px -0px;
            }
            .append_count .count_minus:after {
                content: "-";
                display: block;
                clear: both;
                font-size: 12px;
                color: #fff;
            }

            .append_opt_name {
                color: #666;
                font-size: 12px;
            }
            .append_box {
                margin-top: -1px;
                position: relative;
                padding: 15px;
                box-sizing: border-box;
                -webkit-box-sizing: border-box;
                width: 100%;
                border: solid 1px #e5e5e5;
                background-color: #f4f4f4;
            }
            .append_price {
                display: inline-block;
                vertical-align: middle;
                color: #d32f2f;
                font-size: 16px;
                font-family: tahoma;
                font-weight: bold;
                line-height: 31px;
                height: 31px;
            }
            .opt_del {
                margin-left: 7px;
                display: inline-block;
                vertical-align: middle;
                cursor: pointer;
                padding: 0px;
                padding: 0px;
                width: 26px;
                height: 26px;
                background: url("/skin/demo/img/cart_del.png") no-repeat;
            }
            .append_price_del {
                display: inline-block;
                padding: 0px;
                margin: 0px;
                vertical-align: middle;
                height: 31px;
                position: absolute;
                right: 10px;
                bottom: 10px;
            }
            .opt_cal_list {
                padding-top: 5px;
            }

            .opt_select {
                width: 100%;
                margin-bottom: 5px;
                border: solid 1px #dcdcdc;
                position: relative;
                box-sizing: border-box;
                -webkit-box-sizing: border-box;
            }
            .opt_select.on {
                border: solid 1px #666;
            }
            .opt_select .opt_title {
                box-sizing: border-box;
                -webkit-box-sizing: border-box;
                width: 100%;
                color: #666;
                font-size: 12px;
                height: 38px;
                line-height: 38px;
                padding-left: 10px;
                padding-right: 20px;
                position: relative;
                cursor: pointer;
            }
            .opt_select .opt_title:after {
                content: "";
                display: block;
                background: transparent url(/skin/nfor/img/layout.png) no-repeat;
                background-size: 320px auto;
                background-position: -100px -400px;
                width: 25px;
                height: 25px;
                position: absolute;
                right: 4px;
                top: 7px;
            }

            .opt_list {
                display: none;
                height: 241px;
                overflow-y: scroll;
                -webkit-overflow-scrolling: touch;
                position: absolute;
                left: -1px;
                top: 38px;
                z-index: 88;
                background-color: #fff;
                width: 100%;
                border: solid 1px #dcd3d3;
            }
            .opt_list li {
                border-bottom: solid 1px #e5e5e5;
                font-size: 12px;
                padding: 12px 10px 10px 10px;
                cursor: pointer;
            }
            .opt_list li div {
                overflow: hidden;
            }
            .opt_list li b {
                color: #ff0000;
                font-family: Verdana;
            }
            /*.opt_list li.on {*/
            /*    background: url(/skin/nfor/img/layout.png) no-repeat 100% -550px;*/
            /*    background-size: 320px auto;*/
            /*    padding-right: 40px;*/
            /*}*/
        </style>
    </div>
</div>

<!-- 푸터 -->
<%@ include file="footer.jsp" %>

<div id="left_banner">
    <ul></ul>
</div>
<div id="right_banner">
    <ul></ul>
    <div class="today_view">
        <ul>
            <li class="today_view_li">
                <a href="#" class="today_item">
              <span class="today_ico"
              ><i class="fa-regular fa-heart"></i>
              </span>
                    <span class="today_tit">찜한상품</span>
                </a>
            </li>
            <li class="today_view_li">
                <a href="#" class="today_item">
              <span class="today_ico"
              ><i class="fa-regular fa-cart-arrow-down"></i>
              </span>
                    <span class="today_tit">장바구니 <b>0</b></span>
                </a>
            </li>
            <li class="today_view_li">
                <a href="#" class="recent_view_tit">최근본상품<b>0</b></a>
                <ul class="recent_list_ul"></ul>
            </li>
        </ul>
    </div>
    <!--
<div class="top_bottom">
	<a href="javascript:scroll_move('top')" class="scrollbtn"> <img src="/skin/demo/img/top.png" alt=""></a>
	<a href="javascript:scroll_move('bottom')" class="scrollbtn"><img src="/skin/demo/img/bown.png" alt=""></a>
</div>	 -->
</div>
<script>
    $(document).on("click", ".btn_zzim", function () {
        var it_id = $(this).data("it_id");
        var btn_zzim = $(this);
        $.ajax({
            type: "post",
            data: "mode=zzim&it_id=" + it_id,
            url: "item.php",
            success: function (response) {
                var json = $.parseJSON(response);
                if (json["result"] == "login") {
                    alert("로그인하셔야 이용가능합니다");
                } else if (json["result"] == "delete") {
                    btn_zzim.removeClass("on");
                    btn_zzim.find("span").html(json["zzim_cnt"]);
                } else if (json["result"] == "insert") {
                    btn_zzim.addClass("on");
                    btn_zzim.find("span").html(json["zzim_cnt"]);
                } else {
                    alert(json["msg"]);
                }
            },
        });
    });
    $(function () {
        $("[data-countdown]").each(function () {
            var $this = $(this),
                finalDate = $(this).data("countdown");
            $this.countdown(finalDate, function (event) {
                var totalHours = event.offset.totalDays * 24 + event.offset.hours;

                if (event.offset.totalDays < 1) {
                    $this.html(event.strftime(event.offset.hours + ":%M:%S"));
                } else {
                    $this.html(
                        event.strftime(
                            event.offset.totalDays + "일 " + event.offset.hours + ":%M:%S"
                        )
                    );
                }
            });
        });
    });
</script>
<!-- 부트스트렙 -->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"
></script>
</body>
</html>
