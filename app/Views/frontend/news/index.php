<?= $this->extend('frontend/layouts/main') ?>

<?= $this->section('content') ?>

<?= view_cell("\App\Libraries\HeaderWidget::breadcrumb") ?>

<div id="pageImage">

    <img id="pageImageInstance_imgPageImage" src="<?= base_url("/assets/images/about.jpg") ?>" style="border-width:0px;">

    <div id="pageImageOverlay">
        <div class="circle circleNo1"></div>
        <div class="circle circleNo2"></div>

        <div class="pageTitle" style="opacity: 1; top: 50%; bottom: auto; transform: translateY(-50%);">
            <div class="pageTitleContent">
                <div><span id="pageImageInstance_lblTitle"><?= lang("Custom.news") ?></span></div>
            </div>
        </div>
    </div>

</div>
<div class="container plainText ">
    <div class="row">
        <div class="col-md-3 my-2">
            <?= view_cell("\App\Libraries\SidebarWidget::sidemenunews") ?>
        </div>
        <div class="col-md-9">
            <div id="blogCol" class="row">
                <?php foreach ($news as $row) : ?>
                    <div class="col-md-4 my-2">

                        <div class="topNewsDate">
                            <?= date_TV('d \t\h\á\n\g M , Y', strtotime($row->date)) ?>
                        </div>
                        <div class="cleaner"></div>

                        <div class="topNewsImage">

                        </div>

                        <div class="topNewsText">
                            <a href="<?= url_news($row) ?>">
                                <img src="<?= base_url($row->image_url) ?>">
                            </a>

                            <div class="topNewsTitle">
                                <a href="<?= url_news($row) ?>">
                                    <?= $row->{pick_language($row, 'title_')} ?>
                                </a>
                            </div>

                            <div class="topNewsAbstract">
                                <a href="<?= url_news($row) ?>">
                                    <?= split_string($row->{pick_language($row, 'content_')}, 500) ?>
                                </a>
                            </div>

                            <div class="topNewsDetail">
                                <a href="<?= url_news($row) ?>">
                                    <div class="detail">Read more</div>
                                    <div class="arrow">›</div>
                                    <div class="cleaner"></div>
                                </a>
                            </div>
                        </div>

                    </div>
                <?php endforeach ?>
                <div class="cleaner"></div>
            </div>
            <div class="cleaner"></div>

            <div class="text-center paginate_center col-lg-12 col-sm-12 col-xs-12 col-md-12" wfd-id="79">
                <?php if ($pager) : ?>
                    <?= $pager->links() ?>
                <?php endif ?>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection() ?>
<?= $this->section("style") ?>
<link href="<?= base_url("/assets/css/sidebar.css") ?>" rel="stylesheet" type="text/css">
<?= $this->endSection() ?>

<?= $this->section("script") ?>
<script src="<?= base_url("assets/js/circle.js") ?>"></script>
<?= $this->endSection() ?>