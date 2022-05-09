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
                <div><span id="pageImageInstance_lblTitle">Giá trị cốt lõi</span></div>
            </div>
        </div>
    </div>

</div>
<div class="container my-5">
    <div class="row g-0">
        <div class="col-md-6 align-self-center inview" data-animate="animate__animated animate__fadeInLeft">
            <img src="/assets/images/PMP-1.png" style="width:100%" />
        </div>
        <div class="col-md-6 inview" data-animate="animate__animated animate__fadeInRight">
            <div class="info-box">
                <div class="info-title" style="padding: 30px;
    background-color: #f1f1f1;
    font-size: 14px;">
                    <span id="" style="font-size:16px">Toàn bộ cách tiếp cận kinh doanh của chúng tôi dựa trên bốn giá trị quan trọng cũng xác định bản sắc doanh nghiệp của chúng tôi.<br>

                    </span>
                    <div class="infoblockAbstract">
                        <li>
                            <div>
                                <strong>Chính trực</strong> - Mỗi người trong chúng tôi đều hành động có đạo đức, phù hợp với các tiêu chuẩn bên trong và bên ngoài của công ty. Hành động của chúng tôi được dẫn dắt bởi tinh thần lên tiếng chia sẻ và sự tôn trọng.
                            </div>
                        </li>
                        <li>
                            <div>
                                <strong>Nhanh nhạy </strong> - Mỗi người trong chúng tôi đều dẫn đầu sự thay đổi bằng sự linh hoạt và quyết đoán như một phần của hành trình phát triển cá nhân.
                            </div>
                        </li>
                        <li>
                            <div>
                                <strong>Tinh thần kinh doanh </strong> - Mỗi người trong chúng tôi đều cố gắng đem lại những ý tưởng và hành động mới, tạo ra giá trị và sự tăng trưởng trong tương lai.
                            </div>
                        </li>
                        <li>
                            <div>
                                <strong>ONE STADA </strong> - Mỗi người trong chúng tôi hành động vì lợi ích tốt nhất của cả công ty chứ không chỉ một bộ phận hay lĩnh vực công việc của mình nhằm mang lại thành công chung cho STADA.
                            </div>
                        </li>
                    </div>
                </div>
            </div>
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