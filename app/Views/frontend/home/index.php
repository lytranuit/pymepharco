<?= $this->extend('frontend/layouts/main') ?>


<?= $this->section('content') ?>

<?= view_cell("\App\Libraries\HomeWidget::slider") ?>

<main id="main" class="" style="height: 10000px;">

    <section class="section sec_course" id="section_663405595">
        <div class="container">
            <div class="section-content relative">

                <div class="row" id="row-1141120817">
                    <?php for ($i = 1; $i < 13; $i++) : ?>
                        <div class="col-md-3 mt-2 mx-2">
                            <div class="box has-hover banner-imgboxx  has-hover box-shade dark box-text-bottom">

                                <div class="text-center row justify-content-md-center h-100" style="flex-direction: column;align-items: center;">
                                    <div class="col-12">
                                        <img src="<?= base_url("assets/images/product/$i.jpg") ?>" class="img-fluid d-inline-block" alt="">
                                    </div>
                                </div><!-- box-image -->
                                <div class="box-text text-left">
                                    <div class="box-text-inner">

                                        <div class="banner-imgbox-text">
                                            <div class="banner-textleft">
                                                <p></p>
                                                <h4><a>Bằng lái Xe </a></h4>
                                            </div>
                                            <p>Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn.Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500 </p>
                                            <div class="arow-animation"><span></span><a href="">Xem Thêm</a></div>
                                        </div>
                                    </div><!-- box-text-inner -->
                                </div><!-- box-text -->
                            </div>
                        </div>
                    <?php endfor ?>
                </div>
            </div><!-- .section-content -->
        </div>

        <style scope="scope">

        </style>
    </section>
</main>

<?= $this->endSection() ?>



<?= $this->section("script") ?>
<script>
    jQuery('.slide-box').slick({
        dots: false,
        arrows: false,
        infinite: true,
        speed: 300,
        slidesToShow: 1,
        autoplay: true,
        autoplaySpeed: 2000,
        adaptiveHeight: true
    });

    jQuery('#row-1141120817').slick({
        dots: false,
        infinite: false,
        speed: 300,
        slidesToShow: 4,
        slidesToScroll: 4,
        adaptiveHeight: true,
        arrows: true,
        prevArrow: '<div class="slick-prev"><i class="fa fa-angle-left" aria-hidden="true"></i></div>',
        nextArrow: '<div class="slick-next"><i class="fa fa-angle-right" aria-hidden="true"></i></div>',
        responsive: [{
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            },
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
        ]
    });
</script>

<?= $this->endSection() ?>