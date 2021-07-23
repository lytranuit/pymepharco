<section>
    <div class="container">
        <div class="row">
            <?php foreach ($categories as $category) : ?>
                <?php if ($category->count_product > 0) : ?>
                    <?php if ($category->type == 1) : ?>
                        <div class="home-product my-5">
                            <div class="tieude_giua">
                                <div><a href="<?= url_category($category) ?>"><?= $category->{pick_language($category)} ?> (<?= $category->count_product ?>)</a></div>
                            </div>
                            <div class="product-list-home">

                                <?php foreach ($category->products as $product) : ?>
                                    <div class="p_container product text-center" data-id="<?= $product->id ?>">
                                        <a href="<?= url_product($product) ?>" class="newp-img">
                                            <img src="https://simbaeshop.com<?= $product->image_url ?>" alt="<?= $product->{pick_language($product)} ?>">
                                        </a>

                                        <a href="<?= url_product($product) ?>" class="p-code text-dark fw-bold"><?= $product->code ?></a>
                                        <a href="<?= url_product($product) ?>" class="p-name"><?= $product->{pick_language($product)} ?></a>
                                        <div class="d-inline-block" style="min-width: 130px;">
                                            <table class="m-2">
                                                <tr>
                                                    <?php if (!empty($product->units)) : ?>
                                                        <td style="vertical-align: middle;">
                                                            <div class="p-price"><?= number_format($product->units[0]->price, 0, ",", ".") ?>đ</div>
                                                            <div class="price-prev">
                                                                <?php if (isset($product->units[0]->prev_price) && $product->units[0]->prev_price > 0) : ?>
                                                                    <?= number_format($product->units[0]->prev_price, 0, ",", ".") ?>đ
                                                                <?php endif ?>
                                                            </div>
                                                            <input type="hidden" value="1" class="number" />
                                                        </td>

                                                        <td class="dropdown" style="vertical-align: middle;">
                                                            /
                                                            <span class="dropdown-toggle dvt" id="dropdownMenuButton<?= $category->id . $product->id ?>" data-bs-toggle="dropdown">
                                                                <?= $product->units[0]->{pick_language($product->units[0])} ?>
                                                            </span>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton<?= $category->id . $product->id ?>">
                                                                <?php foreach ($product->units as $key => $unit) : ?>
                                                                    <a class="dropdown-item unit_product <?= $key == 0 ? "active" : "" ?>" data-id="<?= $unit->id ?>" data-price="<?= $unit->price ?>" data-prev_price="<?= isset($unit->prev_price) && $unit->prev_price > 0 ? $unit->prev_price : '' ?>"><?= $unit->{pick_language($unit)} ?></a>
                                                                <?php endforeach ?>
                                                            </div>
                                                        </td>

                                                    <?php else : ?>
                                                        <span class="p-price"><?= number_format($product->price, 0, ",", ".") ?>đ</span>
                                                    <?php endif ?>
                                                </tr>
                                            </table>
                                        </div>
                                        <a href="javascript:;" class="btn-violet add home add-cart"><?= lang("Custom.add_to_cart") ?></a>
                                    </div>
                                <?php endforeach ?>
                            </div>
                        </div>
                    <?php else : ?>
                        <div class="box-pro-home floor-1" id="box-pro-home131">
                            <div class="row g-1">
                                <div class="col-md-3">
                                    <a class="title-product-list-2 d-block" href="<?= url_category($category) ?>">
                                        <h2><?= $category->{pick_language($category)} ?></h2>
                                    </a>

                                    <?php if (!empty($category->child)) : ?>
                                        <div class="sub-cat-pro-home d-none d-lg-block">
                                            <?php foreach ($category->child as $row) : ?>
                                                <a href="<?= url_category($row) ?>" class="subcat2">
                                                    <h3><?= $row->{pick_language($row)} ?></h3>
                                                </a>
                                            <?php endforeach ?>
                                        </div>
                                    <?php endif ?>
                                    <div class="banner-left-cat-pro-home text-center d-none d-lg-block">
                                        <a href="<?= url_category($category) ?>"><img class="img-fluid" src="<?= $category->image_url ?>"></a>
                                    </div>
                                </div>
                                <!--pro-home-left-->
                                <div class="col-md-9">
                                    <div class="list-brand-pro-home d-none d-lg-block">
                                        <span class="fw-bold"><?= $category->count_product ?> <?= lang("Custom.product") ?> </span>
                                        <button class="btn btn-outline-danger round-fill" style="border-radius: 20px;padding: 5px 30px;font-size: 14px;float: right;">
                                            <?= lang("Custom.more") ?> >
                                        </button>
                                    </div>
                                    <!--list-brand-pro-home-->
                                    <div class="product-list-">
                                        <div class="row" id="row_131">
                                            <?php foreach ($category->products as $product) : ?>
                                                <div class="col-md-3 col-6 border-product">
                                                    <div class="p_container product text-center" data-id="<?= $product->id ?>">
                                                        <a href="<?= url_product($product) ?>" class="newp-img">
                                                            <img src="https://simbaeshop.com<?= $product->image_url ?>" alt="<?= $product->{pick_language($product)} ?>">
                                                        </a>

                                                        <a href="<?= url_product($product) ?>" class="p-code text-dark fw-bold"><?= $product->code ?> </a>
                                                        <a href="<?= url_product($product) ?>" class="p-name"><?= $product->{pick_language($product)} ?> </a>
                                                        <div class="d-inline-block" style="min-width: 130px;">
                                                            <table class="m-2">
                                                                <tr>
                                                                    <?php if (!empty($product->units)) : ?>
                                                                        <td style="vertical-align: middle;">
                                                                            <div class="p-price"><?= number_format($product->units[0]->price, 0, ",", ".") ?>đ</div>
                                                                            <div class="price-prev">
                                                                                <?php if (isset($product->units[0]->prev_price) && $product->units[0]->prev_price > 0) : ?>
                                                                                    <?= number_format($product->units[0]->prev_price, 0, ",", ".") ?>đ
                                                                                <?php endif ?>
                                                                            </div>
                                                                            <input type="hidden" value="1" class="number" />
                                                                        </td>

                                                                        <td class="dropdown" style="vertical-align: middle;">
                                                                            /
                                                                            <span class="dropdown-toggle dvt" id="dropdownMenuButton<?= $category->id . $product->id ?>" data-bs-toggle="dropdown">
                                                                                <?= $product->units[0]->{pick_language($product->units[0])} ?>
                                                                            </span>
                                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton<?= $category->id . $product->id ?>">
                                                                                <?php foreach ($product->units as $key => $unit) : ?>
                                                                                    <a class="dropdown-item unit_product <?= $key == 0 ? "active" : "" ?>" data-id="<?= $unit->id ?>" data-price="<?= $unit->price ?>" data-prev_price="<?= isset($unit->prev_price) && $unit->prev_price > 0 ? $unit->prev_price : '' ?>"><?= $unit->{pick_language($unit)} ?></a>
                                                                                <?php endforeach ?>
                                                                            </div>
                                                                        </td>

                                                                    <?php else : ?>
                                                                        <span class="p-price"><?= number_format($product->price, 0, ",", ".") ?>đ</span>
                                                                    <?php endif ?>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                        <a href="javascript:;" class="btn-violet add home add-cart"><?= lang("Custom.add_to_cart") ?></a>
                                                    </div>
                                                </div>
                                            <?php endforeach ?>
                                        </div>
                                    </div>
                                    <!--product-list-home-->
                                </div>
                            </div>
                            <!--pro-home-right-->
                        </div>
                    <?php endif ?>
                <?php endif ?>
            <?php endforeach ?>
        </div>
    </div>
    <style>
        div.tieude_giua {
            margin: 15px 0;
            position: relative;
            text-align: center;
        }

        div.tieude_giua div {
            font-size: 16px;
            text-transform: uppercase;
            text-align: center;
            font-family: Roboto-Regular;
            display: inline-block;
            background: #e50101;
            padding: 5px 20px;
            position: relative;
            border-radius: 5px;
        }

        div.tieude_giua div a {
            text-decoration: none;
            color: #fff
        }

        div.tieude_giua div::before {
            content: '';
            width: 52px;
            height: 46px;
            background: url(assets/images/red-tiile.png) top left no-repeat;
            margin: 0 auto;
            position: absolute;
            top: -15px;
            left: -20px;
            z-index: 99;
        }

        div.tieude_giua div::after {
            content: '';
            width: 45px;
            height: 63px;
            background: url(assets/images/icon-cho.png) top right no-repeat;
            margin: 0 auto;
            position: absolute;
            top: -11px;
            right: -25px;
            z-index: 99;
        }

        .tieude_giua ul {
            list-style: none;
            display: inline-block;
            list-style: none;
            display: inline-block;
            max-width: 80%;
            text-align: center;
        }

        div.tieude_giua ul li {
            display: inline-block;
            vertical-align: top;
        }

        div.tieude_giua ul li a {
            text-decoration: none;
            color: #696969;
            padding: 0px 15px;
            font-size: 14px;
            border-left: 1px solid #b3b3b3;
            font-weight: bold;
            position: relative;
        }

        div.tieude_giua ul li a:before {
            background: #fff;
            height: 3px;
            width: 100%;
            position: absolute;
            left: 0;
            bottom: -15px;
        }

        div.tieude_giua ul li a:hover {
            color: red;
        }

        div.tieude_giua ul li a:hover:before {
            content: '';
        }
    </style>
    <script>
        $(document).ready(function() {
            $('.product-list-home').slick({
                dots: false,
                infinite: false,
                slidesToShow: 5,
                slidesToScroll: 5,
                adaptiveHeight: true,
                arrows: true,
                prevArrow: '<div class="slick-prev"><i class="fa fa-angle-left" aria-hidden="true"></i></div>',
                nextArrow: '<div class="slick-next"><i class="fa fa-angle-right" aria-hidden="true"></i></div>',
                responsive: [{
                        breakpoint: 1024,
                        settings: {
                            slidesToShow: 3,
                            slidesToScroll: 3,
                        }
                    },
                    {
                        breakpoint: 600,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 2
                        }
                    },
                    // You can unslick at a given breakpoint now by adding:
                    // settings: "unslick"
                    // instead of a settings object
                ]
            });

        })
    </script>
</section>