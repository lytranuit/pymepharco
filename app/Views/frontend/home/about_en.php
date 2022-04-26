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
                <div><span id="pageImageInstance_lblTitle">About Us</span></div>
            </div>
        </div>
    </div>

</div>
<div id="rptInfoblock_ctl00_infoblockInstance1_pnlInfoblock" class="plainText fullWidth">


    <div class="infoblockText">
        <div class="infoblockTitle">
            <span id="rptInfoblock_ctl00_infoblockInstance1_lblTitle">Established in 1989 with the mission of manufacturing pharmaceutical products, trading drugs & medical supplies and equipment
        </div>
        <div class="infoblockAbstract">
            <span id="rptInfoblock_ctl00_infoblockInstance1_lblAbstract">
                From 2020, Pymepharco becomes a member of STADA pharmaceutical group (Germany), one of the largest pharmaceutical manufacturing companies in the world. With a foundation of professional ethics through a core set of values and the most advanced technology, Pymepharco is committed to providing high-quality, affordable medicinal products to all patients in the country and around the world.</span>
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
                    <span><strong data-purecounter-start="0" data-purecounter-end="2000" data-purecounter-duration="2" class="purecounter">0</strong> +</span>
                    <p>Employees</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-5 col-6 d-md-flex align-items-md-stretch">
                <div class="count-box">
                    <i class="fas fa-industry"></i>
                    <span><strong data-purecounter-start="0" data-purecounter-end="2" data-purecounter-duration="2" class="purecounter">0</strong></span>
                    <p>Factories</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-5 col-6 d-md-flex align-items-md-stretch">
                <div class="count-box">
                    <i class="fab fa-product-hunt"></i>
                    <span><strong data-purecounter-start="0" data-purecounter-end="350" data-purecounter-duration="2" class="purecounter">0</strong> + </span>
                    <p>Products</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-5 col-6 d-md-flex align-items-md-stretch">
                <div class="count-box">
                    <i class="fas fa-code-branch"></i>
                    <span><strong data-purecounter-start="0" data-purecounter-end="24" data-purecounter-duration="2" class="purecounter">0</strong> +</span>
                    <p>Branches</p>
                </div>
            </div>

        </div>
    </div>

</div>

<section class="grid-section pt2 pt3-md pb0 dark-grey">
    <div class="container-medium mla mra pv3">

        <div>
            <div class="flexbox">
                <div class="grid-section-row flex flex-wrap nh4-sm">
                    <div class="col-24-md ph4-sm mb3">
                        <div>

                            <div style="text-align: center;font-size: 28px;">
                                CORE VALUES
                            </div>


                            <div class="g">
                                <p style="text-align: center;"><span style="font-weight: 400;">Our entire approach to business is based on four key values which also determine our corporate identity.</span></p>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="banner-section-wrapper pt4  pb4" id="banner-block">
    <div class="banner  banner--text-overlay">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <img data-src="https://stada.vn/wp-content/uploads/2021/05/stada-corporate-website-our-values-icon-integrity7a72-870x520-c-center.jpg" title="Tính liêm chính" src="https://stada.vn/wp-content/uploads/2021/05/stada-corporate-website-our-values-icon-integrity7a72-870x520-c-center.jpg" style="width:100%">
                </div>
                <div class="col-md-6">
                    <div class="banner__box" style="background-color: unset;">
                        <div data-anim="fadeIn" class="measure-wide dark-grey fadeIn">
                            <h3 class="text-overlay__title  t-title  f3  f2-md  fw4  lh-title  mb3">Integrity </h3>
                            <div class="text-overlay__body  f7 fw4  lh-copy  mb4">
                                <p><span>Each and everyone of us acts ethically in line with the company’s internal and external standards. Our actions are led by speaking up and respect.</span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="banner-section-wrapper pt4  pb4" id="banner-block">
    <div class="banner  banner--text-overlay">
        <div class="container">
            <div class="row">
                <div class="col-md-6 order-1">
                    <img src="https://stada.vn/wp-content/uploads/2021/05/stada-corporate-website-our-values-icon-agility7a72-870x520-c-center.jpg" style="width:100%">

                </div>
                <div class="col-md-6">
                    <div class="banner__box" style="background-color: unset;">
                        <div data-anim="fadeIn" class="measure-wide dark-grey fadeIn">
                            <h3 class="text-overlay__title  t-title  f3  f2-md  fw4  lh-title  mb3">Agility </h3>
                            <div class="text-overlay__body  f7  fw4  lh-copy  mb4">
                                <p><span>Each and everyone of us leads change with flexibility and decisiveness as part of our ongoing journey of personal development.</span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="banner-section-wrapper pt4  pb4" id="banner-block">
    <div class="banner  banner--text-overlay">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <img src="https://stada.vn/wp-content/uploads/2021/05/stada-corporate-website-our-values-icon-entrepreneurship7a72-870x520-c-center.jpg" style="width:100%">
                </div>
                <div class="col-md-6">
                    <div class="banner__box" style="background-color: unset;">
                        <div data-anim="fadeIn" class="measure-wide dark-grey fadeIn">
                            <h3 class="text-overlay__title  t-title  f3  f2-md  fw4  lh-title  mb3">Entrepreneurship </h3>
                            <div class="text-overlay__body  f7 fw4  lh-copy  mb4">
                                <p><span>Each and everyone of us drives new ideas and actions, creating future growth and value.</span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="banner-section-wrapper pt4  pb4" id="banner-block">
    <div class="banner  banner--text-overlay">
        <div class="container">
            <div class="row">
                <div class="col-md-6 order-1">
                    <img data-src="https://stada.vn/wp-content/uploads/2021/05/stada-corporate-website-our-values-icon-one-stada7a72-870x520-c-center.jpg" alt="Vì một STADA" title="Vì một STADA" src="https://stada.vn/wp-content/uploads/2021/05/stada-corporate-website-our-values-icon-one-stada7a72-870x520-c-center.jpg" style="width:100%">
                </div>
                <div class="col-md-6">
                    <div class="banner__box" style="background-color: unset;">
                        <div data-anim="fadeIn" class="measure-wide dark-grey fadeIn">
                            <h3 class="text-overlay__title  t-title  f3  f2-md  fw4  lh-title  mb3">ONE STADA </h3>
                            <div class="text-overlay__body  f7  fw4  lh-copy  mb4">
                                <p><span>Each and everyone of us acts in the best interests of the company as a whole rather than our business unit or function in order to build one successful STADA.</span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
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