<?php if (!session("agree_product")) : ?>
    <div id="hidden-content2" style="width:500px;color:gray;display:none">
        <?= lang("Custom.agree_product") ?>
        <div class="cookieButtons">
            <input type="submit" name="cookiesInstance$btnPrihvati" value="<?= lang("Custom.yes_area") ?>" id="cookiesInstance_btnPrihvati" class="cookiesButton orangeButton buttonAgree2">
            <input type="submit" name="cookiesInstance$btnOdustani" value="<?= lang("Custom.cancle") ?>" id="cookiesInstance_btnOdustani" class="cookiesButton buttonCancle2">
            <div class="cleaner"></div>
        </div>
    </div>
<?php endif ?>