<?= $this->extend('frontend/layouts/main') ?>


<?= $this->section('content') ?>

<?= view_cell("\App\Libraries\HeaderWidget::breadcrumb") ?>


<div class="container-fluid plainText">

    <div class="row justify-center">
        <h2 style="font-size:33px;" class="text-center txt_violet space10px hr">Tìm kiếm : <b><?= $search ?></b></h2>

        <?php foreach ($products as $row) : ?>
            <div class="col-6 col-sm-6 col-lg-4 section-products__item">
                <div class="thumbnail">
                    <a class="bg-image " href="<?= url_product($row) ?>">
                        <img style="width:100%" src="<?= $row->image_url ?>" alt="<?= $row->{pick_language($row, 'name_')} ?>">
                        <span class="hover-state hover-state--tranparent">
                            <span><span></span></span>
                        </span>
                    </a>
                </div>
                <div class="section-products__item__info">
                    <h2 class="section-products__item__info__title" style="text-align: center;"><a href="<?= url_product($row) ?>"><?= $row->{pick_language($row, 'name_')} ?></a></h2>

                    <!-- <span class="section-products__item__info__type">Rx</span> -->

                    <!-- <span class="section-products__item__info__quantity" style="height: 21px;">Hộp 14 viên, 28 viên, 30 viên, 50 viên.</span> -->
                </div>

            </div>
        <?php endforeach ?>
    </div>
    <div class="pv3 mv2">
        <div class="pagination">
            <div class="flex align-center justify-center">

                <?= $pager->links() ?>
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