<aside id="flatsome_recent_posts-4" class="widget flatsome_recent_posts"> <span class="widget-title "><span><?= lang("Custom.danh_muc") ?></span></span>
    <div class="is-divider small"></div>
    <ul>
        <?php foreach ($categories as $row) : ?>
            <li class="">
                <a href="<?= url_tag($row) ?>"><?= $row->{pick_language($row)} ?></a>
            </li>
        <?php endforeach ?>

    </ul>
</aside>