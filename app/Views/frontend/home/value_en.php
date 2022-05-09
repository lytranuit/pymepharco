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
                <div><span id="pageImageInstance_lblTitle">Core Values</span></div>
            </div>
        </div>
    </div>

</div>

<div class="container my-5">
    <div class="row g-0">
        <div class="col-md-6 align-self-center">
            <img src="/assets/images/PMP-1.png" style="width:100%" />
        </div>
        <div class="col-md-6">
            <div class="info-box">
                <div class="info-title" style="padding: 30px;
    background-color: #f1f1f1;
    font-size: 14px;">
                    <span id="" style="font-size:16px">Our entire approach to business is based on four key values which also determine our corporate identity.<br>

                    </span>
                    <div class="infoblockAbstract">
                        <li>
                            <div>
                                <strong>Integrity </strong> - Each and everyone of us acts ethically in line with the company’s internal and external standards. Our actions are led by speaking up and respect.
                            </div>
                        </li>
                        <li>
                            <div>
                                <strong>Agility </strong> - Each and everyone of us leads change with flexibility and decisiveness as part of our ongoing journey of personal development.
                            </div>
                        </li>
                        <li>
                            <div>
                                <strong>Entrepreneurship </strong> - Each and everyone of us drives new ideas and actions, creating future growth and value.
                            </div>
                        </li>
                        <li>
                            <div>
                                <strong>ONE STADA </strong> - Each and everyone of us acts in the best interests of the company as a whole rather than our business unit or function in order to build one successful STADA.
                            </div>
                        </li>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection() ?>

<?= $this->section("style") ?>

<link href="<?= base_url("/assets/css/history.css") ?>" rel="stylesheet" type="text/css">
<?= $this->endSection() ?>


<?= $this->section("script") ?>
<!-- <script src="<?= base_url("assets/lib/purecounter/purecounter.js") ?>"></script> -->
<script src="<?= base_url("assets/js/circle.js") ?>"></script>
<!-- <script>
    new PureCounter();
</script> -->
<?= $this->endSection() ?>