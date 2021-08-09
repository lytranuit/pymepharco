<?= $this->extend('frontend/layouts/main') ?>


<?= $this->section('content') ?>

<main id="main" class="">

    <div id="content">

        <div id="page-header-92436122" class="page-header-wrapper">
            <div class="page-title page-headerr dark featured-title">

                <div class="page-title-bg">
                    <div class="title-bg fill bg-fill parallax-active" data-parallax-container=".page-title" data-parallax-background="" data-parallax="-">
                    </div>
                    <div class="title-overlay fill"></div>
                </div>

                <div class="page-title-inner container align-center text-center flex-row-col medium-flex-wrap">
                    <div class="title-wrapper uppercase flex-col">
                        <h1 class="entry-title mb-0">
                            <?= $info->{pick_language($info, "title_")} ?>
                        </h1>
                    </div>
                    <div class="title-content flex-col">
                        <div class="title-breadcrumbs pb-half pt-half">
                            <nav class="woocommerce-breadcrumb breadcrumbs"><a href="<?= base_url() ?>">Trang chủ</a>
                                <span class="divider">
                                    /
                                </span>
                                <?= $tag ?>
                            </nav>
                        </div>
                    </div>
                </div><!-- flex-row -->


                <style scope="scope">
                    #page-header-92436122 .page-title-inner {
                        min-height: 180px;
                    }

                    #page-header-92436122 .title-bg {
                        background-image: url(<?= base_url("assets/images/news.jpg") ?>);
                        background-position: 31% 62%;
                    }
                </style>
            </div><!-- .page-title -->
        </div><!-- .page-header-wrapper -->
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
                    <div clas>
                        <h3>Các tin khác</h3>
                        <ul class="ms-4">
                            <?php foreach ($news as $row) : ?>
                                <li>
                                    <a href="<?= url_news($row) ?>"><?= $row->{pick_language($row, "title_")} ?></a>
                                </li>
                            <?php endforeach ?>
                        </ul>
                    </div>




                </div> <!-- .large-9 -->

                <div class="post-sidebar col-md-3">
                    <div id="secondary" class="widget-area" role="complementary">
                        <?= view_cell("\App\Libraries\SidebarWidget::category") ?>
                        <?= view_cell("\App\Libraries\SidebarWidget::hot_news") ?>
                    </div><!-- #secondary -->
                </div><!-- .post-sidebar -->

            </div><!-- .row -->
        </div>
    </div><!-- #content .page-wrapper -->


</main>
<?= $this->endSection() ?>



<?= $this->section("style") ?>

<?= $this->endSection() ?>
<?= $this->section("script") ?>
<script>

</script>

<?= $this->endSection() ?>