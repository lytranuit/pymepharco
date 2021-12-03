<?= $this->extend('frontend/layouts/main') ?>


<?= $this->section('content') ?>

<div id="breadcrumb">
    <span id="breadcrumbInstance_lblBreadcrumb">
        <li><a href="/"><?= lang("Custom.home") ?></a></li>
        <li>›</li>
        <li><?= lang("Custom.news") ?></li>
    </span>
</div>
<div id="pageImage">

    <img id="pageImageInstance_imgPageImage" src="<?= base_url("/assets/images/Header-Kontakt.png") ?>" style="border-width:0px;">

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
<div id="blogContent">
    <div id="categoryCol">

        <a href="/eng/blog">
            <div class="categoryItem currentCategory">
                All blogs
                <svg width="13" height="19" viewBox="0 0 13 19">
                    <path d="M9.438 9.333L.36 1.768 1.64.232l10.922 9.101L1.64 18.435.36 16.899z" fill="#343434" fill-rule="nonzero"></path>
                </svg>
            </div>
        </a>

        <a href="/eng/blog/zdravstvena-edukacija">
            <div class="categoryItem ">
                Health Education
                <svg width="13" height="19" viewBox="0 0 13 19">
                    <path d="M9.438 9.333L.36 1.768 1.64.232l10.922 9.101L1.64 18.435.36 16.899z" fill="#343434" fill-rule="nonzero"></path>
                </svg>
            </div>
        </a>

        <a href="/eng/blog/porodicni-kutak">
            <div class="categoryItem ">
                Family Corner
                <svg width="13" height="19" viewBox="0 0 13 19">
                    <path d="M9.438 9.333L.36 1.768 1.64.232l10.922 9.101L1.64 18.435.36 16.899z" fill="#343434" fill-rule="nonzero"></path>
                </svg>
            </div>
        </a>

        <a href="/eng/blog/iz-ugla-struke">
            <div class="categoryItem ">
                From a professional point of view
                <svg width="13" height="19" viewBox="0 0 13 19">
                    <path d="M9.438 9.333L.36 1.768 1.64.232l10.922 9.101L1.64 18.435.36 16.899z" fill="#343434" fill-rule="nonzero"></path>
                </svg>
            </div>
        </a>

        <a href="/eng/blog/health-stories">
            <div class="categoryItem ">
                Health Stories
                <svg width="13" height="19" viewBox="0 0 13 19">
                    <path d="M9.438 9.333L.36 1.768 1.64.232l10.922 9.101L1.64 18.435.36 16.899z" fill="#343434" fill-rule="nonzero"></path>
                </svg>
            </div>
        </a>

    </div>
    <div id="blogCol">
        <?php foreach ($news as $row) : ?>
            <div class="blogItem">
                <div class="blogItemText">
                    <div class="blogItemTitle">
                        <?= url_news($row) ?>
                    </div>

                    <img src="<?= base_url(isset($row->image->src) ? $row->image->src : "assets/images/placeholder.png") ?>" alt="<?= url_news($row) ?>" title="<?= url_news($row) ?>">

                    <div class="blogItemAbstract">
                        <?= split_string($row->{pick_language($row, 'content_')}, 300) ?>
                    </div>
                </div>
                <div class="blogItemDetail">
                    <a href="<?= url_news($row) ?>">
                        <span>Read more</span>
                        <svg width="13" height="19" viewBox="0 0 13 19">
                            <path d="M9.438 9.333L.36 1.768 1.64.232l10.922 9.101L1.64 18.435.36 16.899z" fill="#343434" fill-rule="nonzero"></path>
                        </svg>
                    </a>
                </div>
                <div class="cleaner"></div>
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
<?= $this->endSection() ?>

<?= $this->section("script") ?>
<?= $this->endSection() ?>