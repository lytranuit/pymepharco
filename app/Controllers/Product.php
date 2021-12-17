<?php

namespace App\Controllers;

use CodeIgniter\Database\BaseBuilder;

class Product extends BaseController
{
    public function index()
    {

        $product_model = model("ProductModel");
        $this->data['products'] = $product_model->paginate(9);
        $this->data['pager'] = $product_model->pager;
        $this->data['title'] =  lang("Custom.product") . $this->data['title'];
        return view($this->data['content'], $this->data);
    }
    //--------------------------------------------------------------------
    public function view($id)
    {
        $product_model = model("ProductModel");
        $this->data['info'] = $product_model->asObject()->find($id);
        // echo "<pre>";
        // print_r($this->data['info']);
        // die();
        $this->data['title'] =   $this->data['info']->{pick_language($this->data['info'])} . $this->data['title'];
        return view($this->data['content'], $this->data);
    }
    public function search()
    {

        $search = $this->request->getVar("q");
        $product_model = model("ProductModel");
        $my_region = area_current();
        $sql_where = "product.status = 1 and product.is_pet = 1 and FIND_IN_SET('$my_region',product.region)";
        if ($search != "") {
            $language = \Config\Services::language();
            $short_language =  $language->getLocale();
            $sql_where .= " AND (LOWER(pet_product.search_$short_language) like LOWER('%" . $search . "%') OR LOWER(product.code) LIKE LOWER('%$search%') OR LOWER(pet_product.name_$short_language) like LOWER('%" . $search . "%') OR (pet_product.code IS NULL AND LOWER(product.name_$short_language) like LOWER('%" . $search . "%')))";
        }
        $this->data['products'] = $product_model->join("pet_product", "code", "code")->select("product.*")->where($sql_where)->asObject()->paginate(20);
        foreach ($this->data['products'] as &$product) {
            $product_model->format_product($product);
        }
        // echo "<pre>";
        // print_r($this->data['products']);
        // die();
        $this->data['pager'] = $product_model->join("pet_product", "code", "code")->where($sql_where)->pager;

        $this->data['search'] = $search;
        $this->data['title'] = "Tìm kiếm : $search" . $this->data['title'];
        return view($this->data['content'], $this->data);
    }
}
