<?= $this->extend('frontend/layouts/main') ?>


<?= $this->section('content') ?>

<?= view_cell("\App\Libraries\HeaderWidget::breadcrumb") ?>


<div id="pageImage">
    <img id="pageImageInstance_imgPageImage" src="<?= base_url("/assets/images/Header-Kontakt.png") ?>" style="border-width:0px;">

    <div id="pageImageOverlay">
        <div class="circle circleNo1"></div>
        <div class="circle circleNo2"></div>

        <div class="pageTitle" style="opacity: 1; top: 50%; bottom: auto; transform: translateY(-50%);">
            <div class="pageTitleContent">
                <div><span id="pageImageInstance_lblTitle"><?= lang("Custom.product") ?></span></div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid plainText">

    <div class="row justify-center">
        <!-- <div class="col-6 col-sm-6 col-lg-4">
            <figure class="snip1104"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample35.jpg" alt="sample35" />
                <figcaption>
                    <h2>Tracy <span> Logan</span></h2>
                </figcaption>
                <a href="#"></a>
            </figure>
        </div> -->

        <?php foreach ($products as $row) : ?>

            <div class="col-6 col-sm-6 col-lg-4 section-products__item grid">
                <!-- <div class="thumbnail">
                    <a class="bg-image " href="<?= url_product($row) ?>">
                        <img style="width:100%" src="<?= $row->image_url ?>" alt="<?= $row->{pick_language($row, 'name_')} ?>">
                        <span class="hover-state hover-state--tranparent">
                            <span><span></span></span>
                        </span>
                    </a>
                </div>
                <div class="section-products__item__info">
                    <h2 class="section-products__item__info__title" style="text-align: center;"><a href="<?= url_product($row) ?>"><?= $row->{pick_language($row, 'name_')} ?></a></h2>
                </div> -->
                <figure class="effect-layla">
                    <img src="<?= $row->image_url ?>" alt="<?= $row->{pick_language($row, 'name_')} ?>">
                    <figcaption>
                        <h2><?= $row->{pick_language($row, 'name_')} ?></h2>
                        <!-- <p>When Layla appears, she brings an eternal summer along.</p> -->
                        <a href="<?= url_product($row) ?>">Xem thêm</a>
                    </figcaption>
                </figure>
            </div>
        <?php endforeach ?>
    </div>
    <div class="pv3 mv2">
        <div class="pagination">
            <div class="flex align-center justify-center">
                <?= $pager->links() ?>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection() ?>

<?= $this->section("style") ?>
<link href="<?= base_url("/assets/css/sidebar.css") ?>" rel="stylesheet" type="text/css">
<style>
    /* Common style */
    .grid figure {
        position: relative;
        overflow: hidden;
        background: #18a367;
    }

    .grid figure img {
        position: relative;
        display: block;
        min-height: 100%;
        max-width: 100%;
    }

    .grid figure figcaption::before,
    .grid figure figcaption::after {
        pointer-events: none;
    }

    .grid figure figcaption,
    .grid figure figcaption>a {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }

    /* Anchor will cover the whole item by default */
    /* For some effects it will show as a button */
    .grid figure figcaption>a {
        z-index: 1000;
        text-indent: 200%;
        white-space: nowrap;
        font-size: 0;
        opacity: 0;
    }

    .grid figure h2 {
        word-spacing: -0.15em;
        font-weight: 300;
    }

    .grid figure h2 span {
        font-weight: 800;
    }

    .grid figure h2,
    .grid figure p {
        margin: 0;
    }

    .grid figure p {
        letter-spacing: 1px;
        font-size: 68.5%;
    }

    /*---------------*/
    /***** Layla *****/
    /*---------------*/

    figure.effect-layla {
        background: #18a367;
    }
    figure.effect-layla figcaption::before,
    figure.effect-layla figcaption::after {
        position: absolute;
        content: '';
        opacity: 0;
    }

    figure.effect-layla figcaption::before {
        top: 50px;
        right: 30px;
        bottom: 50px;
        left: 30px;
        border-top: 1px solid #fff;
        border-bottom: 1px solid #fff;
        -webkit-transform: scale(0, 1);
        transform: scale(0, 1);
        -webkit-transform-origin: 0 0;
        transform-origin: 0 0;
    }

    figure.effect-layla figcaption::after {
        top: 30px;
        right: 50px;
        bottom: 30px;
        left: 50px;
        border-right: 1px solid #fff;
        border-left: 1px solid #fff;
        -webkit-transform: scale(1, 0);
        transform: scale(1, 0);
        -webkit-transform-origin: 100% 0;
        transform-origin: 100% 0;
    }

    figure.effect-layla h2 {
        padding-top: 26%;
        -webkit-transition: -webkit-transform 0.35s;
        transition: transform 0.35s;
    }

    figure.effect-layla p {
        padding: 0.5em 2em;
        text-transform: none;
        opacity: 0;
        -webkit-transform: translate3d(0, -10px, 0);
        transform: translate3d(0, -10px, 0);
    }
    figure.effect-layla img,
    figure.effect-layla figcaption::before,
    figure.effect-layla figcaption::after,
    figure.effect-layla p {
        -webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
        transition: opacity 0.35s, transform 0.35s;
    }

    figure.effect-layla:hover img {
        opacity: 0.7;
        -webkit-transform: translate3d(0, 0, 0);
        transform: translate3d(0, 0, 0);
    }

    figure.effect-layla:hover figcaption::before,
    figure.effect-layla:hover figcaption::after {
        opacity: 1;
        -webkit-transform: scale(1);
        transform: scale(1);
    }

    figure.effect-layla:hover h2,
    figure.effect-layla:hover p {
        opacity: 1;
        -webkit-transform: translate3d(0, 0, 0);
        transform: translate3d(0, 0, 0);
    }

    figure.effect-layla:hover figcaption::after,
    figure.effect-layla:hover h2,
    figure.effect-layla:hover p,
    figure.effect-layla:hover img {
        -webkit-transition-delay: 0.15s;
        transition-delay: 0.15s;
    }
</style>
<?= $this->endSection() ?>


<?= $this->section("script") ?>
<script src="<?= base_url("assets/js/circle.js") ?>"></script>
<?= $this->endSection() ?>