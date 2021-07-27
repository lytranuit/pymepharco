<?= $this->extend('frontend/layouts/main') ?>


<?= $this->section('content') ?>


<main id="main" class="" style="height: 10000px;">

    <div id="content" role="main">
        <?= view_cell("\App\Libraries\HomeWidget::slider") ?>

    </div>
</main>

<?= $this->endSection() ?>



<?= $this->section("script") ?>
<script>
    jQuery('.slide-box').slick({
        dots: false,
        arrows: false,
        infinite: true,
        slidesToShow: 1,
        adaptiveHeight: true
    });
    // On before slide change
    jQuery('.slide-box').on('beforeChange', function(event, slick, currentSlide, nextSlide) {
        var class_a = jQuery('.animate').attr('class');
        jQuery('.slide-box .animate').removeClass(class_a).addClass("animate");

        setTimeout(function() {
            jQuery('.slide-box .animate').addClass(class_a);
        }, 1)
    });
    jQuery(document).ready(function() {
        jQuery('.slide-box').slick('slickNext');
    })
</script>

<?= $this->endSection() ?>