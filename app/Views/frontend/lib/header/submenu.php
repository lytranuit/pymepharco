<div id="subMenuWrapper">
    <div id="subMenu">
        <ul>
            <?php foreach ($list_child as $row) : ?>
                <li>
                    <a href="<?= $row->link ?>">
                        <?= $row->{pick_language($row)} ?>
                    </a>
                </li>
            <?php endforeach ?>
        </ul>
    </div>
</div>