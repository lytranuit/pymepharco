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
        return view("frontend/widget/sidebar/" . __FUNCTION__, $this->data);
    }
    public function hot_news()
    {
        ///TIN MOI

        $news_model = model("NewsModel");
        $list_news = $news_model->orderBy('date', 'DESC')->asObject()->findAll(5);
        $this->data['list_news'] = $list_news;
        return view("frontend/widget/sidebar/" . __FUNCTION__, $this->data);
    }
}
