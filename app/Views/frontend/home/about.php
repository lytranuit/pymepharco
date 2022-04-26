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
                <div><span id="pageImageInstance_lblTitle">Giới thiệu chung</span></div>
            </div>
        </div>
    </div>

</div>
<div id="rptInfoblock_ctl00_infoblockInstance1_pnlInfoblock" class="plainText fullWidth">


    <div class="infoblockText">
        <div class="infoblockTitle">
            <span id="rptInfoblock_ctl00_infoblockInstance1_lblTitle">PYMEPHARCO được thành lập vào năm 1989 với nhiệm vụ sản xuất dược phẩm, kinh doanh thuốc & vật tư thiết bị y tế.</span>
        </div>
        <div class="infoblockAbstract">
            <span id="rptInfoblock_ctl00_infoblockInstance1_lblAbstract">
                Kể từ năm 2020, Pymepharco trở thành thành viên tập đoàn dược phẩm STADA (Đức), một trong những công ty sản xuất dược phẩm generic lớn nhất thế giới.
                Với nền tảng đạo đức nghề nghiệp qua bộ Giá trị cốt lõi cùng công nghệ được đánh giá hiện đại bậc nhất, Pymepharco cam kết cung cấp các sản phẩm thuốc chất lượng cao, giá cả hợp lý đến tất cả bệnh nhân trong nước và trên thế giới.

        </div>

        <!--<a href="/eng/misija-i-vizija">-->
        <div class="infoblockButton">
            <input type="button" value="" onclick="window.location='/eng/misija-i-vizija'">
        </div>
        <!--</a>-->
    </div>
    <div class="infoblockImage">
        <img id="rptInfoblock_ctl00_infoblockInstance1_imgImage" src="/images/infoblock/" style="border-width: 0px; transition: all 1s ease 0s; opacity: 1; margin-left: 0px;">
        <div class="infoblockCircle" style="opacity: 0.5; bottom: -280px;"></div>
    </div>
    <div class="infoblockText2">
        <div class="infoblockDesc2">
            <span id="rptInfoblock_ctl00_infoblockInstance1_lblDesc"></span>
        </div>
        <div class="infoblockSubnote">
            <span id="rptInfoblock_ctl00_infoblockInstance1_lblSubnote"></span>
        </div>
    </div>
    <div class="cleaner"></div>


</div>
<div id="rptInfoblock_ctl01_infoblockInstance1_pnlInfoblock" class="plainText halfWidth backOrange titleOnly about" id="about">


    <div class="container">
        <div class="row justify-content-end">

            <div class="col-lg-3 col-md-5 col-6 d-md-flex align-items-md-stretch">
                <div class="count-box">
                    <i class="fas fa-user"></i>
                    <span><strong data-purecounter-start="0" data-purecounter-end="1900" data-purecounter-duration="2" class="purecounter">0</strong> +</span>
                    <p>Nhân sự</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-5 col-6 d-md-flex align-items-md-stretch">
                <div class="count-box">
                    <i class="fas fa-industry"></i>
                    <span><strong data-purecounter-start="0" data-purecounter-end="2" data-purecounter-duration="2" class="purecounter">0</strong> +</span>
                    <p>Nhà máy</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-5 col-6 d-md-flex align-items-md-stretch">
                <div class="count-box">
                    <i class="fab fa-product-hunt"></i>
                    <span><strong data-purecounter-start="0" data-purecounter-end="350" data-purecounter-duration="2" class="purecounter">0</strong> + </span>
                    <p>Sản phẩm</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-5 col-6 d-md-flex align-items-md-stretch">
                <div class="count-box">
                    <i class="fas fa-code-branch"></i>
                    <span><strong data-purecounter-start="0" data-purecounter-end="24" data-purecounter-duration="2" class="purecounter">0</strong> +</span>
                    <p>Chi nhánh toàn quốc</p>
                </div>
            </div>

        </div>
    </div>
</div>

<div class="container my-5">
    <div class="row g-0">
        <div class="col-md-6 align-self-center">
            <img src="/assets/images/PMP-1.png" style="width:100%" />
        </div>
        <div class="col-md-6">
            <div class="info-box">
                <div class="info-title" style="padding: 30px;
    background-color: #f1f1f1;
    font-size: 14px;">
                    <span id="" style="font-size:16px">Toàn bộ cách tiếp cận kinh doanh của chúng tôi dựa trên bốn giá trị quan trọng cũng xác định bản sắc doanh nghiệp của chúng tôi.<br>

                    </span>
                    <div class="infoblockAbstract">
                        <li>
                            <div>
                                <strong>Chính trực</strong> - Tất cả mọi người cần hành động một cách có đạo đức, phù hợp với tiêu chuẩn nội bộ của công ty và các tiêu chuẩn bên ngoài. Cần để tinh thần lên tiếng và sự tôn trọng dẫn hướng mọi hành động của chúng ta.
                            </div>
                        </li>
                        <li>
                            <div>
                                <strong>Nhanh nhạy </strong> - Tất cả mọi người đều nên tiên phong thay đổi theo hướng linh hoạt và quyết đoán trong hành trình liên tục phát triển bản thân.
                            </div>
                        </li>
                        <li>
                            <div>
                                <strong>Tinh thần kinh doanh </strong> - Tất cả mọi người có thể đóng góp bằng hành động hoặc những ý tưởng mới nhằm tạo ra giá trị và tăng trưởng trong tương lai.
                            </div>
                        </li>
                        <li>
                            <div>
                                <strong>ONE STADA </strong> - Tất cả mọi người phải hành động vì lợi ích tốt nhất của toàn thể công ty thay vì chỉ đơn vị kinh doanh hoặc phòng ban của mình nhằm xây dựng One STADA thành công.
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
<script src="<?= base_url("assets/lib/purecounter/purecounter.js") ?>"></script>
<script src="<?= base_url("assets/js/circle.js") ?>"></script>
<script>
    new PureCounter();
</script>
<?= $this->endSection() ?>