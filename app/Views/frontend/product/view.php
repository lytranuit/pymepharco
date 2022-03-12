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

            <div class="col-md-6">
                <div class="sp_img" style="width: 100%; display: inline-block;    position: relative;
    min-height: 635px;
    background: #f1f5f8;
    border-radius: 20px;
    text-align: center;">
                    <img src="<?= $info->image_url ?>" alt="Gallery Image" style="    max-width: 100%;
    width: auto;
    position: absolute;
    right: 0;
    top: 0;
    bottom: 0;
    left: 0;
    margin: auto;">
                </div>
            </div>
            <div class="col-md-6">
                <div class="product_details ">
                    <h3 style="font-size:24px;font-weight:bold;"><?= $info->{pick_language($info)} ?></h3>

                    <div class="pd_excrpt">
                        <?= $info->{pick_language($info, "description_")} ?>
                    </div>
                    <hr style="color:gray">

                    <div class="pro_meta clearfix">
                        <div class="mtItem">
                            <h5 style="font-weight:bold;">MÃ SẢN PHẨM:</h5>
                            <span> <?= $info->code ?> </span>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<div class="product_d_info">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="product_d_inner">
                    <div class="product_info_button">
                        <ul class="nav" role="tablist" id="nav-tab">
                            <li>
                                <a class="active" data-toggle="tab" href="#tab1" role="tab" aria-controls="info" aria-selected="true">Hướng dẫn sử dụng</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#tab2" role="tab" aria-controls="sheet" aria-selected="false" class="">Chống chỉ định</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#tab3" role="tab" aria-selected="false" class="">Phản ứng phụ</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#tab4" role="tab" aria-selected="false" class="">Thận trọng</a>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade active show" id="tab1" role="tabpanel">
                            <?= $info->{pick_language($info, "guide_")} ?>
                        </div>
                        <div class="tab-pane fade" id="tab2" role="tabpanel">
                            <?= $info->{pick_language($info, "ccd_")} ?>
                        </div>

                        <div class="tab-pane fade" id="tab3" role="tabpanel">
                            <?= $info->{pick_language($info, "ppp_")} ?>
                        </div>
                        <div class="tab-pane fade" id="tab4" role="tabpanel">
                            <?= $info->{pick_language($info, "tt_")} ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection() ?>

<?= $this->section("style") ?>
<style>
    .product_d_info {
        margin-bottom: 50px;
        background: #f6f6f6;
        padding: 50px 0;

    }

    .product_d_info .sidebar {
        padding: 50px 30px;

    }

    .product_d_inner {
        background: white;
        padding: 25px;
        color: grey;
        border-radius: 5px;
    }

    .product_info_button {
        border-bottom: 1px solid #d5d5d5;
        padding-bottom: 15px;
        margin-bottom: 40px
    }

    .product_info_button ul {
        justify-content: center;
        list-style: none;
        display: flex;
    }

    .product_info_button li a {
        display: block;
        float: left;
        font-size: 20px;
        color: #a9a9a9;
        font-weight: 600;
        margin-right: 35px;
        line-height: 26px;
        position: relative;
        padding-bottom: 10px;
    }

    .product_info_button li a::before {
        content: "";
        width: 0;
        left: 0;
        bottom: 0;
        height: 2px;
        background: #ffd54c;
        position: absolute;
    }

    .product_info_button li a.active {
        color: #333333;
    }

    .product_info_button li a.active::before {
        width: 100%;
    }


    .product_info_button li a:hover {
        color: #333333;
    }

    .product_info_button li:last-child a {
        margin-right: 0;
    }

    .tab-content>.tab-pane {
        display: block;
        height: 0;
        opacity: 0;
        overflow: hidden;
    }

    .tab-content>.tab-pane.active {
        display: block;
        height: auto;
        opacity: 1;
        overflow: visible;
    }

    .fade:not(.show) {
        opacity: 0;
    }

    .fade {
        transition: opacity .15s linear;
    }
</style>
<?= $this->endSection() ?>


<?= $this->section("script") ?>

<script src="<?= base_url("assets/js/circle.js") ?>"></script>
<script>
    $(document).ready(function() {
        $(".nav li a").click(function() {
            let href = $(this).attr("href");
            $(".nav li a").removeClass("active");
            $(this).addClass("active");
            $(".tab-content .tab-pane").removeClass("active show");
            $(".tab-content " + href).addClass("active show");
        });

    })
</script>
<?= $this->endSection() ?>