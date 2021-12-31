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
                <div><span id="pageImageInstance_lblTitle">Contact</span></div>
            </div>
        </div>
    </div>

</div>
<div id="infoblockInstance_pnlInfoblock" class="infoblock ibMapa">


    <div class="infoblockText">
        <div class="infoblockTitle">
            <span id="infoblockInstance_lblTitle">Hemofarm A.D.</span>
        </div>
        <div class="infoblockAbstract">
            <span id="infoblockInstance_lblAbstract">
                <p>Hemofarm A.D., Beogradski put bb,<br>
                    26300 Vršac, Srbija</p>

                <p>+381 13 803 100</p>

                <p><a href="mailto:svakodobro@hemofarm.com">svakodobro@hemofarm.com</a></p>
            </span>
        </div>

        <!--<a href="/eng/predstavnistva">-->
        <div class="infoblockButton">
            <input type="button" value="See the list of represntative offices">
        </div>
        <!--</a>-->
    </div>
    <div class="infoblockImage">
        <img id="infoblockInstance_imgImage" src="/images/infoblock/" style="border-width: 0px; transition: all 1s ease 0s; opacity: 1; margin-left: 0px;">
        <div class="infoblockCircle" style="opacity: 0.5; bottom: -280px;"></div>
    </div>
    <div class="infoblockText2">
        <div class="infoblockDesc2">
            <span id="infoblockInstance_lblDesc"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2816.1703263572126!2d21.27326481554018!3d45.10261517909835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47506b4765f373bb%3A0x720bcc565ea98b91!2sHEMOFARM+AD!5e0!3m2!1ssr!2srs!4v1520866645413" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen=""></iframe></span>
        </div>
        <div class="infoblockSubnote">
            <span id="infoblockInstance_lblSubnote"></span>
        </div>
    </div>
    <div class="cleaner"></div>


</div>
<div id="contactForm">
    <form id="contactFormContent" action="home/submit" method="POST">
        <?= csrf_field() ?>
        <div class="pageMainTitle">
            <span id="lblFormTitle">Write to us</span>
        </div>
        <?= view('Myth\Auth\Views\_message_block') ?>
        
        <div class="contactInput">
            <input name="txbName" type="text" id="txbName" placeholder="Name and Surname*">
        </div>
        <div class="contactInput">
            <input name="txbEmail" type="text" id="txbEmail" placeholder="Email address*">
        </div>
        <div class="contactInput">
            <textarea name="txbMessage" rows="2" cols="20" id="txbMessage" placeholder="Your message*"></textarea>
        </div>
        <div id="recaptcha">
            <div class="g-recaptcha" data-sitekey="6LcyUcQdAAAAAIcWcFJiHaYUQEZlkqfV_puYVV9a"></div>
        </div>

        <div class="contactButton">
            <input type="submit" name="btnSend" value="Send message" id="btnSend">
        </div>
    </form>
</div>
<?= $this->endSection() ?>

<?= $this->section("style") ?>

<link href="<?= base_url("/assets/css/contact.css") ?>" rel="stylesheet" type="text/css">
<?= $this->endSection() ?>


<?= $this->section("script") ?>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script src="<?= base_url("assets/js/circle.js") ?>"></script>
<?= $this->endSection() ?>