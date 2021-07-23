<header id="header" class="header has-transparent has-sticky sticky-jump transparent">
    <div class="header-wrapper">
        <div id="masthead" class="header-main toggle-nav-dark">
            <div class="header-inner flex-row container logo-left medium-logo-center" role="navigation">

                <!-- Logo -->
                <div id="logo" class="flex-col logo">
                    <!-- Header logo -->
                    <a href="<?= base_url() ?>" title="Pymepharco" rel="home">
                        <img width="200" height="50" src="<?= base_url("assets/images/logo.png") ?>" class="header_logo header-logo" alt="Pymepharco">
                        <img width="200" height="50" src="<?= base_url("assets/images/logo.png") ?>" class="header-logo-dark" alt="Pymepharco"></a>
                </div>

                <!-- Mobile Left Elements -->
                <div class="flex-col show-for-medium flex-left">
                    <ul class="mobile-nav nav nav-left ">
                        <li class="nav-icon has-icon">
                            <a href="<?= base_url() ?>#" data-open="#main-menu" data-pos="left" data-bg="main-menu-overlay" data-color="" class="is-small" aria-label="Menu" aria-controls="main-menu" aria-expanded="false">

                                <i class="icon-menu"></i>
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- Left Elements -->
                <div class="flex-col hide-for-medium flex-left
            flex-grow">
                    <ul class="header-nav header-nav-main nav nav-left  nav-uppercase">
                    </ul>
                </div>

                <!-- Right Elements -->
                <div class="flex-col hide-for-medium flex-right">
                    <ul class="header-nav header-nav-main nav nav-right  nav-uppercase">
                        <li id="menu-item-24" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-16 current_page_item active  menu-item-24">
                            <a href="<?= base_url() ?>" class="nav-top-link">Trang chủ</a>
                        </li>
                        <li id="menu-item-22" class="menu-item menu-item-type-post_type menu-item-object-page  menu-item-22"><a href="<?= base_url() ?>gioi-thieu/" class="nav-top-link">Giới thiệu</a></li>
                        <li id="menu-item-711" class="menu-item menu-item-type-post_type menu-item-object-page  menu-item-711"><a href="<?= base_url() ?>chuyen-nganh/" class="nav-top-link">Chuyên ngành</a></li>
                        <li id="menu-item-25" class="menu-item menu-item-type-taxonomy menu-item-object-category  menu-item-25"><a href="<?= base_url() ?>category/tin-tuc/" class="nav-top-link">Tin tức</a></li>
                        <li id="menu-item-23" class="menu-item menu-item-type-post_type menu-item-object-page  menu-item-23"><a href="<?= base_url() ?>lien-he/" class="nav-top-link">Liên
                                hệ</a></li>
                        <li class="header-search header-search-dropdown has-icon has-dropdown menu-item-has-children">
                            <a href="<?= base_url() ?>#" aria-label="Tìm kiếm" class="is-small"><i class="fas fa-search"></i></a>
                            <ul class="nav-dropdown nav-dropdown-simple">
                                <li class="header-search-form search-form html relative has-icon">
                                    <div class="header-search-form-wrapper">
                                        <div class="searchform-wrapper ux-search-box relative is-normal">
                                            <form role="search" method="get" class="searchform" action="<?= base_url() ?>">
                                                <div class="flex-row relative">
                                                    <div class="flex-col flex-grow">
                                                        <label class="screen-reader-text" for="woocommerce-product-search-field-0">Tìm
                                                            kiếm:</label>
                                                        <input type="search" id="woocommerce-product-search-field-0" class="search-field mb-0" placeholder="Tìm kiếm…" value="" name="s" autocomplete="off">
                                                        <input type="hidden" name="post_type" value="product">
                                                    </div><!-- .flex-col -->
                                                    <div class="flex-col">
                                                        <button type="submit" value="Tìm kiếm" class="ux-search-submit submit-button secondary button icon mb-0">
                                                            <i class="fas fa-search"></i> </button>
                                                    </div><!-- .flex-col -->
                                                </div><!-- .flex-row -->
                                                <div class="live-search-results text-left z-top">
                                                    <div class="autocomplete-suggestions" style="position: absolute; display: none; max-height: 300px; z-index: 9999;">
                                                    </div>
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