<?= $this->extend('frontend/layouts/main') ?>


<?= $this->section('content') ?>

<?= view_cell("\App\Libraries\HeaderWidget::breadcrumb") ?>


<div id="pageImage">

    <img id="pageImageInstance_imgPageImage" src="<?= base_url("/assets/images/Header-Onama-Menadzment.png") ?>" style="border-width:0px;">

    <!-- <div id="pageImageOverlay">
        <div class="circle circleNo1"></div>
        <div class="circle circleNo2"></div>

        <div class="pageTitle" style="opacity: 1; top: 50%; bottom: auto; transform: translateY(-50%);">
            <div class="pageTitleContent">
                <div><span id="pageImageInstance_lblTitle">Đội ngũ</span></div>
            </div>
        </div>
    </div> -->

</div>
<div class="container my-5">
    <div class="row g-0">
        <div class="col-md-6">
            <img src="/assets/images/Final/Philippe Malecki - Tổng Giám đốc.png" style="width:100%" />
        </div>
        <div class="col-md-6 align-self-center">
            <div class="info-box">
                <div class="info-title" style="padding: 80px 30px;
    background-color: #f1f1f1;
    font-size: 14px;">
                    <span id="" style="font-size:18px">Philippe Malecki<br>
                        <strong>Tổng Giám đốc</strong>
                    </span>
                    <br>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container my-5">
    <div class="row">


        <div class="managerItem col-md-4 my-2">
            <div class="managerImage">
                <img style="width:100%" src="/assets/images/Final/Trần Thị Như Hoài - Giám đốc Vận hành Sản xuất.png" alt="Trần Thị Như Hoài - Giám đốc Vận hành Sản xuất">
            </div>
            <div class="managerName" style="text-align: center; font-weight: bold;">
                Trần Thị Như Hoài
            </div>
            <div class="managerZvanje" style="text-align: center;">
                Giám đốc Vận hành Sản xuất
            </div>
        </div>
        <div class="managerItem col-md-4 my-2">
            <div class="managerImage">
                <img style="width:100%" src="/assets/images/Final/Trương Tấn Lực - Phó Tổng Giám Đốc.png" alt="Trương Tấn Lực - Phó Tổng Giám Đốc">
            </div>
            <div class="managerName" style="text-align: center; font-weight: bold;">
                Trương Tấn Lực
            </div>
            <div class="managerZvanje" style="text-align: center;">
                Phó Tổng Giám đốc phụ trách Kinh doanh & Marketing
            </div>
        </div>
        <div class="managerItem col-md-4 my-2">
            <div class="managerImage">
                <img style="width:100%" src="/assets/images/Final/Phạm Văn Tân - Giám đốc Tài Chính.png" alt="Phạm Văn Tân - Giám đốc Tài Chính">
            </div>
            <div class="managerName" style="text-align: center; font-weight: bold;">
                Phạm Văn Tân
            </div>
            <div class="managerZvanje" style="text-align: center;">
                Giám đốc Tài chính
            </div>
        </div>
        <div class="managerItem col-md-4 my-2">
            <div class="managerImage">
                <img style="width:100%" src="/assets/images/Final/George Nguyễn - Giám đốc Chất lượng.png" alt="George Nguyễn - Giám đốc Chất lượng">
            </div>
            <div class="managerName" style="text-align: center; font-weight: bold;">
                George Nguyễn
            </div>
            <div class="managerZvanje" style="text-align: center;">
                Giám đốc Chất lượng
            </div>
        </div>
        <div class="managerItem col-md-4 my-2">
            <div class="managerImage">
                <img style="width:100%" src="/assets/images/Final/Bùi Phùng Nữ Như Nguyện - GĐ Hành chính - Nhân sự.png" alt="Bùi Phùng Nữ Như Nguyện - GĐ Hành chính - Nhân sự">
            </div>
            <div class="managerName" style="text-align: center; font-weight: bold;">
                Bùi Phùng Nữ Như Nguyện
            </div>
            <div class="managerZvanje" style="text-align: center;">
                Giám đốc Nhân sự
            </div>
        </div>
        <div class="managerItem col-md-4 my-2">
            <div class="managerImage">
                <img style="width:100%" src="/assets/images/Final/Trịnh Thị Phương Lan.png" alt="Trình Thị Phương Lan">
            </div>
            <div class="managerName" style="text-align: center; font-weight: bold;">
                Trình Thị Phương Lan
            </div>
            <div class="managerZvanje" style="text-align: center;">
                Giám đốc Phát triển Sản phẩm và Đăng ký thuốc
            </div>
        </div>
        <div class="managerItem col-md-4 my-2">
            <div class="managerImage">
                <img style="width:100%" src="/assets/images/Final/Trần Phúc Yên - GĐ Nhà máy PME I.png" alt="Trần Phúc Yên - GĐ Nhà máy PME I">
            </div>
            <div class="managerName" style="text-align: center; font-weight: bold;">
                Trần Phúc Yên
            </div>
            <div class="managerZvanje" style="text-align: center;">
                Giám đốc Nhà máy PME I
            </div>
        </div>
        <div class="managerItem col-md-4 my-2">
            <div class="managerImage">
                <img style="width:100%" src="/assets/images/Final/Trần Quang Mạnh - Giám đốc Nhà máy PME II.png" alt="Trần Quang Mạnh - Giám đốc Nhà máy PME II">
            </div>
            <div class="managerName" style="text-align: center; font-weight: bold;">
                Trần Quang Mạnh
            </div>
            <div class="managerZvanje" style="text-align: center;">
                Giám đốc Nhà máy Stada Việt Nam
            </div>
        </div>
        <div class="managerItem col-md-4 my-2">
            <div class="managerImage">
                <img style="width:100%" src="/assets/images/Final/Nguyễn Thị Nhung - Giám Đốc Kinh Doanh.png" alt="Nguyễn Thị Nhung - Giám Đốc Kinh Doanh">
            </div>
            <div class="managerName" style="text-align: center; font-weight: bold;">
                Nguyễn Thị Nhung
            </div>
            <div class="managerZvanje" style="text-align: center;">
                Giám đốc Kinh doanh
            </div>
        </div>

    </div>
</div>
<?= $this->endSection() ?>

<?= $this->section("style") ?>

<?= $this->endSection() ?>


<?= $this->section("script") ?>
<!-- <script src="<?= base_url("assets/js/circle.js") ?>"></script> -->
<script>
    new PureCounter();
</script>
<?= $this->endSection() ?>