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
                <div><span id="pageImageInstance_lblTitle">Lịch sử</span></div>
            </div>
        </div>
    </div>

</div>
<!-- <div id="infoblockInstance_pnlInfoblock" class="infoblock ibImageLeft noButton noTitle">
    <div class="infoblockText">
        <div class="infoblockTitle">
            <span id="infoblockInstance_lblTitle"></span>
        </div>
        <div class="infoblockAbstract">
            <span id="infoblockInstance_lblAbstract">
                <li style="transition: all 1s ease 0s; opacity: 1; margin-left: 0px;">Hemofarm is a company that has operated in ‘four states’ and in several economy systems.</li>
                <li style="transition: all 1s ease 0s; opacity: 1; margin-left: 0px;">It has been privatised, yet it has remained ours.</li>
                <li style="transition: all 1s ease 0s; opacity: 1; margin-left: 0px;">Lots of interesting stories could be told about the previous six decades of successful business operation.</li>
                <li style="transition: all 1s ease 0s; opacity: 1; margin-left: 0px;">Get acquainted with the Hemofarm Company.</li>
            </span>
        </div>

        <div class="infoblockButton">
            <input type="button" value="">
        </div>
    </div>
    <div class="infoblockImage">
        <img id="infoblockInstance_imgImage" src="/assets/images/py.jpg" style="border-width: 0px; transition: all 1s ease 0s; opacity: 1; margin-left: 0px;">
        <div class="infoblockCircle" style="opacity: 0.5; bottom: -280px;"></div>
    </div>
    <div class="infoblockText2">
        <div class="infoblockDesc2">
            <span id="infoblockInstance_lblDesc"></span>
        </div>
        <div class="infoblockSubnote">
            <span id="infoblockInstance_lblSubnote"></span>
        </div>
    </div>
    <div class="cleaner"></div>


</div> -->

<div class="infoblock historyLeftImage">
    <div class="historyYear">
        2020
    </div>
    <div class="historyImage">
        <img src="/assets/images/history/2020-stada.jpg" style="transition: all 1s ease 0s; opacity: 1; margin-left: 0px;">
    </div>
    <div class="historyDesc">
        <div class="historyTitle"></div>
        Tháng 10/2020 Chính thức trở thành thành viên tập đoàn STADA (Đức).<br>
        Với kinh nghiệm hơn 30 năm của Pymepharco kết hợp cùng danh mục sản phẩm đa dạng và chất lượng đã được minh chứng trong lịch sử 125 năm của STADA, thông qua việc cung cấp cho người tiêu dùng, bệnh nhân và các chuyên gia chăm sóc sức khỏe tại Việt Nam các sản phẩm được sản xuất bằng công nghệ cao, chất lượng Châu Âu với giá cả phải chăng, tập đoàn STADA sẽ luôn trung thành với sứ mệnh: Chăm sóc sức khỏe mọi người như một người bạn đồng hành đáng tin cậy.
    </div>
    <div class="historyLine"></div>
    <div class="cleaner"></div>
</div>

<div class="infoblock historyRightImage">
    <div class="historyYear">
        2019
    </div>
    <div class="historyImage">
        <img src="/assets/images/history/2019-stada.jpg" style="transition: all 1s ease 0s; opacity: 1; margin-left: 0px;">
    </div>
    <div class="historyDesc">
        Khánh thành Nhà máy Stada Việt Nam theo tiêu chuẩn EU GMP rộng 30,000 m2, là một trong những nhà máy hiện đại ngang tầm khu vực, đủ khả năng tham gia vào chuỗi cung ứng toàn cầu của tập đoàn STADA (Đức)
    </div>
    <div class="historyLine"></div>
    <div class="cleaner"></div>
</div>

<div class="infoblock historyLeftImage">
    <div class="historyYear">
        2018
    </div>
    <div class="historyImage">
        <img src="/assets/images/history/2018-stada.jpg">
    </div>
    <div class="historyDesc">
        Pymepharco tiếp tục đầu tư nâng cấp hệ thống thuốc tiêm và đã hoàn thành xuất sắc đợt thanh tra, đạt tiêu chuẩn EU GMP cho xưởng kháng sinh Cephalosporin thuốc tiêm, qua đó khẳng định mạnh mẽ vị thế tiên phong về EU GMP tại Việt Nam đối với dòng kháng sinh Betalactam.
    </div>
    <div class="historyLine"></div>
    <div class="cleaner"></div>
</div>

<div class="infoblock historyRightImage">
    <div class="historyYear">
        2013
    </div>
    <div class="historyImage">
        <img src="/assets/images/history/2013-stada.jpg">
    </div>
    <div class="historyDesc">
        Pymepharco trở thành đơn vị đầu tiên tại Việt Nam sản xuất kháng sinh Cephalosporin thuốc viên đạt tiêu chuẩn EU GMP </div>
    <div class="historyLine"></div>
    <div class="cleaner"></div>
</div>

<div class="infoblock historyLeftImage">
    <div class="historyYear">
        2008
    </div>
    <div class="historyImage">
        <img src="/assets/images/history/2008-stada.jpg">
    </div>
    <div class="historyDesc">
        Nhà máy thứ hai được hoàn thành với bốn dây chuyền sản xuất gồm Phân xưởng thuốc vô trùng Non Betalactam: Ampoules, Nhỏ mắt & Đông khô; Phân xưởng thuốc vô trùng Betalactam và Phân xưởng thuốc viên (WHO GMP). Đây là nhà máy sản xuất thuốc tiêm được đánh giá là hiện đại nhất của Việt Nam lúc bấy giờ.
    </div>
    <div class="historyLine"></div>
    <div class="cleaner"></div>
</div>

<div class="infoblock historyRightImage">
    <div class="historyYear">
        2006
    </div>
    <div class="historyImage">
        <img src="/assets/images/history/Pymepharco.png">
    </div>
    <div class="historyDesc">
        <li>Nhà máy được cấp giấy chứng nhận Thực hành tốt sản xuất thuốc của Tổ chức Y tế Thế giới (WHO GMP)</li>

        <li>Tháng 5/2006 Công ty chính thức chuyển đổi thành Công ty Cổ phần Pymepharco. Việc chuyển đổi hình thức tổ chức doanh nghiệp, đem lại nhiều thuận lợi cho khả năng huy động vốn, mở rộng quy mô sản xuất kinh doanh, tạo tiền đề quan trọng cho việc nâng cấp Nhà máy theo tiêu chuẩn GMP Châu Âu (EU GMP) mà Công ty đặt ra trong năm 2006.</li>

    </div>
    <div class="historyLine"></div>
    <div class="cleaner"></div>
</div>

<div class="infoblock historyLeftImage">
    <div class="historyYear">
        2003
    </div>
    <div class="historyImage">
        <img src="/assets/images/history/2006-stada.png">
    </div>
    <div class="historyDesc">
        Nhà máy dược phẩm Pymepharco đạt tiêu chuẩn GMP ASEAN chính thức đi vào hoạt động với 3 phân xưởng: Betalactam, Non Betalactam, Viên nang mềm.
    </div>
    <div class="historyLine"></div>
    <div class="cleaner"></div>
</div>

<div class="infoblock historyRightImage">
    <div class="historyYear">
        1993
    </div>
    <div class="historyImage">
        <img src="/assets/images/history/Pymepharco.png">
    </div>
    <div class="historyDesc">
        <li>Thành lập Chi nhánh tại thành phố Hồ Chí Minh</li>

        <li>Công ty được Bộ thương mại cấp phép xuất nhập khẩu trực tiếp chuyên ngành về y dược. Đây là mốc quan trọng làm cơ sở cho việc phát triển kinh doanh và mở rộng quan hệ quốc tế. Liên kết, liên doanh với các đối tác trong và ngoài nước, mở rộng thị phần trong nước và xuất khẩu</li>

    </div>
    <div class="historyLine"></div>
    <div class="cleaner"></div>
</div>

<div class="infoblock historyLeftImage">
    <div class="historyYear">
        1989
    </div>
    <div class="historyImage">
        <img src="/assets/images/history/1989-stada.jpg">
    </div>
    <div class="historyDesc">
        Pymepharco được thành lập vào ngày 23 tháng 7 năm 1989 với nhiệm vụ sản xuất dược phẩm, kinh doanh thuốc & vật tư thiết bị y tế.
    </div>
    <div class="historyLine"></div>
    <div class="cleaner"></div>
</div>
<?= $this->endSection() ?>

<?= $this->section("style") ?>

<link href="<?= base_url("/assets/css/history.css") ?>" rel="stylesheet" type="text/css">
<?= $this->endSection() ?>


<?= $this->section("script") ?>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script src="<?= base_url("assets/js/circle.js") ?>"></script>
<?= $this->endSection() ?>