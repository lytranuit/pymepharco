<!DOCTYPE html>
<!-- saved from url=(0020)https://hoptacxa.vn/ -->
<html lang="vi-VN" class="js">

<?php $ver = 2 ?>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="<?= $title ?>">
    <meta name="keywords" content="">
    <meta property="og:url" content="<?= base_url() ?>">
    <meta property="og:title" content="<?= $title ?>">
    <meta property="og:type" content="article">
    <meta property="og:description" content="">
    <meta property="og:image" content="<?= base_url("assets/images/favicon.png?v=$ver") ?>">

    <meta name="robots" content="index,follow" />
    <link rel="canonical" href="<?= base_url() ?>">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<?= base_url("assets/images/favicon.png?v=$ver") ?>">

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="author" content="daotran">
    <meta name="copyright" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link href="<?= base_url("/assets/css/menu.css") ?>" rel="stylesheet" type="text/css">
    <link href="<?= base_url("/assets/css/main.css") ?>" rel="stylesheet" type="text/css">
    <link href="<?= base_url("/assets/css/resp.cs") ?>s" rel="stylesheet" type="text/css">
    <link href="<?= base_url("/assets/css/infoblock.css") ?>" rel="stylesheet" type="text/css">
    <link href="<?= base_url("/assets/css/infoblockResp.css") ?>" rel="stylesheet" type="text/css">
    <link href="<?= base_url("/assets/css/slider.css") ?>" rel="stylesheet" type="text/css"><!-- Facebook Pixel Code -->

    <link href="<?= base_url("/assets/css/bootstrap-grid.css") ?>" rel="stylesheet" type="text/css">
    <!-- CSS -->
    <?php if (!empty($stylesheet_tag)) : ?>
        <?php foreach ($stylesheet_tag as $url) : ?>
            <link href="<?= $url ?>" rel="stylesheet" />
        <?php endforeach ?>
    <?php endif ?>
    <?= $this->renderSection('style') ?>
    <title><?= $title ?></title>
</head>


<body>

    <div id="mainContent">

        <?= $this->include('frontend/layouts/_header') ?>

        <?= $this->renderSection("breadcrumb"); ?>

        <?= $this->renderSection("content"); ?>

        <!-- Site Header -->
        <?= $this->include('frontend/layouts/_footer') ?>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

        <script src="<?= base_url("assets/lib/slick/slick.js?ver=" . $ver) ?>"></script>
        <script src="<?= base_url("assets/js/main.js?ver=" . $ver) ?>"></script>
        <?php if (!empty($javascript_tag)) : ?>
            <?php foreach ($javascript_tag as $url) : ?>
                <script src="<?= $url ?>" type="text/javascript"></script>
            <?php endforeach ?>
        <?php endif ?>
        <?= $this->renderSection('script') ?>
    </div>
</body>

</html>