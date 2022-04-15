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

            <div class="col-6 col-sm-6 col-lg-4 section-products__item">
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
                <figure class="snip1104"><img src="<?= $row->image_url ?>" alt="<?= $row->{pick_language($row, 'name_')} ?>" />
                    <figcaption>
                        <h2><?= $row->{pick_language($row, 'name_')} ?></h2>
                    </figcaption>
                    <a href="<?= url_product($row) ?>"></a>
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
    figure.snip1104 {
        position: relative;
        overflow: hidden;
        margin: 0;
        box-sizing: initial;
        width: 100%;
        background: #000000;
        color: #ffffff;
        text-align: center;
        box-shadow: 0 0 5px rgb(0 0 0 / 15%);
    }

    figure.snip1104 * {
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        -webkit-transition: all 0.4s ease-in-out;
        transition: all 0.4s ease-in-out;
    }

    figure.snip1104 img {
        width: 100%;
        position: relative;
        opacity: 0.4;
        height: 100%;
        display: inherit;
    }

    figure.snip1104 figcaption {
        position: absolute;
        top: 0;
        left: 0;
        bottom: 0;
        right: 0;
    }

    figure.snip1104 h2 {
        position: absolute;
        left: 40px;
        right: 40px;
        display: inline-block;
        background: #000000;
        -webkit-transform: skew(-10deg) rotate(-10deg) translate(0, -50%);
        transform: skew(-10deg) rotate(-10deg) translate(0, -50%);
        padding: 12px 5px;
        margin: 0;
        top: 50%;
        text-transform: uppercase;
        font-weight: 400;
    }

    figure.snip1104 h2 span {
        font-weight: 800;
    }

    figure.snip1104:before {
        height: 100%;
        width: 100%;
        top: 0;
        left: 0;
        content: '';
        background: #ffffff;
        position: absolute;
        -webkit-transition: all 0.3s ease-in-out;
        transition: all 0.3s ease-in-out;
        -webkit-transform: rotate(110deg) translateY(-50%);
        transform: rotate(105deg) translateY(-50%);
    }

    figure.snip1104 a {
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
        position: absolute;
        z-index: 1;
    }

    figure.snip1104.blue {
        background: #123851;
    }

    figure.snip1104.blue h2 {
        background: #0a212f;
    }

    figure.snip1104.red {
        background: #581a14;
    }

    figure.snip1104.red h2 {
        background: #36100c;
    }

    figure.snip1104.yellow {
        background: #7f5006;
    }

    figure.snip1104.yellow h2 {
        background: #583804;
    }

    figure.snip1104:hover img,
    figure.snip1104.hover img {
        opacity: 1;
        -webkit-transform: scale(1.1);
        transform: scale(1.1);
    }

    figure.snip1104:hover h2,
    figure.snip1104.hover h2 {
        -webkit-transform: skew(-10deg) rotate(-10deg) translate(-150%, -50%);
        transform: skew(-10deg) rotate(-10deg) translate(-150%, -50%);
    }

    figure.snip1104:hover:before,
    figure.snip1104.hover:before {
        -webkit-transform: rotate(110deg) translateY(-150%);
        transform: rotate(110deg) translateY(-150%);
    }
</style>
<?= $this->endSection() ?>


<?= $this->section("script") ?>
<script src="<?= base_url("assets/js/circle.js") ?>"></script>
<?= $this->endSection() ?>