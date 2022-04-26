<?php

namespace App\Controllers;

use CodeIgniter\Database\BaseBuilder;

class Product extends BaseController
{
    public function index()
    {

        $product_model = model("ProductModel");
        $this->data['products'] = $product_model->orderBy("date", "DESC")->paginate(9);
        $this->data['pager'] = $product_model->pager;
        $this->data['title'] =  lang("Custom.product") . $this->data['title'];
        return view($this->data['content'], $this->data);
    }
    //--------------------------------------------------------------------
    public function view($id)
    {
        $product_model = model("ProductModel");
        $this->data['info'] = $product_model->asObject()->find($id);

        $product_model->relation($this->data['info'], array('image_other', "ext", "category"));
        // echo "<pre>";
        // print_r($this->data['info']);
        // die();
        $caterogires = array_map(function ($item) {
            return $item->category_id;
        }, $this->data['info']->category);
        $this->data['title'] =   $this->data['info']->{pick_language($this->data['info'])} . $this->data['title'];
        $this->data['product_related'] = $product_model->get_product_related($id, $caterogires);
        // echo "<pre>";
        // print_r($product_related);
        // die();
        return view($this->data['content'], $this->data);
    }
    public function search()
    {

        $search = $this->request->getVar("q");
        $ProductModel = model("ProductModel");
        $where = $ProductModel;
        if ($search != "") {
            $where->like("name_vi", $search)->orLike("code", $search);
        }
        $pager = service('pager');
        $perPage =  9;
        $page = (int)(($this->request->getVar('page') !== null) ? $this->request->getVar('page') : 1);
        $total = $where->countAllResults(false);
        $pager->makeLinks($page, $perPage, $total);
        $this->data['products'] = $where->asObject()->orderby("date", "DESC")->paginate($perPage, '', $page);


        $this->data['pager'] = $pager;
        $this->data['search'] = $search;
        $this->data['title'] = "Tìm kiếm : $search" . $this->data['title'];
        return view($this->data['content'], $this->data);
    }
}
