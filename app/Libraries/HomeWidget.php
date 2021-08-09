<?php

namespace App\Libraries;

class HomeWidget
{
    private $data = array();
    private $view = "";
    public function __construct()
    {
        $router = service('router');
    }
    public function slider()
    {
        $slider_model = model("SliderModel");
        $this->data['sliders'] = $slider_model->orderby("order", "Asc")->findAll();
        return view("frontend/home/_" . __FUNCTION__, $this->data);
    }

    public function category()
    {
        //return 1;
        $category_model = model("CategoryModel");
        $product_model = model("ProductModel");
        $list_category = $category_model->where(array('is_home' => 1, 'parent_id' => 0))->orderBy('order', 'ASC')->asObject()->findAll();
        foreach ($list_category as &$row) {
            $proudct_info = $product_model->get_product_by_category($row->id);
            $row->products = $proudct_info['products'];
            $row->count_product = $proudct_info['count_product'];
            $row->child = $proudct_info['child'];
        }
        $this->data['categories'] = $list_category;
        // echo "<pre>";
        // print_r($list_category);
        // die();
        return view("frontend/home/_" . __FUNCTION__, $this->data);
    }
    public function product()
    {
        //return 1;
        $product_model = model("ProductModel");
        $products = $product_model->orderBy('date', 'DESC')->asObject()->findAll(8);
        $this->data['products'] = $products;
        // echo "<pre>";
        // print_r($list_category);
        // die();
        return view("frontend/home/_" . __FUNCTION__, $this->data);
    }
    public function tag()
    {
        //return 1;
        $tag_model = model("TagModel");
        $news_model = model("NewsModel");
        $list_tag = $tag_model->where(array('is_home' => 1))->orderBy('date', 'DESC')->asObject()->findAll();
        foreach ($list_tag as &$row) {
            $info = $news_model->get_news_by_tag($row->id, 5);
            $row->news = $info['news'];
            $row->count = $info['count'];
        }
        $this->data['tags'] = $list_tag;
        ///TIN MOI

        $list_news = $news_model->orderBy('date', 'DESC')->asObject()->findAll(5);
        $this->data['list_news'] = $list_news;
        // echo "<pre>";
        // print_r(count($list_news));
        // die();
        return view("frontend/home/_" . __FUNCTION__, $this->data);
    }
}
