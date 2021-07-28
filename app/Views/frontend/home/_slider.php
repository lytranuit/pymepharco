<section id="slide">
    <div class="slide-box slider">
        <?php foreach ($sliders as $row) : ?>
            <div class="banner has-hover has-slide-effect slide-zoom-in" id="banner-<?= $row->id ?>" style="height: 100vh;">
                <div class="banner-inner fill">
                    <div class="banner-bg fill">
                        <div class="bg fill bg-fill bg-loaded" style="background-image: url(<?= base_url($row->image_url) ?>);opacity: 0.6;"></div>
                    </div><!-- bg-layers -->
                    <div class="banner-layers container">
                        <div class="fill banner-link"></div>
                        <div id="text-box-<?= $row->id ?>" class="text-box banner-layer x50 md-x50 lg-x50 y50 md-y50 lg-y50 res-text">
                            <div class="">
                                <div class="text dark">

                                    <div class="text-inner text-center">

                                        <div class="tcbanner-text animate animate__animated animate__fadeInDown ">
                                            <?= $row->text ?>
                                        </div>
                                        <button target="_self" class="mt-5 animate animate__animated animate__infinite animate__bounce animate__slow animate__delay-1s">
                                            <i class="fas fa-chevron-down" style="font-size: 30px;"></i>
                                        </button>
                                    </div>
                                </div><!-- text-box-inner -->
                            </div>
                            <style scope="scope">
                                #text-box-<?= $row->id ?> {
                                    width: 70%;
                                }
                            </style>
                        </div><!-- text-box -->

                    </div><!-- .banner-layers -->
                </div><!-- .banner-inner -->
            </div>
        <?php endforeach ?>
    </div>

</section>