<?= $this->extend('frontend/layouts/main') ?>


<?= $this->section('content') ?>

<?= view_cell("\App\Libraries\HeaderWidget::breadcrumb") ?>


<div id="pageImage">
    <img id="pageImageInstance_imgPageImage" src="<?= base_url($category->image_url) ?>" style="border-width:0px;">

    <div id="pageImageOverlay">
        <div class="circle circleNo1"></div>
        <div class="circle circleNo2"></div>

        <div class="pageTitle" style="opacity: 1; top: 50%; bottom: auto; transform: translateY(-50%);">
            <div class="pageTitleContent">
                <div><span id="pageImageInstance_lblTitle"><?= $category->{pick_language($category)} ?></span></div>
            </div>
        </div>
    </div>

</div>

<div class="container-fluid plainText">

    <div class="row justify-center">
        <?php foreach ($products as $row) : ?>
            <div class="col-6 col-sm-6 col-lg-4 section-products__item">
                <div class="thumbnail">
                    <a class="bg-image " href="<?= url_product($row) ?>">
                        <img style="width:100%" src="<?= $row->image_url ?>" alt="<?= $row->{pick_language($row, 'name_')} ?>">
                        <span class="hover-state hover-state--tranparent">
                            <span><span></span></span>
                        </span>
                    </a>
                </div>
                <div class="section-products__item__info">
                    <h3 class="section-products__item__info__title" style="text-align: center;"><a href="<?= url_product($row) ?>"><?= $row->{pick_language($row, 'name_')} ?></a></h3>

                    <!-- <span class="section-products__item__info__type">Rx</span> -->

                    <!-- <span class="section-products__item__info__quantity" style="height: 21px;">Hộp 14 viên, 28 viên, 30 viên, 50 viên.</span> -->
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

<!-- popup -->
<?= $this->include('frontend/layouts/_popup') ?>
<?= $this->endSection() ?>

<?= $this->section("style") ?>
<link href="<?= base_url("/assets/css/sidebar.css") ?>" rel="stylesheet" type="text/css">
<?= $this->endSection() ?>
<?= $this->section("script") ?>
<script src="<?= base_url("assets/js/circle.js") ?>"></script>
<?= $this->endSection() ?>