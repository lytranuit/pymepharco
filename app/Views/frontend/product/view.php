<?= $this->extend('frontend/layouts/main') ?>


<?= $this->section('content') ?>
<div id="breadcrumb">
    <span id="breadcrumbInstance_lblBreadcrumb">
        <li><a href="/"><?= lang("Custom.home") ?></a></li>
        <li>›</li>
        <li><?= lang("Custom.product") ?></li>
    </span>
</div>
<div id="pageImage">

    <img id="pageImageInstance_imgPageImage" src="<?= base_url("/assets/images/Header-Kontakt.png") ?>" style="border-width:0px;">

    <div id="pageImageOverlay">
        <div class="circle circleNo1"></div>
        <div class="circle circleNo2"></div>

        <div class="pageTitle" style="opacity: 1; top: 50%; bottom: auto; transform: translateY(-50%);">
            <div class="pageTitleContent">
                <div><span id="pageImageInstance_lblTitle"><?= lang("Custom.product") ?></span></div>
            </div>
        </div>
    </div>

</div>
<div id="infoblockInstance_pnlInfoblock" class="infoblock ibMapa">

    <div class="container mla  mra">
        <div class="flex  flex-wrap  nh3">
            <div class="col-24  col-6-md ph3 pv3 pv4-md mt4 mb4">
                <aside class="sidebar border-box ">
                    <div class="sidebar__item  bb bc-moon-grey ph3">
                        <a class="sidebar__link  link  flex  align-center  pv2">
                            <span class="sidebar__label  t-title  f6  f6-sm  lh-copy  dark-grey  flex-g row  pr2  mb0 ttu fw6">Danh mục sản phẩm</span>
                        </a>
                    </div>
                    <div class="sidebar__item  bb  bc-moon-grey sidebar-parent mh3 pv1 ">
                        <span class="sidebar__link  flex  align-center pa1 sidebar-label flex">
                            <span class="sidebar__indicator square-icon mr2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                    <path d="M22 2v20h-20v-20h20zm2-2h-24v24h24v-24z"></path>
                                </svg>
                            </span>
                            <span class="sidebar__indicator square-icon-opened mr2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                    <path d="M22 2v20h-20v-20h20zm2-2h-24v24h24v-24zm-6 6h-12v12h12v-12z"></path>
                                </svg>
                            </span>
                            <a href="https://stada.vn/san-pham-thuoc" class="sidebar__label link  t-title  f6  f6-sm  lh-copy  dark-grey  flex-g row  pr2  mb0">Sản phẩm thuốc</a>
                        </span>
                    </div>
                    <div class="sidebar__item    bc-moon-grey sidebar-parent mh3 pv1  opened">
                        <span class="sidebar__link  flex  align-center pa1 sidebar-label flex">
                            <span class="sidebar__indicator square-icon mr2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                    <path d="M22 2v20h-20v-20h20zm2-2h-24v24h24v-24z"></path>
                                </svg>
                            </span>
                            <span class="sidebar__indicator square-icon-opened mr2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                    <path d="M22 2v20h-20v-20h20zm2-2h-24v24h24v-24zm-6 6h-12v12h12v-12z"></path>
                                </svg>
                            </span>
                            <a href="https://stada.vn/san-pham-cham-soc-suc-khoe" class="sidebar__label link  t-title  f6  f6-sm  lh-copy  dark-grey  flex-g row  pr2  mb0">Sản phẩm chăm sóc sức khỏe</a>
                            <span class="sidebar__indicator plus">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                    <path d="M24 10h-10v-10h-4v10h-10v4h10v10h4v-10h10z"></path>
                                </svg>
                            </span>
                            <span class="sidebar__indicator minus">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                    <path d="M0 10h24v4h-24z"></path>
                                </svg>
                            </span>
                        </span>
                        <ul class="list  pl4  pr1  mt0  mb3">
                            <li class="pv1 ls-none">
                                <a class="sidebar__link  link  dark-grey flex" href="https://stada.vn/san-pham-cham-soc-suc-khoe/vitamin-khoang-chat">
                                    <span class="sidebar__indicator mr2 pt01">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                            <path d="M22 2v20h-20v-20h20zm2-2h-24v24h24v-24z"></path>
                                        </svg>
                                    </span>
                                    <span class="f6  f6-sm  dark-grey  flex-g">
                                        Vitamin - Khoáng chất
                                    </span>
                                </a>
                            </li>
                            <li class="pv1 ls-none">
                                <a class="sidebar__link  link  dark-grey flex" href="https://stada.vn/san-pham-cham-soc-suc-khoe/co-xuong-khop">
                                    <span class="sidebar__indicator mr2 pt01">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                            <path d="M22 2v20h-20v-20h20zm2-2h-24v24h24v-24z"></path>
                                        </svg>
                                    </span>
                                    <span class="f6  f6-sm  dark-grey  flex-g">
                                        Cơ Xương Khớp
                                    </span>
                                </a>
                            </li>
                            <li class="pv1 ls-none">
                                <a class="sidebar__link  link  dark-grey flex" href="https://stada.vn/san-pham-cham-soc-suc-khoe/tuan-hoan-mau">
                                    <span class="sidebar__indicator mr2 pt01">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                            <path d="M22 2v20h-20v-20h20zm2-2h-24v24h24v-24z"></path>
                                        </svg>
                                    </span>
                                    <span class="f6  f6-sm  dark-grey  flex-g">
                                        Tuần hoàn máu
                                    </span>
                                </a>
                            </li>
                            <li class="pv1 ls-none">
                                <a class="sidebar__link  link  dark-grey flex" href="https://stada.vn/san-pham-cham-soc-suc-khoe/tuyen-tien-liet">
                                    <span class="sidebar__indicator mr2 pt01">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                            <path d="M22 2v20h-20v-20h20zm2-2h-24v24h24v-24z"></path>
                                        </svg>
                                    </span>
                                    <span class="f6  f6-sm  dark-grey  flex-g">
                                        Tuyến tiền liệt
                                    </span>
                                </a>
                            </li>
                            <li class="pv1 ls-none">
                                <a class="sidebar__link  link  dark-grey flex" href="https://stada.vn/san-pham-cham-soc-suc-khoe/san-pham-khac">
                                    <span class="sidebar__indicator mr2 pt01">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                            <path d="M22 2v20h-20v-20h20zm2-2h-24v24h24v-24z"></path>
                                        </svg>
                                    </span>
                                    <span class="f6  f6-sm  dark-grey  flex-g">
                                        Sản phẩm khác
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </aside>
            </div>
            <div class="col-24  col-18-md  ph3  pt4">
                <section class="card-section  pt3 pt4-md  pb3 pb4-md">
                    <div class="container-medium mla mra pd0">
                        <div class="flex flex-wrap justify-center">
                           
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>

</div>
<div id="contactForm">
    <div id="contactFormContent">
        <div class="pageMainTitle">
            <span id="lblFormTitle">Write to us</span>
        </div>
        <div class="contactInput">
            <input name="txbName" type="text" id="txbName" placeholder="Name and Surname*">
        </div>
        <div class="contactInput">
            <input name="txbEmail" type="text" id="txbEmail" placeholder="Email address*">
        </div>
        <div class="contactInput">
            <textarea name="txbMessage" rows="2" cols="20" id="txbMessage" placeholder="Your message*"></textarea>
        </div>
        <div class="contactInput2">
            <input id="chkConfirm" type="checkbox" name="chkConfirm"><label for="chkConfirm">*I agree that any personal data may only be processed in accordance with the Hemofarm AD <a href="/eng/obavestenje-o-privatnosti" target="_blank">Privacy Notice</a>. You can access the data protection information obligations in accordance with applicable laws <a href="/eng/obavestenje-o-obradi-podataka" target="_blank">here</a>.</label>
        </div>
        <div id="recaptcha">
            <div class="g-recaptcha" data-sitekey="6Ldb5jYUAAAAAE0tftRVSKCzdSXtT0hOSAHsaIxC" data-callback="">
                <div style="width: 304px; height: 78px;">
                    <div><iframe title="reCAPTCHA" src="https://www.google.com/recaptcha/api2/anchor?ar=2&amp;k=6Ldb5jYUAAAAAE0tftRVSKCzdSXtT0hOSAHsaIxC&amp;co=aHR0cHM6Ly93d3cuaGVtb2Zhcm0uY29tOjQ0Mw..&amp;hl=vi&amp;v=_7Co1fh8iT2hcjvquYJ_3zSP&amp;size=normal&amp;cb=2uvjacv99lz3" width="304" height="78" role="presentation" name="a-sdyjltv07id3" frameborder="0" scrolling="no" sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"></iframe></div><textarea id="g-recaptcha-response" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea>
                </div><iframe style="display: none;"></iframe>
            </div>
        </div>
        <div class="contactInput">

        </div>

        <div class="contactButton">
            <input type="submit" name="btnSend" value="Send message" onclick="return checkInput();" id="btnSend">
        </div>
    </div>
</div>
<?= $this->endSection() ?>

<?= $this->section("style") ?>

<?= $this->endSection() ?>


<?= $this->section("script") ?>

<script src="<?= base_url("assets/js/circle.js") ?>"></script>
<?= $this->endSection() ?>