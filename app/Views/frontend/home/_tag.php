<div id="topNews">
    <div class="mainTitle">
        <span id="topNewsInstance_lblTitle"><?= lang("Custom.hot_news") ?></span>
    </div>
    <div class="container">
        <div class="row">
            <?php foreach ($list_news as $news) : ?>

                <div class="col-lg-3 col-md-6 my-2">

                    <div class="topNewsDate">
                        <?= date_TV('d \t\h\á\n\g M , Y', strtotime($news->date)) ?>
                    </div>
                    <div class="cleaner"></div>

                    <div class="topNewsImage">

                    </div>

                    <div class="topNewsText">
                        <a href="<?= url_news($news) ?>">
                            <img src="<?= base_url($news->image_url) ?>">
                        </a>

                        <div class="topNewsTitle">
                            <a href="<?= url_news($news) ?>">
                                <?= $news->{pick_language($news, 'title_')} ?>
                            </a>
                        </div>

                        <div class="topNewsAbstract">
                            <a href="<?= url_news($news) ?>">
                                <?= split_string($news->{pick_language($news, 'content_')}, 500) ?>
                            </a>
                        </div>

                        <div class="topNewsDetail">
                            <a href="<?= url_news($news) ?>">
                                <div class="detail">Read more</div>
                                <div class="arrow">›</div>
                                <div class="cleaner"></div>
                            </a>
                        </div>
                    </div>

                </div>
            <?php endforeach ?>
        </div>
    </div>
    <div class="cleaner"></div>

</div>