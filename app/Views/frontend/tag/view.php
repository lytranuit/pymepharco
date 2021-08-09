<?= $this->extend('frontend/layouts/main') ?>


<?= $this->section('content') ?>
<main id="main" class="">


    <div id="content" class="">

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
                            <?= $tag->{pick_language($tag)} ?> </h1>
                    </div>
                    <div class="title-content flex-col">
                        <div class="title-breadcrumbs pb-half pt-half">
                            <nav class="woocommerce-breadcrumb breadcrumbs"><a href="<?= base_url() ?>">Trang chủ</a> <span class="divider">/</span> <?= $tag->{pick_language($tag)} ?></nav>
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
        <div class="container mt-5">

            <div class="row">

                <div class="large-9 col-md-9">
                    <div id="row-731259342" class="row has-shadow row-box-shadow-1 row-box-shadow-3-hover">
                        <?php foreach ($news as $row) : ?>
                            <div class="col-md-4 col-6 post-item mb-2">
                                <div class="col-inner">
                                    <a href="<?= url_news($row) ?>" class="plain">
                                        <div class="box box-text-bottom box-blog-post has-hover">
                                            <div class="box-image">
                                                <div class="image-cover" style="padding-top:56%;">
                                                    <img width="300" height="138" src="<?= base_url($row->image_url) ?>" class="attachment-medium size-medium wp-post-image" alt="">
                                                </div>
                                            </div><!-- .box-image -->
                                            <div class="box-text text-left">
                                                <div class="box-text-inner blog-post-inner">


                                                    <h5 class="post-title is-large "><?= $row->{pick_language($row, 'title_')} ?></h5>
                                                    <div class="is-divider"></div>
                                                    <p class="from_the_blog_excerpt "><?= split_string($row->{pick_language($row, 'content_')}, 200) ?></p>



                                                </div><!-- .box-text-inner -->
                                            </div><!-- .box-text -->
                                            <div class="badge absolute top post-date badge-circle">
                                                <div class="badge-inner">
                                                    <span class="post-date-day"><?= date("d", strtotime($row->date)) ?></span><br>
                                                    <span class="post-date-month is-xsmall"><?= date("M", strtotime($row->date)) ?></span>
                                                </div>
                                            </div>
                                        </div><!-- .box -->
                                    </a><!-- .link -->
                                </div><!-- .col-inner -->
                            </div><!-- .col -->
                        <?php endforeach ?>
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
    </div><!-- .page-wrapper .blog-wrapper -->


</main>
<?= $this->endSection() ?>

<?= $this->section("style") ?>

<?= $this->endSection() ?>
<?= $this->section("script") ?>
<?= $this->endSection() ?>