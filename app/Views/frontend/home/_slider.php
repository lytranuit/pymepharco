<section id="banner">
    <div class="slide-box">
        <?php foreach ($sliders as $row) : ?>
            <div class="banner-item ">
                <a target="_blank" href="<?= $row->url ?>" title="<?= $row->text ?>">
                    <img alt="<?= $row->text ?>" src="<?= base_url($row->image_url) ?>" class="img-responsive w-100">
                </a>
            </div>
        <?php endforeach ?>
    </div>

</section>
