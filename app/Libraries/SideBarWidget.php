<?php

namespace App\Libraries;

class SideBarWidget
{
    private $data = array();
    public function __construct()
    {
    }
    public function category()
    {


        $tag_model = model("TagModel");

        $categories = $tag_model->orderBy('date', 'DESC')->asObject()->findAll();
        $this->data['categories'] = $categories;
        // echo "<pre>";
        // print_r($list_category);
        // die();
        return view("frontend/lib/sidebar/" . __FUNCTION__, $this->data);
    }
    public function hot_news()
    {
        ///TIN MOI
        $news_model = model("NewsModel");
        $list_news = $news_model->orderBy('date', 'DESC')->asObject()->findAll(5);
        $this->data['list_news'] = $list_news;
        return view("frontend/lib/sidebar/" . __FUNCTION__, $this->data);
    }
    public function sidemenuproduct()
    {

        // $current_url = current_url();
        $MenuModel = model("MenuModel");

        $menu = $MenuModel->where("link", url_product_byid(0))->asObject()->first();
        // print_r($menu);
        // die();
        $this->data['list_child'] = $MenuModel->get_list_child($menu->id);
        // echo "<pre>";
        // print_r($this->data['list_child']);
        // die();
        return view("frontend/lib/sidebar/" . __FUNCTION__, $this->data);
    }

    public function sidemenunews()
    {

        // $current_url = current_url();
        $MenuModel = model("MenuModel");

        $menu = $MenuModel->where("link", url_news_byid(0))->asObject()->first();
        // print_r($menu);
        // die();
        $this->data['list_child'] = $MenuModel->get_list_child($menu->id);
        // echo "<pre>";
        // print_r($this->data['list_child']);
        // die();
        return view("frontend/lib/sidebar/" . __FUNCTION__, $this->data);
    }
}
