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
<main id="main" class="">

    <div class="container">
        <div class="row row-large row-divided mt-5">
            <div class="col-md-9">
                <article id="post-74" class="post-74 post type-post status-publish format-standard has-post-thumbnail hentry category-tin-tuc">
                    <div class="article-inner">
                        <header class="entry-header">
                            <div class="entry-header-text entry-header-text-top text-left">

                                <h1 class="entry-title"><?= $info->{pick_language($info, "title_")} ?></h1>
                                <h6 class="entry-category is-xsmall">
                                    <a href="#" rel="category tag"><?= date("d M,Y", strtotime($info->date)) ?></a>
                                </h6>
                                <div class="entry-divider is-divider small"></div>

                            </div><!-- .entry-header -->
                        </header><!-- post-header -->
                        <div class="entry-content single-page">
                            <?= $info->{pick_language($info, "content_")} ?>
                        </div><!-- .entry-content2 -->


                    </div><!-- .article-inner -->
                </article><!-- #-74 -->
                <hr>
            </div> <!-- .large-9-->
        </div><!-- .row -->
    </div>
    </div><!-- #content .page-wrapper -->


</main>
<?= $this->endSection() ?>



<?= $this->section("style") ?>

<?= $this->endSection() ?>
<?= $this->section("script") ?>
<?= $this->endSection() ?>