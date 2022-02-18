<?= $this->extend('frontend/layouts/main') ?>


<?= $this->section('content') ?>

<?= view_cell("\App\Libraries\HeaderWidget::breadcrumb") ?>


<div id="pageImage">

    <img id="pageImageInstance_imgPageImage" src="<?= base_url("/assets/images/Header-Kontakt.png") ?>" style="border-width:0px;">

    <div id="pageImageOverlay">
        <div class="circle circleNo1"></div>
        <div class="circle circleNo2"></div>

        <div class="pageTitle" style="opacity: 1; top: 50%; bottom: auto; transform: translateY(-50%);">
            <div class="pageTitleContent">
                <div><span id="pageImageInstance_lblTitle">Hệ thống phân phối</span></div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-12 col-md-6 py-5" style="text-align: center;">
            <div id="map" class="d-inline-block"></div>
        </div>
    </div>
    <div id="rptInfoblock_ctl03_infoblockInstance1_pnlInfoblock" class="infoblock listItem columns2 fullWidth">


        <div class="infoblockText">
            <div class="infoblockTitle">
                <span id="rptInfoblock_ctl03_infoblockInstance1_lblTitle">Kênh phân phối</span>
            </div>
            <div class="infoblockAbstract">
                <span id="rptInfoblock_ctl03_infoblockInstance1_lblAbstract">
                    <ul>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>TRỤ SỞ CHÍNH</h4>
                                166 – 170 Nguyễn Huệ, Tuy Hòa, Phú Yên<br>
                                ĐT: (84 0257) 3 823 228 – 3 829 165<br>
                                Fax: (84 0257) 3 824 717<br>
                                Email: hcns@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>NHÀ MÁY</h4>
                                01 Bà Triệu, Tuy Hòa, Phú Yên<br>
                                ĐT: (84 0257) 3 810 525 – 3 820 663<br>
                                Fax: (84 0257) 3 820 663<br>
                                Email: hcns@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH TP.HCM</h4>
                                44 Đồng Nai, P.15, Q.10, TP.HCM<br>
                                ĐT: (84 028) 3 9 703 099 – 3 9 708 789<br>
                                Fax: (84 028) 3 9 702 208<br>
                                Email: cnhcm@pymepharco.com<br>
                                pymepharco@hcm.vnn.vn<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH HÀ NỘI</h4>
                                Lô 5 – TT 24 khu Nhà ở Báo Nhân Dân, Phường Xuân Phương, Q.Nam Từ Liêm, Tp.Hà Nội.<br>
                                ĐT: (84 024) 32011536<br>
                                Fax: (84 024) 32010182<br>
                                Email: cnhn@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CTY CP DƯỢC – VTYT ĐAKNONG</h4>
                                345 Quốc lộ 141, Xã Tâm Thắng, Huyện Cujut, Tỉnh ĐakNông.<br>
                                ĐT: (84 02501) 3 683 529<br>
                                Fax: (84 02501) 3 683 529<br>
                                Email: daknong@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH QUẢNG NGÃI</h4>
                                433 Lê Lợi, Tp.Quảng Ngãi, Tỉnh Quảng Ngãi.<br>
                                ĐT: 0255- 3714303<br>
                                Fax: 0255- 3714303<br>
                                Email: cnqn@pymepharco.com<br>
                            </div>
                        </li>

                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH NHA TRANG</h4>
                                117-119 Ngô Gia Tự – Phường Tân Lập -TP.Nha Trang-Tỉnh Khánh Hòa.<br>
                                ĐT: (84-0258). 3514 668<br>
                                Fax:(84-0258). 3514 668<br>
                                Email: cnnt@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH LÂM ĐỒNG</h4>
                                Lô C49 Phạm Ngọc Thạch, Phường 6, Tp.Đà Lạt, Tỉnh Lâm Đồng.<br>
                                ĐT: (84 0263) 3 818 364<br>
                                Fax: (84 0263) 3 818 364<br>
                                Email: cnld@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH ĐỒNG NAI</h4>
                                483 Huỳnh Văn Nghệ, Khu Phố 3, Phường Bửu Long, TP. Biên Hòa, Tỉnh Đồng Nai<br>
                                ĐT: (84 0261) 3952 682<br>
                                Fax: (84 0261) 3952 682<br>
                                Email: cndn@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH AN GIANG</h4>
                                21-23-25 Mai Hắc Đế, Phường Bình Khánh, TP. Long Xuyên, Tỉnh An Giang<br>
                                ĐT: (84 0276) 3 945 484<br>
                                Fax: (84 0276) 3 945 484<br>
                                Email: cnag@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH CẦN THƠ</h4>
                                E2-08 Đường số 6,Khu Nhà Nam Long,Phường Hưng Thạnh , Quận Cái Răng, Tp.Cần Thơ.<br>
                                ĐT: (84 02710) 3 760 171<br>
                                Fax: (84 02710) 3 733 171<br>
                                Email: cnct@pymepharco.com<br>
                            </div>
                        </li>

                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH CÀ MAU</h4>
                                40 Nguyễn Công Trứ , Phường 8, Tp. Cà Mau , Tỉnh Cà Mau.<br>
                                ĐT: (84 02780) 3 811 644<br>
                                Fax: (84 02780) 3 811 644<br>
                                Email: cncm@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH ĐÀ NẴNG</h4>
                                88 Nguyễn Hữu Thọ, Phường Thuận Hòa Tây, Quận Hải Châu, Tp.Đà Nẵng.<br>
                                ĐT: (84 02511) 3 530 986<br>
                                Fax: (84 02511) 3 530 986<br>
                                Email: cndng@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CỬA HÀNG BÀ RỊA VŨNG TÀU</h4>
                                78 Yên Thế – Phường 4 – Tp. Vũng Tàu, Tỉnh Bà Rịa- Vũng Tàu.<br>
                                ĐT: (84 0264) 3 542 533<br>
                                Fax: (84 0264) 3 542 533<br>
                                Email: chvt@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH BÌNH DƯƠNG</h4>
                                Số 49 D5 KDC Phú Hòa 1 , P.Phú Hòa ,Tp.Thủ Dầu Một, Tỉnh Bình Dương.<br>
                                ĐT: (84 0274) 379 6033<br>
                                Fax: (84 0274) 379 6033<br>
                                Email: chbinhduong@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH TÂY NINH</h4>
                                225 Nguyễn Trọng Cát, Phường Hiệp Ninh, Tp.Tây Ninh, Tỉnh Tây Ninh.<br>
                                ĐT: (84 0266) 3631 741<br>
                                Fax: (84 0266) 3631 741<br>
                                Email: cntn@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH VĨNH LONG</h4>
                                101 Phạm Thái Bường, Phường 4, TP.Vĩnh Long, Tỉnh Vĩnh Long.<br>
                                Điện Thoại: 0270.3837777<br>
                                Fax : 0270.3837778<br>
                                Email: cnvl@pymepharco.com<br>
                            </div>
                        </li>

                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH THÁI BÌNH</h4>
                                Lô 267 Khu Đô Thị Kỳ Bá ,Phường Kỳ Bá ,Tp.Thái Bình , Tỉnh Thái Bình<br>
                                Điện Thoại: 02363.735266<br>
                                Fax :<br>
                                Email:cntb@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH NGHỆ AN</h4>
                                Lô 01-BT05*, thuộc Dự án khu nhà ở chung cư phía đông Đại lộ Lê Nin, Xóm 20 Nghi Phú, Thành Phố Vinh, tỉnh Nghệ An.<br>
                                Điện Thoại: 02388.688868<br>
                                Fax : 0238.3834731<br>
                                Email: cnna@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH TIỀN GIANG</h4>
                                11/11 Phan Thanh Giản, Phường 3, TP. Mỹ Tho, Tiền Giang.<br>
                                Điện Thoại: (0273) 3972 776<br>
                                Fax :(0273) 3972 776<br>
                                Email: cntg@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CỬA HÀNG QUẬN 10</h4>
                                Quầy D5, 134/01 Tô Hiến Thành, Phường 15, Quận 10, Tp.Hồ Chí Minh.<br>
                                Điện Thoại: (028) 3866 1467<br>
                                Fax : (028) 3866 1467<br>
                                Email: chq10@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH GIA LAI</h4>
                                138 Lê Lợi, Phường Hoa Lư, Tp.Pleiku, Tỉnh Gia Lai<br>
                                Điện Thoại: (0259) 3868368<br>
                                Fax :(0259) 3868368<br>
                                Email: cngl@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH BÌNH THUẬN</h4>
                                89 Nguyễn Hội, Phường Phú Tài, Tp.Phan Thiết, Tỉnh Bình Thuận.<br>
                                Điện Thoại: (02623) 830 310<br>
                                Fax : (02623) 830 310<br>
                                Email: cnbt@pymepharco.com<br>
                            </div>
                        </li>

                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH BÌNH ĐỊNH</h4>
                                319 Đống Đa, P.Thị Nại, Tp.Quy Nhơn, Tỉnh Bình Định.<br>
                                Điện Thoại: 02563.819888<br>
                                Fax : 02563.819888<br>
                                Email: cnbd@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH HUẾ</h4>
                                54 Trường Chinh, Phường Xuân Phú, Tp.Huế, Tỉnh Thừa Thiên Huế.<br>
                                Điện Thoại: 0234.3686889<br>
                                Fax : 0234.3686889<br>
                                Email: cnhue@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH PHÚ THỌ</h4>
                                Số 622-624 Khu 7, Phố Thanh Bình – Phường Thanh Miếu – Tp.Việt Trì – tỉnh Phú Thọ<br>
                                Điện Thoại: 0210.3912898<br>
                                Fax : 0210.3912898<br>
                                Email: cnpt@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH THÁI NGUYÊN</h4>
                                Số 3 Tổ 11, Phường Túc Duyên, Thành phố Thái Nguyên, tỉnh Thái Nguyên.<br>
                                Điện Thoại: (+84 0208) 6562468<br>
                                Fax : (+84 0208) 6562468<br>
                                Email: cnthainguyen@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH THANH HÓA</h4>
                                Lô 03 MBQH530/UBND –QLĐT- P.Đông Vệ- Tp.Thanh Hóa – tỉnh Thanh Hóa.<br>
                                Điện Thoại: 0237.3995668<br>
                                Fax : 0237.3995668<br>
                                Email: cnth@pymepharco.com<br>
                            </div>
                        </li>
                        <li style="opacity: 1; margin-left: 0px; transition: all 1s ease 0s;">
                            <div>
                                <h4>CHI NHÁNH HẢI PHÒNG</h4>
                                Lô 30 No-04 đường Hồng Phúc, Khu đô thị Cựu Viên, phường Bắc Sơn, Quận Kiến An, Tp.Hải Phòng.<br>
                                Điện Thoại:<br>
                                Fax :<br>
                                Email: cnhp@pymepharco.com<br>
                            </div>
                        </li>
                    </ul>
                </span>
            </div>

            <!--<a href="/eng/predstavnistva">-->
            <div class="infoblockButton">
                <input type="button" value="" onclick="window.location='/eng/predstavnistva'">
            </div>
            <!--</a>-->
        </div>
        <div class="infoblockImage">
            <img id="rptInfoblock_ctl03_infoblockInstance1_imgImage" src="/images/infoblock/" style="border-width: 0px; transition: all 1s ease 0s; opacity: 1; margin-left: 0px;">
            <div class="infoblockCircle" style="opacity: 0.5; bottom: -280px;"></div>
        </div>
    </div>
</div>
<?= $this->endSection() ?>

<?= $this->section("style") ?>

<link href="<?= base_url("/assets/css/history.css") ?>" rel="stylesheet" type="text/css">
<?= $this->endSection() ?>


<?= $this->section("script") ?>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script src="<?= base_url("assets/js/circle.js") ?>"></script>

<script src="<?= base_url("/assets/lib/vietnammap/mapdata.js") ?>"></script>
<script src="<?= base_url("/assets/lib/vietnammap/countrymap.js") ?>"></script>
<?= $this->endSection() ?>