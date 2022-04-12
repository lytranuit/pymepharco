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
<div id="" class="mt-5">

    <div class="container-fluid">
        <div class="row">

            <div class="col-md-6 px-lg-5 px-md-3">
                <a class="sp_img fancybox" href="<?= $info->image_url ?>" style="width: 100%;
    display: inline-block;
    position: relative;
    text-align: center;">
                    <img src="<?= $info->image_url ?>" alt="Gallery Image" style="max-width: 100%;">
                </a>
            </div>
            <div class="col-md-6">
                <div class="product_details ">
                    <h3 style="    font-size: 36px;
    color: #818181;"><?= $info->{pick_language($info)} ?></h3>

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
                    <div class="accordion accordion-card js-accordion bg-white m-b-32">
                        <div class="accordion-heading">
                            <div class="label label-lg label-is-icon label-icon-left">
                                <span class="label-text">Hướng dẫn sử dụng</span>
                            </div>
                        </div>
                        <div class="accordion-list">
                            <?php foreach ($info->ext as $row) : ?>

                                <div class="accordion-item js-acc">
                                    <div class="accordion-title">
                                        <div class="label label-md label-is-icon label-icon-left">
                                            <i class="fas fa-info-circle"></i>
                                            <span class="label-text"> <?= $row->{pick_language($row, "title_")} ?></span>
                                        </div>
                                    </div>
                                    <div class="accordion-icon">
                                        <i class="fas fa-chevron-down ac-down"></i>
                                    </div>
                                    <div class="accordion-details" style="display: none;">
                                        <?= $row->{pick_language($row, "content_")} ?>
                                    </div>
                                </div>
                            <?php endforeach ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="" class="">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <h2>Sản phẩm khác</h2>
            </div>
            <div class="row">

                <?php foreach ($product_related as $row) : ?>
                    <div class="col-6 col-sm-6 col-lg-4 section-products__item">
                        <div class="thumbnail">
                            <a class="bg-image " href="<?= url_product($row) ?>">
                                <img style="width:100%" src="<?= $row->image_url ?>" alt="<?= $row->{pick_language($row, 'name_')} ?>">
                                <span class="hover-state hover-state--tranparent">
                                    <span><span></span></span>
                                </span>
                            </a>
                        </div>
                        <div class="section-products__item__info">
                            <h2 class="section-products__item__info__title" style="text-align: center;"><a href="<?= url_product($row) ?>"><?= $row->{pick_language($row, 'name_')} ?></a></h2>

                            <!-- <span class="section-products__item__info__type">Rx</span> -->

                            <!-- <span class="section-products__item__info__quantity" style="height: 21px;">Hộp 14 viên, 28 viên, 30 viên, 50 viên.</span> -->
                        </div>

                    </div>
                <?php endforeach ?>

            </div>
        </div>
    </div>
</div>
<?= $this->endSection() ?>

<?= $this->section("style") ?>
<link rel="stylesheet" href="<?= base_url("assets/lib/fancybox/jquery.fancybox.css") ?>" type="text/css" media="screen" />
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
        color: #484848;
        border-radius: 5px;
        font-size: 16px;
    }

    .accordion-heading {
        padding: 16px;
        font-size: 20px;
        color: black;
        border-bottom: 1px solid #dfdfdf;
    }

    .accordion-item {
        padding: 12px 40px 12px 16px;
        border-bottom: 1px solid #dfdfdf;
        position: relative;
        cursor: pointer;
    }

    .accordion-title {
        text-transform: uppercase;
    }

    .accordion-icon {

        position: absolute;
        right: 16px;
        top: 0;
        width: 24px;
        height: 100%;
        text-align: center;
        padding-top: 18px;
    }

    .accordion-icon .ac-down {
        display: block;
        transition: .3s cubic-bezier(.445, .05, .55, .95);
    }

    .accordion-item.open .ac-down {
        transform: rotate(-180deg);
    }
</style>
<?= $this->endSection() ?>


<?= $this->section("script") ?>

<script src="<?= base_url("assets/lib/fancybox/jquery.fancybox.js") ?>"></script>
<script src="<?= base_url("assets/js/circle.js") ?>"></script>
<script>
    $(document).ready(function() {
        $(".fancybox").fancybox();
        $('.js-accordion').each(function() {
            var ac_item = $(this).find('.js-acc');
            var content = $(this).find('.accordion-details');
            var link = content.find('a');
            content.hide();
            ac_item.click(function() {
                var $that = $(this),
                    is_open = $that.is('.open');

                if (is_open) {

                    $that.removeClass('open').find('.accordion-details').slideUp();

                } else {

                    ac_item.removeClass('open').find('.accordion-details').slideUp();

                    $that.addClass('open').find('.accordion-details').slideDown();
                }

            });
        });
    })
</script>
<?= $this->endSection() ?>