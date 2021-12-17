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
<div id="infoblockInstance_pnlInfoblock" class="infoblock ibMapa">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <?= view_cell("\App\Libraries\SidebarWidget::sidemenuproduct") ?>
            </div>
            <div class="col-md-9">
                <div class="row justify-center">
                    <?php foreach ($products as $row) : ?>
                        <div class="col-md-4">
                            <div class="card card--banner flex flex-column h-100">
                                <a class="link" href="<?= url_product($row) ?>" title="<?= $row->{pick_language($row, 'name_')} ?>">
                                    <div style="border: 1px solid lightgray;">
                                        <img style="width:100%" data-src="<?= $row->image_url ?>" alt="<?= $row->{pick_language($row, 'name_')} ?>" title="<?= $row->{pick_language($row, 'name_')} ?>" src="<?= $row->image_url ?>">
                                    </div>
                                    <div style="margin: 10px;">
                                        <h4 style="color: black;text-align: center;font-weight:bold;">
                                            <?= $row->{pick_language($row, 'name_')} ?>
                                        </h4>
                                        <div class="">
                                            <p style="font-size: 14px;color:gray;">
                                                <?= split_string($row->{pick_language($row, 'description_')}, 200) ?>
                                            </p>
                                        </div>
                                    </div>
                                </a>
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