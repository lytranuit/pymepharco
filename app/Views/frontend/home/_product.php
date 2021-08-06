<section class="section" id="section_89897570">
    <div class="container">
        <div class="row" id="row-214190187">
            <div class="col small-12 large-12" data-animate="fadeInLeft" data-animated="true">
                <div class="col-inner">
                    <div class="title-all">
                        <h2>Các sản phẩm tiêu biểu</h2>
                        <div class="line-bottom"></div>
                        <div class="gap-element clearfix" style="display:block; height:auto; padding-top:25px"></div>
                    </div>
                </div>
            </div>
            <div>
                <div class="row">
                    <?php foreach ($products as $product) : ?>
                        <div class="col-md-3 col-6 item-product item-product-grid-style1 text-center mb-4" data-animate="fadeInDown">
                            <div class="product-thumb">
                                <a href="<?= base_url($product->image_url) ?>" class="product-thumb-link zoom-thumb">
                                    <img src="<?= base_url($product->image_url) ?>" class="img-fluid" alt="">
                                </a>
                                <div class="product-extra-link extra-link-hover1">
                                    <a href="<?= base_url($product->image_url) ?>"><?= $product->{pick_language($product)} ?></a>
                                </div>
                            </div>
                        </div>
                    <?php endforeach ?>

                </div>
            </div>
        </div>
    </div><!-- .section-content -->


    <style scope="scope">
        #section_89897570 {
            padding-top: 30px;
            padding-bottom: 30px;
            background-color: rgb(246, 246, 246);
        }
    </style>
</section>