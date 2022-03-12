<div id="breadcrumb">
    <span id="breadcrumbInstance_lblBreadcrumb">
        <li><a href="/"><img src="/assets/images/icon-home.svg" style=" width: 15px;
    margin: 5px 20px 5px 0px;
    vertical-align: bottom;" /><?= lang("Custom.home") ?></a></li>
        <?php foreach ($breakcrumb as $row) : ?>
            <li>›</li>
            <li><a href="<?= $row->link ?>"><?= $row->{pick_language($row)} ?></a></li>
        <?php endforeach ?>
    </span>
</div>