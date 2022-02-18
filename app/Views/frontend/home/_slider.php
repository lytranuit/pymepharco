<div id="slider">
    <?php foreach ($sliders as $row) : ?>
        <div class="sliderImage">
            <img src="<?= base_url($row->image_url) ?>" alt="" title="">
            <div class="circle circleNo1"></div>
            <div class="circle circleNo2"></div>

            <div id="sliderOverlay">
                <div id="sliderOverlayContent">
                    <div id="sliderOverlayText" class="">
                        <?= $row->{pick_language($row, "text_")} ?>
                        <a href="<?= $row->link ?>">
                            <span class="sliderButton ">Read more</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach ?>
    <div id="sliderNavigator">
    </div>
</div>

<script src="<?= base_url("assets/js/slider.js") ?>"></script>