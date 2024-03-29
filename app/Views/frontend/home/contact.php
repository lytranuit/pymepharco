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
                <div><span id="pageImageInstance_lblTitle">Liên hệ</span></div>
            </div>
        </div>
    </div>

</div>
<div id="rptInfoblock_ctl02_infoblockInstance1_pnlInfoblock" class="infoblock ibImageLeft noTitle noButton noTopMargin">


    <div class="infoblockText">
        <div class="infoblockTitle">
            <span id="rptInfoblock_ctl02_infoblockInstance1_lblTitle"></span>
        </div>
        <div class="infoblockAbstract">
            <span id="rptInfoblock_ctl02_infoblockInstance1_lblAbstract"><strong>PYMEPHARCO:</strong><br>
                166-170 Nguyễn Huệ – Tp. Tuy Hòa – Phú Yên<br>
                Tel: 0257 3829 165 – 0257 3823 228<br>
                Email: <a href="mailto:hcns@pymepharco.com">hcns@pymepharco.com</a><br><br>

                <strong>CHI NHÁNH TP.HCM</strong><br>
                44 Đồng Nai, Phường 15, Quận 10, Tp.Hồ Chí Minh<br>
                Tel: 028 3970 3099 – 028 3970 8789<br><br>

                <strong>CHI NHÁNH HÀ NỘI</strong><br>
                Lô 5 -TT 24 khu Nhà ở Báo Nhân Dân , Phường Xuân Phương, Q.Nam Từ Liêm, Tp.Hà Nội<br>
                Tel: 024 3201 1536</span>
        </div>

        <!--<a href="/eng/predstavnistva">-->
        <div class="infoblockButton">
            <input type="button" value="" onclick="window.location='/eng/predstavnistva'">
        </div>
        <!--</a>-->
    </div>
    <div class="infoblockImage">
        <img id="rptInfoblock_ctl02_infoblockInstance1_imgImage" src="assets/images/nm.png" style="border-width: 0px; opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
        <div class="infoblockCircle" style="opacity: 0.5; bottom: -280px;"></div>
    </div>
    <div class="infoblockText2">
        <div class="infoblockDesc2">
            <span id="rptInfoblock_ctl02_infoblockInstance1_lblDesc"></span>
        </div>
        <div class="infoblockSubnote">
            <span id="rptInfoblock_ctl02_infoblockInstance1_lblSubnote"></span>
        </div>
    </div>
    <div class="cleaner"></div>


</div>
<div id="rptInfoblock_ctl03_infoblockInstance1_pnlInfoblock" class="infoblock listItem columns2 fullWidth">


    <div class="infoblockText">
        <div class="infoblockTitle">
            <span id="rptInfoblock_ctl03_infoblockInstance1_lblTitle" style="font-weight:bold;font-size:24px">NHÀ MÁY</span>
        </div>
        <div class="infoblockAbstract">
            <span id="rptInfoblock_ctl03_infoblockInstance1_lblAbstract">
                <ul>
                    <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                        <div>
                            <h4>Nhà máy PME I</h4>
                            01 Bà Triệu, Phường 7, Tp Tuy Hòa, Phú Yên<br>
                            Tel: 0257 3810 525 – 0257 3820 663
                        </div>
                    </li>
                    <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                        <div>
                            <h4>Nhà máy STADA VIETNAM</h4>
                            189 Hoàng Văn Thụ, Phường 9, Tp Tuy Hòa, Phú Yên<br>
                            Tel: 0257 3579 666
                        </div>
                    </li>
                </ul>
            </span>
        </div>

        <!--<a href="/eng/predstavnistva">-->
        <div class="infoblockButton">
            <input type="button" value="" onclick="window.location='/eng/predstavnistva'">
        </div>
        <!--</a>-->
    </div>
    <div class="infoblockImage">
        <img id="rptInfoblock_ctl03_infoblockInstance1_imgImage" src="/images/infoblock/" style="border-width: 0px; transition: all 1s ease 0s; opacity: 1; margin-left: 0px;">
        <div class="infoblockCircle" style="opacity: 0.5; bottom: -280px;"></div>
    </div>
    <div class="infoblockText2">
        <div class="infoblockDesc2">
            <span id="rptInfoblock_ctl03_infoblockInstance1_lblDesc"></span>
        </div>
        <div class="infoblockSubnote">
            <span id="rptInfoblock_ctl03_infoblockInstance1_lblSubnote"></span>
        </div>
    </div>
    <div class="cleaner"></div>


</div>
<?= $this->endSection() ?>

<?= $this->section("style") ?>

<link href="<?= base_url("/assets/css/contact.css") ?>" rel="stylesheet" type="text/css">
<?= $this->endSection() ?>


<?= $this->section("script") ?>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script src="<?= base_url("assets/js/circle.js") ?>"></script>
<?= $this->endSection() ?>