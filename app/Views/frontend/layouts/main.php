<!DOCTYPE html>
<!-- saved from url=(0020)https://hoptacxa.vn/ -->
<html lang="vi-VN" class="js">

<?php $ver = 7 ?>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="<?= $title ?>">
    <meta name="keywords" content="">
    <meta property="og:url" content="<?= base_url() ?>">
    <meta property="og:title" content="<?= $title ?>">
    <meta property="og:type" content="article">
    <meta property="og:description" content="Pymepharco">
    <meta property="og:image" content="<?= base_url("assets/images/favicon.png?v=$ver") ?>">

    <meta property="og:image:alt" content="Pymepharco">
    <meta name="robots" content="index,follow" />
    <link rel="canonical" href="<?= base_url() ?>">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<?= base_url("assets/images/favicon.png?v=$ver") ?>">

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="author" content="daotran">
    <meta name="copyright" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <link rel="stylesheet" id="font-css" href="https://fonts.googleapis.com/css?family=Arimo%3A400%2C400i%2C700&amp;display=swap&amp;ver=5.7.6" type="text/css" media="all"> -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Fira+Sans:400,500,700" media="all">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link href="<?= base_url("/assets/css/bootstrap-grid.css?v=$ver") ?>" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="<?= base_url("assets/lib/fancybox/jquery.fancybox.css") ?>" type="text/css" media="screen" />
    <link href="<?= base_url("/assets/css/menu.css?v=$ver") ?>" rel="stylesheet" type="text/css">
    <link href="<?= base_url("/assets/css/main.css?v=$ver") ?>" rel="stylesheet" type="text/css">
    <link href="<?= base_url("/assets/css/resp.css?v=$ver") ?>" rel="stylesheet" type="text/css">
    <link href="<?= base_url("/assets/css/infoblock.css?v=$ver") ?>" rel="stylesheet" type="text/css">
    <link href="<?= base_url("/assets/css/infoblockResp.css?v=$ver") ?>" rel="stylesheet" type="text/css">
    <link href="<?= base_url("/assets/css/slider.css?v=$ver") ?>" rel="stylesheet" type="text/css"><!-- Facebook Pixel Code -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <!-- CSS -->
    <?php if (!empty($stylesheet_tag)) : ?>
        <?php foreach ($stylesheet_tag as $url) : ?>
            <link href="<?= $url ?>" rel="stylesheet" />
        <?php endforeach ?>
    <?php endif ?>
    <?= $this->renderSection('style') ?>
    <title><?= $title ?></title>
    <script type="text/javascript">
        var path = "<?= base_url() ?>";
    </script>
</head>


<body>

    <div id="mainContent">

        <?= $this->include('frontend/layouts/_header') ?>

        <?= $this->renderSection("breadcrumb"); ?>

        <?= $this->renderSection("content"); ?>


        <!-- Site Header -->
        <?= $this->include('frontend/layouts/_footer') ?>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

        <script src="<?= base_url("assets/js/jquery.inview.min.js?ver=" . $ver) ?>"></script>
        <script src="<?= base_url("assets/lib/fancybox/jquery.fancybox.js") ?>"></script>
        <script src="<?= base_url("assets/lib/slick/slick.js?ver=" . $ver) ?>"></script>
        <script src="<?= base_url("assets/js/main.js?ver=" . $ver) ?>"></script>
        <?php if (!empty($javascript_tag)) : ?>
            <?php foreach ($javascript_tag as $url) : ?>
                <script src="<?= $url ?>" type="text/javascript"></script>
            <?php endforeach ?>
        <?php endif ?>
        <?= $this->renderSection('script') ?>
    </div>

    <!-- <style>
        .hotline-phone-ring-wrap {
            position: fixed;
            bottom: 0;
            right: 140px;
            z-index: 999999;
        }

        .hotline-phone-ring {
            position: relative;
            visibility: visible;
            background-color: transparent;
            width: 110px;
            height: 110px;
            cursor: pointer;
            z-index: 11;
            -webkit-backface-visibility: hidden;
            -webkit-transform: translateZ(0);
            transition: visibility .5s;
            left: 0;
            bottom: 0;
            display: block;
        }

        .hotline-phone-ring-circle {
            width: 85px;
            height: 85px;
            top: 10px;
            left: 10px;
            position: absolute;
            background-color: transparent;
            border-radius: 100%;
            border: 2px solid #e60808;
            -webkit-animation: phonering-alo-circle-anim 1.2s infinite ease-in-out;
            animation: phonering-alo-circle-anim 1.2s infinite ease-in-out;
            transition: all .5s;
            -webkit-transform-origin: 50% 50%;
            -ms-transform-origin: 50% 50%;
            transform-origin: 50% 50%;
            opacity: 0.5;
        }

        .hotline-phone-ring-circle-fill {
            width: 55px;
            height: 55px;
            top: 25px;
            left: 25px;
            position: absolute;
            background-color: rgba(230, 8, 8, 0.7);
            border-radius: 100%;
            border: 2px solid transparent;
            -webkit-animation: phonering-alo-circle-fill-anim 2.3s infinite ease-in-out;
            animation: phonering-alo-circle-fill-anim 2.3s infinite ease-in-out;
            transition: all .5s;
            -webkit-transform-origin: 50% 50%;
            -ms-transform-origin: 50% 50%;
            transform-origin: 50% 50%;
        }

        .hotline-phone-ring-img-circle {
            background-color: #e60808;
            width: 33px;
            height: 33px;
            top: 37px;
            left: 37px;
            position: absolute;
            background-size: 20px;
            border-radius: 100%;
            border: 2px solid transparent;
            -webkit-animation: phonering-alo-circle-img-anim 1s infinite ease-in-out;
            animation: phonering-alo-circle-img-anim 1s infinite ease-in-out;
            -webkit-transform-origin: 50% 50%;
            -ms-transform-origin: 50% 50%;
            transform-origin: 50% 50%;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .hotline-phone-ring-img-circle .pps-btn-img {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
        }

        .hotline-phone-ring-img-circle .pps-btn-img img {
            width: 20px;
            height: 20px;
        }

        .hotline-bar {
            position: absolute;
            background: rgba(230, 8, 8, 0.75);
            height: 40px;
            width: 180px;
            line-height: 40px;
            border-radius: 3px;
            padding: 0 10px;
            background-size: 100%;
            cursor: pointer;
            transition: all 0.8s;
            -webkit-transition: all 0.8s;
            z-index: 9;
            box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.1);
            border-radius: 50px !important;
            /* width: 175px !important; */
            left: 33px;
            bottom: 37px;
        }

        .hotline-bar>a {
            color: #fff;
            text-decoration: none;
            font-size: 15px;
            font-weight: bold;
            text-indent: 50px;
            display: block;
            letter-spacing: 1px;
            line-height: 40px;
            font-family: Arial;
        }

        .hotline-bar>a:hover,
        .hotline-bar>a:active {
            color: #fff;
        }

        @-webkit-keyframes phonering-alo-circle-anim {
            0% {
                -webkit-transform: rotate(0) scale(0.5) skew(1deg);
                -webkit-opacity: 0.1;
            }

            30% {
                -webkit-transform: rotate(0) scale(0.7) skew(1deg);
                -webkit-opacity: 0.5;
            }

            100% {
                -webkit-transform: rotate(0) scale(1) skew(1deg);
                -webkit-opacity: 0.1;
            }
        }

        @-webkit-keyframes phonering-alo-circle-fill-anim {
            0% {
                -webkit-transform: rotate(0) scale(0.7) skew(1deg);
                opacity: 0.6;
            }

            50% {
                -webkit-transform: rotate(0) scale(1) skew(1deg);
                opacity: 0.6;
            }

            100% {
                -webkit-transform: rotate(0) scale(0.7) skew(1deg);
                opacity: 0.6;
            }
        }

        @-webkit-keyframes phonering-alo-circle-img-anim {
            0% {
                -webkit-transform: rotate(0) scale(1) skew(1deg);
            }

            10% {
                -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
            }

            20% {
                -webkit-transform: rotate(25deg) scale(1) skew(1deg);
            }

            30% {
                -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
            }

            40% {
                -webkit-transform: rotate(25deg) scale(1) skew(1deg);
            }

            50% {
                -webkit-transform: rotate(0) scale(1) skew(1deg);
            }

            100% {
                -webkit-transform: rotate(0) scale(1) skew(1deg);
            }
        }

        @media (max-width: 768px) {
            .hotline-bar {
                display: none;
            }
            .hotline-phone-ring-wrap{
                right: 0px;
            }
        }
    </style>
    <div class="hotline-phone-ring-wrap">
        <div class="hotline-phone-ring">
            <div class="hotline-phone-ring-circle"></div>
            <div class="hotline-phone-ring-circle-fill"></div>
            <div class="hotline-phone-ring-img-circle">
                <a href="tel:0987654321" class="pps-btn-img">
                    <img src="https://nguyenhung.net/wp-content/uploads/2019/05/icon-call-nh.png" alt="Gọi điện thoại" width="50">
                </a>
            </div>
        </div>
        <div class="hotline-bar">
            <a href="tel:0987654321">
                <span class="text-hotline">0987.654.321</span>
            </a>
        </div>
    </div> -->
    <?php if (!session("agree_cookies")) : ?>
        <div id="hidden-content" style="width:400px;color:gray;display:none">
            <?= lang("Custom.agree_cookies") ?>
            <div class="cookieButtons">
                <input type="submit" name="cookiesInstance$btnPrihvati" value="<?= lang("Custom.yes_area") ?>" id="cookiesInstance_btnPrihvati" class="cookiesButton orangeButton buttonAgree">
                <input type="submit" name="cookiesInstance$btnOdustani" value="<?= lang("Custom.cancle") ?>" id="cookiesInstance_btnOdustani" class="cookiesButton buttonCancle">
                <div class="cleaner"></div>
            </div>
        </div>
    <?php endif ?>

    <div id="comming-content" style="width:400px;color:gray;display:none">
        <?= lang("Custom.comming_text") ?>
    </div>
</body>

</html>