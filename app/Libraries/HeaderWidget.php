<?php

namespace App\Libraries;

class HeaderWidget
{
    private $data = array();
    public function __construct()
    {
    }

    public function index()
    {
        $category_model = model("CategoryModel");
        $this->data['categories'] = $category_model->where("is_menu", 0)->orderby("date", "DESC")->findAll();
        $this->data['menus'] = $category_model->where("is_menu", 1)->orderby("date", "DESC")->findAll();
        //echo "<pre>";
        //print_r($this->data['news']);
        //die();
        return view("lib/header/index", $this->data);
    }

    public function breadcrumb()
    {
        $current_url = current_url();
        $MenuModel = model("MenuModel");
        $menu = $MenuModel->where("link", $current_url)->asObject()->first();
        if (!empty($menu)) {
            $list_parent = $MenuModel->get_list_parent($menu);
            $list_parent[] = $menu;
        } else {
            $list_parent = [];
        }
        // echo "<pre>";
        // print_r($list_parent);
        // die();
        $this->data['breakcrumb'] = $list_parent;
        return view("frontend/lib/header/breadcrumb", $this->data);
    }

    public function submenu()
    {
        $current_url = current_url();
        $MenuModel = model("MenuModel");
        $menu = $MenuModel->where("link", $current_url)->asObject()->first();

        if (!empty($menu)) {
            $list_child =  $MenuModel->where("parent_id", $menu->id)->asObject()->findAll();
            if (empty($list_child)) {
                $list_child =  $MenuModel->where("parent_id", $menu->parent_id)->asObject()->findAll();
            }
            $this->data['list_child'] = $list_child;
            return view("frontend/lib/header/submenu", $this->data);
        }
        return '';
    }
}
