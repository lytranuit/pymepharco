<section id="section_89897571">
    <div class="container">
        <div class="row">
            <div class="title-all">
                <h2>Tin mới</h2>
                <div class="line-bottom"></div>
                <div class="gap-element clearfix" style="display:block; height:auto; padding-top:25px"></div>
            </div>
            <div class="col-md-9">
                <?php if (count($list_news) > 0) : ?>

                    <?php $news = array_shift($list_news) ?>
                    <div class="last-blog-item row">
                        <div class="col-md-3 mb-2">
                            <a href="<?= url_news($news) ?>">
                                <img src="<?= base_url($news->image_url) ?>" class="img-fluid">
                            </a>
                        </div>
                        <div class="last-blog-item-content col-md-9">
                            <h4><a href="<?= url_news($news) ?>" title="" class="row_2"><?= $news->{pick_language($news, 'title_')} ?></a></h4>
                            <div class="post-date-lfb text-muted mb-2 small">
                                <?= date_TV('d \t\h\á\n\g M , Y', strtotime($news->date)) ?>
                            </div>
                            <div class="last-blog-item-news">
                                <p>
                                    <?= split_string($news->{pick_language($news, 'content_')}, 500) ?>
                                </p>

                                <p>
                                    <a href="<?= url_news($news) ?>">Xem tiếp »</a>
                                </p>
                            </div>
                        </div>
                    </div>
                <?php endif ?>
            </div>
            <div class="col-md-3">
                <ul style="margin: 0px 10px;">
                    <?php foreach ($list_news as $news) : ?>
                        <li>
                            <h4><a class="row_2" href="<?= url_news($news) ?>" title="<?= $news->{pick_language($news, 'title_')} ?>"><?= $news->{pick_language($news, 'title_')} ?></a></h4>
                        </li>
                    <?php endforeach ?>
                </ul>
            </div>
            <?php foreach ($tags as $tag) : ?>
                <div class="col-md-3" data-animate="fadeInLeft">

                    <a href="<?= url_tag($tag) ?>" class="block-title td-block-title"><span class="td-pulldown-size"><?= $tag->{pick_language($tag)} ?></span></a>
                    <div id="td_uid_86_6100bdcc47f90" class="td_block_inner td-mc1-wrap">
                        <?php if (count($tag->news) > 0) : ?>

                            <?php $news = array_shift($tag->news) ?>
                            <div class="td_module_flex_1 td_module_wrap td-animation-stack">
                                <div class="td-module-container td-category-pos-image">
                                    <div class="td-image-container">
                                        <div class="td-module-thumb">
                                            <a href="<?= url_news($news) ?>" rel="bookmark" class="td-image-wrap" title="<?= $news->{pick_language($news, 'title_')} ?>">
                                                <span class="entry-thumb td-thumb-css" style="background-image: url(<?= base_url($news->image_url) ?>)"></span>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="td-module-meta-info">

                                        <h3 class="entry-title td-module-title"><a href="<?= url_news($news) ?>" rel="bookmark" title="<?= $news->{pick_language($news, 'title_')} ?>"><?= $news->{pick_language($news, 'title_')} ?></a></h3>

                                        <div class="td-editor-date">

                                            <span class="td-author-date">
                                                <span class="td-post-date">
                                                    <time class="entry-date td-module-date text-white" datetime="2019-04-10T06:55:04+00:00"><?= date_TV('d \t\h\á\n\g M , Y', strtotime($news->date)) ?></time>
                                                </span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endif ?>
                        <?php foreach ($tag->news as $news) : ?>
                            <div class="td_module_flex_4 td_module_wrap td-animation-stack">
                                <div class="td-module-container row g-1">
                                    <div class="td-image-container col-3">
                                        <div class="td-module-thumb">
                                            <a href="<?= url_news($news) ?>" class="td-image-wrap" title="<?= $news->{pick_language($news, 'title_')} ?>">
                                                <span class="entry-thumb td-thumb-css" data-type="css_image" style="background-image: url(<?= base_url($news->image_url) ?>)">
                                                </span>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="td-module-meta-info col-9">

                                        <h3 class="entry-title td-module-title"><a href="<?= url_news($news) ?>" rel="bookmark" title="<?= $news->{pick_language($news, 'title_')} ?>"><?= $news->{pick_language($news, 'title_')} ?></a></h3>

                                        <div class="td-editor-date">
                                            <span class="td-author-date">
                                                <span class="td-post-date"><time class="entry-date text-muted small td-module-date"><?= date_TV('d \t\h\á\n\g M,y', strtotime($news->date)) ?></time></span>
                                            </span>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        <?php endforeach ?>
                    </div>
                </div>
            <?php endforeach ?>

        </div>
    </div>
    <style scope="scope">
        #section_89897571 {
            padding-top: 30px;
            padding-bottom: 30px;
            background-color: white;
        }

        .block-title {
            font-size: 14px;
            line-height: 1;
            margin-top: 0;
            display: inline-block;
            border-bottom: 2px solid #222222;
            border-color: #56b665;
            margin-bottom: 10px;
            width: 100%;
        }

        .block-title span,
        .block-title a {
            line-height: 17px;
            display: inline-block;
            padding: 7px 12px 4px;
            background-color: #56b665;
            color: #fff;
        }
    </style>
</section>