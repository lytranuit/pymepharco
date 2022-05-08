<?= $this->extend('frontend/layouts/main') ?>


<?= $this->section('content') ?>

<?= view_cell("\App\Libraries\HeaderWidget::breadcrumb") ?>



<div id="pageImage">

    <img id="pageImageInstance_imgPageImage" src="<?= base_url("/assets/images/about.jpg") ?>" style="border-width:0px;">


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

                <figure class="effect-layla">
                    <img src="<?= $row->image_url ?>" alt="<?= $row->{pick_language($row, 'name_')} ?>">
                    <figcaption>
                        <!-- <p>When Layla appears, she brings an eternal summer along.</p> -->
                        <a href="<?= url_product($row) ?>">Xem thêm</a>
                    </figcaption>
                </figure>
                <div class="section-products__item__info">
                    <h2 class="section-products__item__info__title" style="text-align: center;"><a href="<?= url_product($row) ?>"><?= $row->{pick_language($row, 'name_')} ?></a></h2>
                </div>
            </div>
        <?php endforeach ?>
    </div>
    <div class="pv3 mv2">
        <div class="pagination">
            <div class="flex align-center justify-center">
            <?php if ($pager->getPageCount() > 1) : ?>
                    <?= $pager->links() ?>
                <?php endif ?>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection() ?>

<?= $this->section("style") ?>
<link href="<?= base_url("/assets/css/sidebar.css") ?>" rel="stylesheet" type="text/css">
<?= $this->endSection() ?>


<?= $this->section("script") ?>
<script src="<?= base_url("assets/js/circle.js") ?>"></script>
<?= $this->endSection() ?>