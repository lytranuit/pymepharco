<aside id="flatsome_recent_posts-4" class="widget flatsome_recent_posts"> <span class="widget-title "><span><?= lang("Custom.hot_news") ?></span></span>
    <div class="is-divider small"></div>
    <ul>
        <?php foreach ($list_news as $news) : ?>
            <li class="recent-blog-posts-li">
                <div class="flex-row recent-blog-posts align-top pt-half pb-half">
                    <div class="flex-col mr-half">
                        <div class="badge post-date  badge-circle">
                            <div class="badge-inner bg-fill" style="background: url(<?= base_url($news->image_url) ?>); border:0;">
                            </div>
                        </div>
                    </div><!-- .flex-col -->
                    <div class="flex-col flex-grow">
                        <a href="<?= url_news($news) ?>" title="<?= $news->{pick_language($news, "title_")} ?>"><?= $news->{pick_language($news, "title_")} ?></a>
                    </div>
                </div><!-- .flex-row -->
            </li>
        <?php endforeach ?>
    </ul>
</aside>