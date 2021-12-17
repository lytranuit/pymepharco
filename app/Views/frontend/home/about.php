<?= $this->extend('frontend/layouts/main') ?>


<?= $this->section('content') ?>

<?= view_cell("\App\Libraries\HeaderWidget::breadcrumb") ?>


<div id="pageImage">

    <img id="pageImageInstance_imgPageImage" src="https://www.hemofarm.com/images/page/Header-Onama.jpg" style="border-width:0px;">

    <div id="pageImageOverlay">
        <div class="circle circleNo1"></div>
        <div class="circle circleNo2"></div>

        <div class="pageTitle">
            <div class="pageTitleContent">
                <div><span id="pageImageInstance_lblTitle">About us</span></div>
            </div>
        </div>
    </div>

</div>
<div id="rptInfoblock_ctl00_infoblockInstance1_pnlInfoblock" class="plainText fullWidth">


    <div class="infoblockText">
        <div class="infoblockTitle">
            <span id="rptInfoblock_ctl00_infoblockInstance1_lblTitle">Founded in Vršac on 1st June 1960, Hemofarm A.D. is currently the leading generic pharmaceutical company in Serbia and in the region.</span>
        </div>
        <div class="infoblockAbstract">
            <span id="rptInfoblock_ctl00_infoblockInstance1_lblAbstract">Manufacturing high quality, effective, safe and affordable pharmaceutical products is the core activity of the company. Since 2006, Hemofarm has been a part of the German STADA Group, one of the largest generic pharmaceutical companies in the world.</span>
        </div>

        <!--<a href="/eng/o-nama">-->
        <div class="infoblockButton">
            <input type="button" value="" onclick="window.location='/eng/o-nama'">
        </div>
        <!--</a>-->
    </div>
    <div class="infoblockImage">
        <img id="rptInfoblock_ctl00_infoblockInstance1_imgImage" src="https://www.hemofarm.com//images/infoblock/" style="border-width: 0px; transition: all 1s ease 0s; opacity: 1; margin-left: 0px;">
        <div class="infoblockCircle" style="opacity: 0.5; bottom: -280px;"></div>
    </div>
    <div class="infoblockText2">
        <div class="infoblockDesc2">
            <span id="rptInfoblock_ctl00_infoblockInstance1_lblDesc"></span>
        </div>
        <div class="infoblockSubnote">
            <span id="rptInfoblock_ctl00_infoblockInstance1_lblSubnote"></span>
        </div>
    </div>
    <div class="cleaner"></div>


</div>
<div id="rptInfoblock_ctl01_infoblockInstance1_pnlInfoblock" class="plainText grey fullWidth">


    <div class="infoblockText">
        <div class="infoblockTitle">
            <span id="rptInfoblock_ctl01_infoblockInstance1_lblTitle">Leading Position</span>
        </div>
        <div class="infoblockAbstract">
            <span id="rptInfoblock_ctl01_infoblockInstance1_lblAbstract">Hemofarm is the leader on the pharmaceutical market of Serbia. Taking up over 70% of the total exports of pharmaceutical products, the Vršac-based company is at the same time the largest Serbian exporter of drugs. Hemofarm manufactures about 5.5 billion tablets and capsules annually. It operates on three continents and it has a team of over 3,000 employees. In addition to being present on 36 markets around the World, Hemofarm is among the largest pharmaceutical manufacturers in this region.
                <br><br>
                The company is committed to permanent innovation. In addition to researching and developing modern pharmaceutical products, Hemofarm pays special attention to sustainable operation, which is harmonised with the BSCI Code of Conduct in terms of social responsibility and respecting human rights. The BSCI compliance of 97.6% represents the best result among all the companies operating in Serbia.</span>
        </div>

        <!--<a href="/eng/o-nama">-->
        <div class="infoblockButton">
            <input type="button" value="" onclick="window.location='/eng/o-nama'">
        </div>
        <!--</a>-->
    </div>
    <div class="infoblockImage">
        <img id="rptInfoblock_ctl01_infoblockInstance1_imgImage" src="https://www.hemofarm.com//images/infoblock/" style="border-width: 0px; transition: all 1s ease 0s; opacity: 1; margin-left: 0px;">
        <div class="infoblockCircle" style="opacity: 0.5; bottom: -280px;"></div>
    </div>
    <div class="infoblockText2">
        <div class="infoblockDesc2">
            <span id="rptInfoblock_ctl01_infoblockInstance1_lblDesc"></span>
        </div>
        <div class="infoblockSubnote">
            <span id="rptInfoblock_ctl01_infoblockInstance1_lblSubnote"></span>
        </div>
    </div>
    <div class="cleaner"></div>


</div>
<div id="rptInfoblock_ctl02_infoblockInstance1_pnlInfoblock" class="ibImageLeft">


    <div class="infoblockText">
        <div class="infoblockTitle">
            <span id="rptInfoblock_ctl02_infoblockInstance1_lblTitle">Seat and Representative Offices</span>
        </div>
        <div class="infoblockAbstract">
            <span id="rptInfoblock_ctl02_infoblockInstance1_lblAbstract">In addition to its headquarters in Vršac, Hemofarm has registered representative offices in Belgrade, Niš, Novi Sad, and Kragujevac. Šabac is the seat of the subsidiary company that became a part of Hemofarm A.D. through an acquisition in January 2015. <br><br>

                Apart from Serbia, Hemofarm also has subsidiaries in the region – in Macedonia, Bosnia and Herzegovina, Montenegro, and Romania. Apart from the subsidiary in Romania, there is also a Hemofarm’s European laboratory in Timisoara.</span>
        </div>

        <!--<a href="/eng/predstavnistva">-->
        <div class="infoblockButton">
            <input type="button" value="See the list of represntative offices" onclick="window.location='/eng/predstavnistva'">
        </div>
        <!--</a>-->
    </div>
    <div class="infoblockImage">
        <img id="rptInfoblock_ctl02_infoblockInstance1_imgImage" src="https://www.hemofarm.com//images/infoblock/profil-kompanije-1.jpg" >
        <div class="infoblockCircle"></div>
    </div>
    <div class="infoblockText2">
        <div class="infoblockDesc2">
            <span id="rptInfoblock_ctl02_infoblockInstance1_lblDesc"></span>
        </div>
        <div class="infoblockSubnote">
            <span id="rptInfoblock_ctl02_infoblockInstance1_lblSubnote"></span>
        </div>
    </div>
    <div class="cleaner"></div>


</div>
<?= $this->endSection() ?>



<?= $this->section("script") ?>
<?= $this->endSection() ?>