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
                        <li id="menu-item-24" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-16 current_page_item active  menu-item-24">
                            <a href="<?= base_url() ?>" class="nav-top-link">Trang chủ</a>
                        </li>
                        <li id="menu-item-22" class="menu-item menu-item-type-post_type menu-item-object-page  menu-item-22"><a href="<?= route_to("about") ?>" class="nav-top-link">Giới thiệu</a></li>
                        <li id="menu-item-777" class="menu-item menu-item-type-post_type menu-item-object-page  menu-item-777">
                            <a href="http://mauweb.monamedia.net/Pymepharco/dich-vu/" class="nav-top-link">Quan hệ cổ đông</a>
                        </li>
                    </ul>
                </div>

                <!-- Right Elements -->
                <div class="flex-col hide-for-medium flex-right">
                    <ul class="header-nav header-nav-main nav nav-right  nav-uppercase">
                        <li id="menu-item-856" class="menu-item menu-item-type-post_type menu-item-object-page  menu-item-856">
                            <a href="http://mauweb.monamedia.net/Pymepharco/du-an/" class="nav-top-link">Tuyển dụng</a>
                        </li>
                        <li id="menu-item-485" class="menu-item menu-item-type-taxonomy menu-item-object-category  menu-item-485"><a href="http://mauweb.monamedia.net/Pymepharco/category/tin-tuc/" class="nav-top-link">Tin tức</a></li>
                        <li id="menu-item-486" class="menu-item menu-item-type-post_type menu-item-object-page  menu-item-486">
                            <a href="<?= route_to("contact") ?>" class="nav-top-link">Liên hệ</a>
                        </li>
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
                                        <i class="icon-search"></i> </button>
                                </div><!-- .flex-col -->
                            </div><!-- .flex-row -->
                            <div class="live-search-results text-left z-top">
                                <div class="autocomplete-suggestions" style="position: absolute; display: none; max-height: 300px; z-index: 9999;"></div>
                            </div>
                        </form>
                    </div>
                </div>
            </li>
            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-714 current_page_item menu-item-805"><a href="https://datbienphuyen.com.vn/" class="nav-top-link">TRANG CHỦ</a></li>
            <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-814 has-child" aria-expanded="false"><a href="https://datbienphuyen.com.vn/gioi-thieu/" class="nav-top-link">GIỚI THIỆU</a>
                <button class="toggle"><i class="icon-angle-down"></i></button>
                <ul class="children">
                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-821"><a href="https://datbienphuyen.com.vn/gioi-thieu/#gioi-thieu">Tổng Quan</a></li>
                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-815"><a href="https://datbienphuyen.com.vn/gioi-thieu#tam-nhin-chien-luoc">Tầm nhìn chiến lược</a></li>
                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-822"><a href="https://datbienphuyen.com.vn/gioi-thieu/#so-do-to-chuc">Sơ đồ tổ chức</a></li>
                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-823"><a href="https://datbienphuyen.com.vn/gioi-thieu/#doi-tac">Đối tác</a></li>
                </ul>
            </li>
            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-245"><a href="https://datbienphuyen.com.vn/du-an/" class="nav-top-link">DỰ ÁN</a></li>
            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-30"><a href="https://datbienphuyen.com.vn/tin-tuc/" class="nav-top-link">TIN TỨC</a></li>
            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-663 has-child" aria-expanded="false"><a href="https://datbienphuyen.com.vn/thu-vien/" class="nav-top-link">THƯ VIỆN</a>
                <button class="toggle"><i class="icon-angle-down"></i></button>
                <ul class="children">
                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-921"><a href="https://datbienphuyen.com.vn/thu-vien/hinh-anh/">Hình ảnh</a></li>
                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-922"><a href="https://datbienphuyen.com.vn/thu-vien/video/">Video</a></li>
                </ul>
            </li>
            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-585 has-child" aria-expanded="false"><a href="https://datbienphuyen.com.vn/tuyen-dung/tin-tuyen-dung/" class="nav-top-link">TUYỂN DỤNG</a>
                <button class="toggle"><i class="icon-angle-down"></i></button>
                <ul class="children">
                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-589"><a href="https://datbienphuyen.com.vn/tuyen-dung/tin-tuyen-dung/">Tin tuyển dụng</a></li>
                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-588"><a href="https://datbienphuyen.com.vn/tuyen-dung/chinh-sach-nhan-su/">Chính sách nhân sự</a></li>
                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-587"><a href="https://datbienphuyen.com.vn/tuyen-dung/quy-trinh-tuyen-dung/">Quy trình tuyển dụng</a></li>
                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-586"><a href="https://datbienphuyen.com.vn/tuyen-dung/dinh-huong-nghe-nghiep/">Định hướng nghề nghiệp</a></li>
                </ul>
            </li>
            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-36"><a href="https://datbienphuyen.com.vn/lien-he/" class="nav-top-link">LIÊN HỆ</a></li>
            <li class="html header-button-1">
                <div class="header-button">
                    <a href="tel:02576296999" class="button secondary is-large box-shadow-5-hover" style="border-radius:10px;">
                        <span>Hotline: 0257.629.6999</span>
                    </a>
                </div>
            </li>


        </ul>
    </div><!-- inner -->
</div>