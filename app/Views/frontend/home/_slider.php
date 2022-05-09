<div id="slider">
    <?php foreach ($sliders as $row) : ?>
        <div class="box-slider" style="display:none;line-height: 0">
            <a href="<?= $row->url ?>" target="_blank">
                <img src="<?= base_url($row->image_url) ?>" alt="" title="" style="width:100%">
            </a>
            <div class="sliderImage">

                <div class="circle circleNo1"></div>
                <div class="circle circleNo2"></div>

                <div id="sliderOverlay" style="display:none">
                    <div id="sliderOverlayContent">
                        <div id="sliderOverlayText" class="">
                            <?= $row->{pick_language($row, "text_")} ?>
                            <a href="<?= $row->url ?>">
                                <span class="sliderButton ">Read more</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach ?>
    <div id="sliderNavigator">
    </div>
</div>