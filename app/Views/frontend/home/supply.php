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
                <div><span id="pageImageInstance_lblTitle">Hệ thống phân phối</span></div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-12 col-md-6 py-5" style="text-align: center;">
            <div id="map" class="d-inline-block"></div>
        </div>
    </div>
</div>
<?= $this->endSection() ?>

<?= $this->section("style") ?>

<link href="<?= base_url("/assets/css/history.css") ?>" rel="stylesheet" type="text/css">
<?= $this->endSection() ?>


<?= $this->section("script") ?>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script src="<?= base_url("assets/js/circle.js") ?>"></script>

<script src="<?= base_url("/assets/lib/vietnammap/mapdata.js") ?>"></script>
<script src="<?= base_url("/assets/lib/vietnammap/countrymap.js") ?>"></script>
<?= $this->endSection() ?>