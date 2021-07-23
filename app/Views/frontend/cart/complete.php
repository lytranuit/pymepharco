<?= $this->extend('frontend/layouts/main') ?>


<?= $this->section('content') ?>
<section class="my-5">
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="col-12 text-center">
                            <?= lang("Custom.cart_text_finish") ?>
                        </h5>
                        <div class="text-center">
                            <a href="<?= base_url() ?>" class="btn btn-danger mr-5"><?= lang("Custom.cart_next") ?></a>
                            <a href="<?= base_url() ?>member/history" class="btn btn-danger"><?= lang("Custom.history_order") ?></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12 mt-5">
                <div class="card bg-light">
                    <div class="card-body">

                        <div class="row">
                            <div class="col-12">
                                <table class="product-table table table-borderless border-bottom">
                                    <?php foreach ($cart['details'] as $row) : ?>
                                        <tr class="product" data-id="<?= $row->id ?>">
                                            <td class="product__image">
                                                <div class="product-thumbnail">
                                                    <div class="product-thumbnail__wrapper">
                                                        <img class="img-responsive" src="http://simbaeshop.com<?= $row->image_url ?>" />
                                                    </div>
                                                    <span class="product-thumbnail__quantity" aria-hidden="true"><?= $row->qty ?></span>
                                                </div>

                                            </td>
                                            <td class="product__description">
                                                <a href='' class="fw-bold text-dark"><?= $row->{pick_language($row, 'name_')}  ?></a>
                                                <div><?= lang("Custom.code") ?>: <span class="fw-bold"><?= $row->code ?></span> </div>
                                                <div><?= lang('qui_cach') ?>: <span class="fw-bold"><?= $row->{pick_language($row, 'volume_')}  ?></span></div>
                                            </td>
                                            <td class="product__price">
                                                <span class="order-summary__emphasis"><?= number_format($row->amount, 0, ",", ".") ?>đ</span>
                                            </td>
                                        </tr>
                                    <?php endforeach ?>
                                </table>
                            </div>
                            <div class="col-12">
                                <table class="total-line-table table table-borderless">
                                    <tbody class="border-bottom">
                                        <tr class="total-line total-line--subtotal">
                                            <th class="total-line__name" scope="row"><?= lang("Custom.total") ?></th>
                                            <td class="text-right">
                                                <span class="fw-bold" data-amount="<?= $cart['amount_product'] ?>">
                                                    <?= number_format($cart['amount_product'], 0, ",", ".") ?>đ
                                                </span>
                                            </td>
                                        </tr>


                                        <tr class="total-line total-line--shipping">
                                            <th class="total-line__name" scope="row"><?= lang("Custom.service_fee") ?></th>
                                            <td class="text-right">
                                                <span class="">
                                                    <?php if ($cart['service_fee'] == -1) : ?>
                                                        <?= lang("Custom.price_zero") ?>
                                                    <?php else : ?>
                                                        <?= number_format($cart['service_fee'], 0, ",", ".") ?>đ
                                                    <?php endif ?>
                                                </span>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tfoot class="total-line-table__footer">
                                        <tr class="total-line">
                                            <th class="total-line__name payment-due-label" scope="row">
                                                <span class="payment-due-label__total"><?= lang("Custom.amount") ?></span>
                                            </th>
                                            <td class="text-right">
                                                <span class="fw-bold" style="font-size:20px;">
                                                    <?= number_format($cart['paid_amount'], 0, ",", ".") ?>đ
                                                </span>

                                                <div><?= NumberToText($cart['paid_amount']) ?></div>
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<style>
    .product-thumbnail {
        width: 4.6em;
        height: 4.6em;
        border-radius: 8px;
        background: #fff;
        position: relative
    }

    .product-thumbnail::after {
        content: '';
        display: block;
        position: absolute;
        top: 0;
        left: 0;
        bottom: 0;
        right: 0;
        border-radius: 8px;
        border: 1px rgba(0, 0, 0, 0.1) solid;
        z-index: 2
    }

    .product-thumbnail__wrapper {
        width: 100%;
        height: 100%;
        position: relative;
        overflow: hidden;
        border-radius: 8px;
        z-index: 1
    }

    .product-thumbnail__image {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        max-width: 100%;
        max-height: 100%;
        margin: auto
    }

    .product-thumbnail__quantity {
        font-size: 0.85714em;
        font-weight: 500;
        line-height: 1.75em;
        white-space: nowrap;
        text-align: center;
        border-radius: 1.75em;
        background-color: rgba(114, 114, 114, 0.9);
        color: #fff;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        min-width: 1.75em;
        height: 1.75em;
        padding: 0 0.58333em;
        position: absolute;
        right: -0.75em;
        top: -0.75em;
        z-index: 3
    }

    .table-borderless td,
    .table-borderless th {
        border: none;
    }

    .form-control {
        display: block;
        width: 100%;
        padding: .375rem .75rem;
        font-size: 12px;
        line-height: 1.5;
        color: #495057;
        background-color: #fff;
        background-clip: padding-box;
        border: 1px solid #ced4da;
        border-radius: .25rem;
        transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .product_remove {
        font-size: 10px;
        white-space: nowrap;
        text-align: center;
        border-radius: 1.75em;
        background-color: red;
        color: #fff;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        min-width: 1.75em;
        height: 1.75em;
        padding: 0 0.58333em;
        position: absolute;
        left: -0.75em;
        top: -0.75em;
        z-index: 3;
        cursor: pointer;
    }
</style>

<?= $this->endSection() ?>

<?= $this->section("script") ?>
<?= $this->endSection() ?>