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
                <div><span id="pageImageInstance_lblTitle">Chính sách chất lượng</span></div>
            </div>
        </div>
    </div>

</div>
<div class="container my-5">
    <div class="row g-0">
        <div class="col-12">
            <h2 style="text-align: center;">
                GIẤY CHỨNG NHẬN PYMEPHARCO ĐẠT TIÊU CHUẨN CHÂU ÂU EU-GMP
            </h2>
            <img src="/assets/images/policy/Pages-1-from_GMP_Certificate_RPD_Pymepharco.jpg" style="width:100%" />
            <div style="text-align: center;">
                <a href="/assets/images/policy/GMP_Certificate_RPD_Pymepharco.pdf" style="font-size:20px;font-weight:bold;">Xem tiếp Giấy chứng nhận EU-GMP</a>
            </div>
        </div>
        <div class="col-12">
            <h2 style="text-align: center;">
                CHÍNH SÁCH CHẤT LƯỢNG PYMEPHARCO CAM KẾT
            </h2>
            <img src="/assets/images/policy/cscl_tv1.jpg" style="width:100%" />
        </div>
    </div>
</div>
<?= $this->endSection() ?>

<?= $this->section("style") ?>

<link href="<?= base_url("/assets/css/history.css") ?>" rel="stylesheet" type="text/css">
<?= $this->endSection() ?>


<?= $this->section("script") ?>
<!-- <script src="<?= base_url("assets/lib/purecounter/purecounter.js") ?>"></script> -->
<script src="<?= base_url("assets/js/circle.js") ?>"></script>
<!-- <script>
    new PureCounter();
</script> -->
<?= $this->endSection() ?>