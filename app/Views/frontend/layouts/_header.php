<header id="header" class="header transparent has-transparent has-sticky sticky-jump">

    <div class="header-wrapper">

        <!-- <div id="top-bar" class="header-top hide-for-sticky nav-dark">
            <div class="flex-row container">
                <div class="flex-col hide-for-medium flex-left">
                    <ul class="nav nav-left medium-nav-center nav-small  nav-divided">
                        <li class="html custom html_topbar_left">
                            <p class="mona-html showroom">319 C16 Lý Thường Kiệt, P.15, Q.11, Tp.HCM</p>
                        </li>
                        <li class="header-divider"></li>
                        <li class="html custom html_topbar_right">
                            <p class="mona-html hotline"><a href="tel:0769220162">076 922 0162</a></p>
                        </li>
                        <li class="header-divider"></li>
                        <li class="html custom html_top_right_text">
                            <p class="mona-html time">08.00 am - 05.00 pm</p>
                        </li>
                    </ul>
                </div>

                <div class="flex-col hide-for-medium flex-center">
                    <ul class="nav nav-center nav-small  nav-divided">
                    </ul>
                </div>

                <div class="flex-col hide-for-medium flex-right">
                    <ul class="nav top-bar-nav nav-right nav-small  nav-divided">
                        <li class="html header-social-icons ml-0">
                            <div class="social-icons follow-icons"><a href="http://url/" target="_blank" data-label="Facebook" rel="noopener noreferrer nofollow" class="icon plain facebook tooltip tooltipstered"><i class="icon-facebook"></i></a><a href="http://url/" target="_blank" rel="noopener noreferrer nofollow" data-label="Instagram" class="icon plain  instagram tooltip tooltipstered"><i class="icon-instagram"></i></a><a href="http://url/" target="_blank" data-label="Twitter" rel="noopener noreferrer nofollow" class="icon plain  twitter tooltip tooltipstered"><i class="icon-twitter"></i></a></div>
                        </li>
                    </ul>
                </div>

                <div class="flex-col show-for-medium flex-grow">
                    <ul class="nav nav-center nav-small mobile-nav  nav-divided">
                        <li class="html custom html_topbar_left">
                            <p class="mona-html showroom">319 C16 Lý Thường Kiệt, P.15, Q.11, Tp.HCM</p>
                        </li>
                        <li class="html custom html_topbar_right">
                            <p class="mona-html hotline"><a href="tel:0769220162">076 922 0162</a></p>
                        </li>
                        <li class="html custom html_top_right_text">
                            <p class="mona-html time">08.00 am - 05.00 pm</p>
                        </li>
                    </ul>
                </div>

            </div>
        </div> -->
        <!-- #header-top -->
        <div id="masthead" class="header-main show-logo-center has-sticky-logo nav-dark toggle-nav-dark">
            <div class="header-inner flex-row container logo-center medium-logo-center" role="navigation">

                <!-- Logo -->
                <div id="logo" class="flex-col logo">
                    <!-- Header logo -->
                    <a href="<?= base_url() ?>" title="Pymepharco" rel="home">
                        <img width="200" height="100" src="<?= base_url("assets/images/logo.png") ?>" class="header-logo-sticky" alt="Pymepharco">
                        <img width="200" height="100" src="<?= base_url("assets/images/logo.png") ?>" class="header_logo header-logo" alt="Pymepharco">
                        <img width="200" height="100" src="<?= base_url("assets/images/logo.png") ?>" class="header-logo-dark" alt="Pymepharco"></a>
                </div>

                <!-- Mobile Left Elements -->
                <div class="flex-col show-for-medium flex-left">
                    <ul class="mobile-nav nav nav-left ">
                        <li class="nav-icon has-icon">
                            <a href="http://mauweb.monamedia.net/Pymepharco/#" data-open="#main-menu" data-pos="center" data-bg="main-menu-overlay" data-color="" class="is-small" aria-controls="main-menu" aria-expanded="false">
                                <i class="fas fa-bars"></i>
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- Left Elements -->
                <div class="flex-col hide-for-medium flex-left">
                    <ul class="header-nav header-nav-main nav nav-left  nav-uppercase">
                        <?php for ($i = 0; $i < round(count($list_menu) / 2, 0); $i++) : ?>
                            <?php $row = $list_menu[$i] ?>
                            <li id="menu-item-22" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-22">
                                <?php if ($row->type == 1) : ?>
                                    <a href="<?= $row->link ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                                <?php elseif ($row->type == 2) : ?>
                                    <a href="<?= url_category_byid($row->related_id) ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                                <?php elseif ($row->type == 3) : ?>
                                    <a href="<?= url_tag_byid($row->related_id) ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                                <?php elseif ($row->type == 4) : ?>
                                    <a href="<?= url_product_byid($row->related_id) ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                                <?php elseif ($row->type == 5) : ?>
                                    <a href="<?= url_news_byid($row->related_id) ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                                <?php elseif ($row->type == 7) : ?>
                                    <a href="<?= route_to("about") ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                                <?php elseif ($row->type == 8) : ?>
                                    <a href="<?= route_to("contact") ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                                <?php endif ?>
                                <?php if (!empty($row->child)) : ?>
                                    <ul class="nav-dropdown nav-dropdown-default">
                                        <?php foreach ($row->child as $row2) : ?>
                                            <li id="menu-item-821" class="menu-item menu-item-type-custom menu-item-object-custom  menu-item-821">
                                                <?php if ($row2->type == 1) : ?>
                                                    <a href="<?= $row2->link ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                                <?php elseif ($row2->type == 2) : ?>
                                                    <a href="<?= url_category_byid($row2->related_id) ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                                <?php elseif ($row2->type == 3) : ?>
                                                    <a href="<?= url_tag_byid($row2->related_id) ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                                <?php elseif ($row2->type == 4) : ?>
                                                    <a href="<?= url_product_byid($row2->related_id) ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                                <?php elseif ($row2->type == 5) : ?>
                                                    <a href="<?= url_news_byid($row2->related_id) ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                                <?php elseif ($row2->type == 7) : ?>
                                                    <a href="<?= route_to("about") ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                                <?php elseif ($row2->type == 8) : ?>
                                                    <a href="<?= route_to("contact") ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                                <?php endif ?>
                                            </li>
                                        <?php endforeach ?>
                                    </ul>
                                <?php endif ?>
                            </li>
                        <?php endfor ?>
                    </ul>
                </div>

                <!-- Right Elements -->
                <div class="flex-col hide-for-medium flex-right">
                    <ul class="header-nav header-nav-main nav nav-right  nav-uppercase">
                        <?php for ($i = round(count($list_menu) / 2, 0); $i < count($list_menu); $i++) : ?>
                            <?php $row = $list_menu[$i] ?>
                            <li id="menu-item-22" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-22">
                                <?php if ($row->type == 1) : ?>
                                    <a href="<?= $row->link ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                                <?php elseif ($row->type == 2) : ?>
                                    <a href="<?= url_category_byid($row->related_id) ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                                <?php elseif ($row->type == 3) : ?>
                                    <a href="<?= url_tag_byid($row->related_id) ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                                <?php elseif ($row->type == 4) : ?>
                                    <a href="<?= url_product_byid($row->related_id) ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                                <?php elseif ($row->type == 5) : ?>
                                    <a href="<?= url_news_byid($row->related_id) ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                                <?php elseif ($row->type == 7) : ?>
                                    <a href="<?= route_to("about") ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                                <?php elseif ($row->type == 8) : ?>
                                    <a href="<?= route_to("contact") ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                                <?php endif ?>
                                <?php if (!empty($row->child)) : ?>
                                    <ul class="nav-dropdown nav-dropdown-default">
                                        <?php foreach ($row->child as $row2) : ?>
                                            <li id="menu-item-821" class="menu-item menu-item-type-custom menu-item-object-custom  menu-item-821">
                                                <?php if ($row2->type == 1) : ?>
                                                    <a href="<?= $row2->link ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                                <?php elseif ($row2->type == 2) : ?>
                                                    <a href="<?= url_category_byid($row2->related_id) ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                                <?php elseif ($row2->type == 3) : ?>
                                                    <a href="<?= url_tag_byid($row2->related_id) ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                                <?php elseif ($row2->type == 4) : ?>
                                                    <a href="<?= url_product_byid($row2->related_id) ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                                <?php elseif ($row2->type == 5) : ?>
                                                    <a href="<?= url_news_byid($row2->related_id) ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                                <?php elseif ($row2->type == 7) : ?>
                                                    <a href="<?= route_to("about") ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                                <?php elseif ($row2->type == 8) : ?>
                                                    <a href="<?= route_to("contact") ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                                <?php endif ?>
                                            </li>
                                        <?php endforeach ?>
                                    </ul>
                                <?php endif ?>
                            </li>
                        <?php endfor ?>
                        <li class="header-search header-search-dropdown has-icon has-dropdown menu-item-has-children">
                            <a href="http://mauweb.monamedia.net/Pymepharco/#" class="is-small"><i class="fas fa-search"></i></a>
                            <ul class="nav-dropdown nav-dropdown-simple">
                                <li class="header-search-form search-form html relative has-icon">
                                    <div class="header-search-form-wrapper">
                                        <div class="searchform-wrapper ux-search-box relative is-normal">
                                            <form role="search" method="get" class="searchform" action="http://mauweb.monamedia.net/Pymepharco/">
                                                <div class="flex-row relative">
                                                    <div class="flex-col flex-grow">
                                                        <input type="search" class="search-field mb-0" name="s" value="" placeholder="Tìm kiếm…" autocomplete="off">
                                                        <input type="hidden" name="post_type" value="product">
                                                    </div><!-- .flex-col -->
                                                    <div class="flex-col">
                                                        <button type="submit" class="ux-search-submit submit-button secondary button icon mb-0">
                                                            <i class="fas fa-search"></i></button>
                                                    </div><!-- .flex-col -->
                                                </div><!-- .flex-row -->
                                                <div class="live-search-results text-left z-top">
                                                    <div class="autocomplete-suggestions" style="position: absolute; display: none; max-height: 300px; z-index: 9999;"></div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </li>
                            </ul><!-- .nav-dropdown -->
                        </li>
                    </ul>
                </div>

                <!-- Mobile Right Elements -->
                <div class="flex-col show-for-medium flex-right">
                    <ul class="mobile-nav nav nav-right ">
                        <li class="header-search header-search-dropdown has-icon has-dropdown menu-item-has-children">
                            <a href="http://mauweb.monamedia.net/Pymepharco/#" class="is-small"><i class="fas fa-search"></i></a>
                            <ul class="nav-dropdown nav-dropdown-simple">
                                <li class="header-search-form search-form html relative has-icon">
                                    <div class="header-search-form-wrapper">
                                        <div class="searchform-wrapper ux-search-box relative is-normal">
                                            <form role="search" method="get" class="searchform" action="http://mauweb.monamedia.net/Pymepharco/">
                                                <div class="flex-row relative">
                                                    <div class="flex-col flex-grow">
                                                        <input type="search" class="search-field mb-0" name="s" value="" placeholder="Tìm kiếm…" autocomplete="off">
                                                        <input type="hidden" name="post_type" value="product">
                                                    </div><!-- .flex-col -->
                                                    <div class="flex-col">
                                                        <button type="submit" class="ux-search-submit submit-button secondary button icon mb-0">
                                                            <i class="fas fa-search"></i></button>
                                                    </div><!-- .flex-col -->
                                                </div><!-- .flex-row -->
                                                <div class="live-search-results text-left z-top">
                                                    <div class="autocomplete-suggestions" style="position: absolute; display: none; max-height: 300px; z-index: 9999;"></div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </li>
                            </ul><!-- .nav-dropdown -->
                        </li>
                    </ul>
                </div>

            </div><!-- .header-inner -->

            <!-- Header divider -->
            <div class="container">
                <div class="top-divider full-width"></div>
            </div>
        </div><!-- .header-main -->
        <div class="header-bg-container fill">
            <div class="header-bg-image fill"></div>
            <div class="header-bg-color fill"></div>
        </div><!-- .header-bg-container -->
    </div><!-- header-wrapper-->

</header>
<div id="main-menu" class="mobile-sidebar no-scrollbar mfp-hide">
    <div class="sidebar-menu no-scrollbar ">
        <ul class="nav nav-sidebar  nav-vertical nav-uppercase">
            <li class="header-search-form search-form html relative has-icon">
                <div class="header-search-form-wrapper">
                    <div class="searchform-wrapper ux-search-box relative form-flat is-normal">
                        <form role="search" method="get" class="searchform" action="https://datbienphuyen.com.vn/">
                            <div class="flex-row relative">
                                <div class="flex-col flex-grow">
                                    <input type="search" class="search-field mb-0" name="s" value="" placeholder="Bạn cần tìm gì?" autocomplete="off">
                                    <input type="hidden" name="post_type" value="product">
                                </div><!-- .flex-col -->
                                <div class="flex-col">
                                    <button type="submit" class="ux-search-submit submit-button secondary button icon mb-0">
                                        <i class="fas fa-search"></i> </button>
                                </div><!-- .flex-col -->
                            </div><!-- .flex-row -->
                            <div class="live-search-results text-left z-top">
                                <div class="autocomplete-suggestions" style="position: absolute; display: none; max-height: 300px; z-index: 9999;"></div>
                            </div>
                        </form>
                    </div>
                </div>
            </li>
            <?php foreach ($list_menu as $row) : ?>
                <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-714 current_page_item menu-item-805">
                    <?php if ($row->type == 1) : ?>
                        <a href="<?= $row->link ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                    <?php elseif ($row->type == 2) : ?>
                        <a href="<?= url_category_byid($row->related_id) ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                    <?php elseif ($row->type == 3) : ?>
                        <a href="<?= url_tag_byid($row->related_id) ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                    <?php elseif ($row->type == 4) : ?>
                        <a href="<?= url_product_byid($row->related_id) ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                    <?php elseif ($row->type == 5) : ?>
                        <a href="<?= url_news_byid($row->related_id) ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                    <?php elseif ($row->type == 7) : ?>
                        <a href="<?= route_to("about") ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                    <?php elseif ($row->type == 8) : ?>
                        <a href="<?= route_to("contact") ?>" class="nav-top-link"><?= $row->{pick_language($row, 'name_')}  ?></a>
                    <?php endif ?>
                    <?php if (!empty($row->child)) : ?>
                        <ul class="children">
                            <?php foreach ($row->child as $row2) : ?>
                                <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-821">
                                    <?php if ($row2->type == 1) : ?>
                                        <a href="<?= $row2->link ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                    <?php elseif ($row2->type == 2) : ?>
                                        <a href="<?= url_category_byid($row2->related_id) ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                    <?php elseif ($row2->type == 3) : ?>
                                        <a href="<?= url_tag_byid($row2->related_id) ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                    <?php elseif ($row2->type == 4) : ?>
                                        <a href="<?= url_product_byid($row2->related_id) ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                    <?php elseif ($row2->type == 5) : ?>
                                        <a href="<?= url_news_byid($row2->related_id) ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                    <?php elseif ($row2->type == 7) : ?>
                                        <a href="<?= route_to("about") ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                    <?php elseif ($row2->type == 8) : ?>
                                        <a href="<?= route_to("contact") ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                                    <?php endif ?>
                                </li>
                            <?php endforeach ?>
                        </ul>
                    <?php endif ?>
                </li>
            <?php endforeach ?>

        </ul>
    </div><!-- inner -->
</div>