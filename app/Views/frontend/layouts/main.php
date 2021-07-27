<!DOCTYPE html>
<!-- saved from url=(0020)https://hoptacxa.vn/ -->
<html lang="vi-VN" class="js">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta property="og:url" content="<?= base_url() ?>">
    <meta property="og:title" content="">
    <meta property="og:type" content="article">
    <meta property="og:description" content="">
    <meta property="og:image" content="<?= base_url("assets/images/favicon.ico?v=1") ?>">

    <meta name="robots" content="index,follow" />
    <link rel="canonical" href="<?= base_url() ?>">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<?= base_url("assets/images/favicon.ico?v=1") ?>">

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="author" content="daotran">
    <meta name="copyright" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

    <link href="<?= base_url("assets/fonts/SFUIText/font.css") ?>" rel="stylesheet">


    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <?php $ver = 2 ?>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="<?= base_url("assets/lib/flatsome/flatsome.css") ?>" rel="stylesheet">
    <link href="<?= base_url("assets/lib/flatsome/flatsome_style.css") ?>" rel="stylesheet">

    <link href="<?= base_url("assets/lib/slick/slick.css") ?>" rel="stylesheet">
    <link href="<?= base_url("assets/css/style.css") ?>" rel="stylesheet">
    <!-- CSS -->
    <?php if (!empty($stylesheet_tag)) : ?>
        <?php foreach ($stylesheet_tag as $url) : ?>
            <link href="<?= $url ?>" rel="stylesheet" />
        <?php endforeach ?>
    <?php endif ?>
    <?= $this->renderSection('style') ?>
    <script>
        /* <![CDATA[ */
        var flatsomeVars = {
            "ajaxurl": "http:\/\/mauweb.monamedia.net\/cleanmate\/wp-admin\/admin-ajax.php",
            "rtl": "",
            "sticky_height": "70",
            "user": {
                "can_edit_pages": false
            }
        };
        /* ]]> */

        var path = '<?= base_url() ?>/';
    </script>

    <title><?= $title ?></title>
</head>


<body class="home page-template page-template-page-transparent-header-light page-template-page-transparent-header-light-php page page-id-16 theme-flatsome ot-vertical-menu woocommerce-js lightbox nav-dropdown-has-arrow">

    <div id="wrapper">

        <?= $this->include('frontend/layouts/_header') ?>

        <?= $this->renderSection("content"); ?>

        <!-- Site Header -->
        <?= $this->include('frontend/layouts/_footer') ?>


        <script src="<?= base_url("assets/lib/jquery-new/jquery.js") ?>"></script>
        <script src="<?= base_url("assets/lib/jquery-new/jquery-migrate.min.js") ?>"></script>

        <script src="<?= base_url("assets/lib/flatsome/hoverIntent.js") ?>"></script>
        <script src="<?= base_url("assets/lib/flatsome/flatsome.js") ?>"></script>
        <script src="<?= base_url("assets/lib/slick/slick.js?ver=" . $ver) ?>"></script>

        <?php if (!empty($javascript_tag)) : ?>
            <?php foreach ($javascript_tag as $url) : ?>
                <script src="<?= $url ?>" type="text/javascript"></script>
            <?php endforeach ?>
        <?php endif ?>
        <?= $this->renderSection('script') ?>
    </div>
</body>

</html>