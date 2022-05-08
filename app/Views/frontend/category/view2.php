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

<div class="container plainText">

    <div class="row justify-center">
        <?php foreach ($products as $row) : ?>
            <div class="col-12" style="min-height: 250px;">
                <div class="row">
                    <div class="col-md-8">
                        <h2 class=""><a href="<?= url_product($row) ?>" style="font-size: 24px;color:black;font-weight: bold;"><?= $row->{pick_language($row, 'name_')} ?></a></h2>
                        <hr>
                        <p>
                            <?= $row->{pick_language($row, "tp_")} ?>
                        </p>
                        <p>
                            <?= $row->{pick_language($row, "qc_")} ?>
                        </p>

                    </div>
                    <div class="col-md-4">
                        <div class="thumbnail" style="margin-top:80px;">
                            <a class="bg-image " href="<?= url_product($row) ?>">
                                <img style="width:100%" src="<?= $row->image_url ?>" alt="<?= $row->{pick_language($row, 'name_')} ?>">
                                <span class="hover-state hover-state--tranparent">
                                    <span><span></span></span>
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="chitiet">
                            <a href="<?= url_product($row) ?>" target="_blank">Chi tiết</a>
                        </div>
                    </div>
                </div>
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
<?= $this->endSection() ?>
<?= $this->section("script") ?>
<script src="<?= base_url("assets/js/circle.js") ?>"></script>
<?= $this->endSection() ?>