<?= $this->extend('frontend/layouts/main') ?>


<?= $this->section('content') ?>
<div id="breadcrumb">
    <span id="breadcrumbInstance_lblBreadcrumb">
        <li><a href="/"><?= lang("Custom.home") ?></a></li>
        <li>›</li>
        <li> <?= $info->{pick_language($info)} ?></li>
    </span>
</div>
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

    <div class="container">
        <div class="row">
            <div class="col-md-5 offset-md-2">
                <div style="font-size:24px;font-weight:bold;">
                    <?= $info->{pick_language($info)} ?>
                </div>
                <div>
                    <?= $info->{pick_language($info, "description_")} ?>
                </div>
            </div>
            <div class="col-md-3">
                <div style="border: 1px solid lightgray;">
                    <img style="width:100%" data-src="<?= $info->image_url ?>" alt="<?= $info->{pick_language($info, 'name_')} ?>" title="<?= $info->{pick_language($info, 'name_')} ?>" src="<?= $info->image_url ?>">
                </div>
            </div>
            <div class="col-md-12">
                <?= $info->{pick_language($info, "detail_")} ?>
            </div>
        </div>
    </div>

</div>
<?= $this->endSection() ?>

<?= $this->section("style") ?>

<?= $this->endSection() ?>


<?= $this->section("script") ?>

<script src="<?= base_url("assets/js/circle.js") ?>"></script>
<?= $this->endSection() ?>