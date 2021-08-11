<section id="slide">
    <div class="slide-box slider">
        <?php foreach ($sliders as $row) : ?>
            <div class="banner has-hover has-slide-effect slide-zoom-in" id="banner-<?= $row->id ?>" style="height: 100vh;">
                <div class="banner-inner fill">
                    <div class="banner-bg fill">
                        <div class="bg fill bg-fill bg-loaded" style="background-image: url(<?= base_url($row->image_url) ?>);"></div>
                    </div><!-- bg-layers -->
                    <div class="banner-layers container d-flex align-items-center">
                        <div class="col-md-5 animate animate__animated animate__fadeInDown">
                            <div class="block-info-banner" style="background: rgba(230, 230, 230, 0.9);
    padding: 20px 20px 30px 20px;
    position: relative;font-size:small;white-space:initial">
                                <?= $row->text ?>
                                <a href="<?= $row->link ?>" class="view-banner" style="    background: #009a4e;
    color: #fff;
    padding: 10px 20px;
    position: absolute;
    display: inline-block;
    bottom: -20px;">XEM CHI TIẾT <i class="fas fa-chevron-right"></i></a>
                            </div>
                        </div>
                    </div><!-- .banner-layers -->
                    <button target="_self" style="position: absolute;
    bottom: 20px;
    left: calc(50% - 30px);
    background: white;
    width: 60px;
    height: 60px;
    padding:0;
    margin:0;
    border-radius: 100%;" class="next-to-about animate animate__animated animate__bounce animate__slow animate__delay-1s">
                        <i class="fas fa-chevron-down animate animate__animated animate__infinite animate__bounce animate__slow" style="font-size: 30px;"></i>
                    </button>
                </div><!-- .banner-inner -->
            </div>
        <?php endforeach ?>
    </div>

</section>