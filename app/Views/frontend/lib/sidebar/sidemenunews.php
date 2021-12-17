<?php
function child($menu)
{
    $html = "<ul>";
    foreach ($menu as $row) {
        $html .= "<li>";
        $html .=    '<a href="' . $row->link . '">';
        if (current_url() ==  $row->link) {
            $html .= '<i class="far fa-check-square"></i> ';
        } else {
            $html .= '<i class="far fa-square"></i> ';
        }
        $html .= $row->{pick_language($row)};
        if (!empty($row->child)) {
            $html .= '<i class="fas fa-plus showhide"></i>';
        }
        $html .=           '</a>';
        if (!empty($row->child)) {
            $html .= child($row->child);
        }
        $html .= "</li>";
    }
    $html .= "</ul>";
    return $html;
}
?>
<aside class="sidebar border-box ">
    <div class="sidebar__header">
        Danh mục tin tức
    </div>
    <?= child($list_child) ?>
</aside>