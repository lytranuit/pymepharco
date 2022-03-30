<?php

namespace App\Controllers;

use CodeIgniter\Database\BaseBuilder;

class Category extends BaseController
{
    public function view($id)
    {
        $category_model = model("CategoryModel");
        $product_model = model("ProductModel");

        $this->data['category'] = $category_model->find($id);
        $sort = $this->request->getVar("sort");
        // print_r($this->data['category']);
        // die();

        $pager = service('pager');
        $perPage =  9;
        $page = (int)(($this->request->getVar('page') !== null) ? $this->request->getVar('page') : 1);
        $info = $product_model->get_product_by_category($id, $perPage, $page, $sort);

        $total = $info['count_product'];
        $pager->makeLinks($page, $perPage, $total);
        $this->data['products'] = $info['products'];


        $this->data['pager'] = $pager;
        $this->data['title'] =  $this->data['category']->{pick_language($this->data['category'])} . $this->data['title'];
        // echo "<pre>";
        // print_r($this->data['products']);
        // die();
        return view($this->data['content'], $this->data);
    }
}
