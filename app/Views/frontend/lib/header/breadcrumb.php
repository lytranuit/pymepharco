<div id="breadcrumb">
    <span id="breadcrumbInstance_lblBreadcrumb">
        <li><a href="/"><?= lang("Custom.home") ?></a></li>
        <?php foreach ($breakcrumb as $row) : ?>
            <li>›</li>
            <li><a href="<?= $row->link ?>"><?= $row->{pick_language($row)} ?></a></li>
        <?php endforeach ?>
    </span>
</div>