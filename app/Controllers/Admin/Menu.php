<?php

namespace App\Controllers\Admin;

use App\Models\FileModel;

class Menu extends BaseController
{

    public function index()
    {

        // load_datatable($this->data);
        $menu_model = model("MenuModel");
        $menus = $menu_model->orderby('order', "ASC")->asArray()->findAll();
        //echo "<pre>";
        //print_r($category);
        //die();
        if (empty($menus))
            $menus = array();
        $this->data['html_nestable'] = html_nestable($menus, 'parent_id', 0, 'menu');
        return view($this->data['content'], $this->data);
    }

    public function add()
    { /////// trang ca nhan
        if (isset($_POST['dangtin'])) {
            helper("auth");

            $Menu_model = model("MenuModel");
            $data = $this->request->getPost();
            if (isset($data['type'])) {
                switch ($data['type']) {
                    case 2:
                        $data['link'] = url_category_byid($data['related_id']);
                        break;
                    case 3:
                        $data['link'] = url_tag_byid($data['related_id']);
                        break;
                    case 4:
                        $data['link'] = url_product_byid($data['related_id']);
                        break;

                    case 5:
                        $data['link'] = url_news_byid($data['related_id']);
                        break;
                    case 7:
                        switch ($data['related_id']) {
                            case 1:
                                $data['link'] = base_url(route_to("about"));
                                break;
                            case 2:
                                $data['link'] = base_url(route_to("contact"));
                                break;
                            case 3:
                                $data['link'] = base_url(route_to("history"));
                                break;
                            case 4:
                                $data['link'] = base_url(route_to("value"));
                                break;
                            case 5:
                                $data['link'] = base_url(route_to("supply"));
                                break;
                            case 6:
                                $data['link'] = base_url(route_to("activities"));
                                break;
                            case 7:
                                $data['link'] = base_url(route_to("healthly"));
                                break;
                            case 8:
                                $data['link'] = base_url(route_to("job"));
                                break;
                            case 9:
                                $data['link'] = base_url(route_to("manager"));
                                break;
                        }
                        break;
                }
            }
            $data['user_id'] = user_id();
            $obj = new \App\Entities\Menu();
            $obj->fill($data);
            $obj->date = date("Y-m-d H:i:s");
            $Menu_model->save($obj);
            return redirect()->to(base_url('admin/menu'));
        } else {
            //load_editor($this->data);

            $category_model = model("CategoryModel");
            $tag_model = model("TagModel");
            $news_model = model("NewsModel");
            $product_model = model("ProductModel");
            $this->data['categories'] = $category_model->orderby('id', "DESC")->findAll();
            $this->data['tags'] = $tag_model->orderby('id', "DESC")->findAll();
            $this->data['product'] = $product_model->orderby('id', "DESC")->findAll();

            $this->data['news'] = $news_model->orderby('id', "DESC")->findAll();
            return view($this->data['content'], $this->data);
        }
    }

    public function edit($id)
    { /////// trang ca nhan
        if (isset($_POST['dangtin'])) {

            $Menu_model = model("MenuModel");
            $data = $this->request->getPost();
            if (isset($data['type'])) {
                switch ($data['type']) {
                    case 2:
                        $data['link'] = url_category_byid($data['related_id']);
                        break;
                    case 3:
                        $data['link'] = url_tag_byid($data['related_id']);
                        break;
                    case 4:
                        $data['link'] = url_product_byid($data['related_id']);
                        break;

                    case 5:
                        $data['link'] = url_news_byid($data['related_id']);
                        break;
                    case 7:
                        switch ($data['related_id']) {
                            case 1:
                                $data['link'] = base_url(route_to("about"));
                                break;
                            case 2:
                                $data['link'] = base_url(route_to("contact"));
                                break;
                            case 3:
                                $data['link'] = base_url(route_to("history"));
                                break;
                            case 4:
                                $data['link'] = base_url(route_to("value"));
                                break;
                            case 5:
                                $data['link'] = base_url(route_to("supply"));
                                break;
                            case 6:
                                $data['link'] = base_url(route_to("activities"));
                                break;
                            case 7:
                                $data['link'] = base_url(route_to("healthly"));
                                break;
                            case 8:
                                $data['link'] = base_url(route_to("job"));
                                break;
                            case 9:
                                $data['link'] = base_url(route_to("manager"));
                                break;
                        }
                        break;
                }
            }
            //echo "<pre>";
            //print_r($obj);
            //die();

            $array = $Menu_model->create_object($data);
            $Menu_model->update($id, $array);
            return redirect()->to(base_url('admin/menu'));
        } else {
            $Menu_model = model("MenuModel");
            $tin = $Menu_model->where(array('id' => $id))->asObject()->first();
            $this->data['tin'] = $tin;


            $category_model = model("CategoryModel");
            $tag_model = model("TagModel");
            $news_model = model("NewsModel");
            $product_model = model("ProductModel");
            $this->data['categories'] = $category_model->orderby('id', "DESC")->findAll();
            $this->data['tags'] = $tag_model->orderby('id', "DESC")->findAll();
            $this->data['news'] = $news_model->orderby('id', "DESC")->findAll();
            $this->data['product'] = $product_model->orderby('id', "DESC")->findAll();
            return view($this->data['content'], $this->data);
        }
    }

    public function remove($id)
    { /////// trang ca nhan
        $Menu_model = model("MenuModel");
        $Menu_model->delete($id);
        header('Location: ' . $_SERVER['HTTP_REFERER']);
        exit;
    }

    public function saveorder()
    {
        $Menu_model = model("MenuModel");
        $data = json_decode($this->request->getPost('data'), true);
        foreach ($data as $key => $row) {
            if (isset($row['id'])) {
                $id = $row['id'];
                $parent_id = isset($row['parent_id']) && $row['parent_id'] != "" ? $row['parent_id'] : 0;
                $array = array(
                    'parent_id' => $parent_id,
                    'order' => $key
                );
                $Menu_model->update($id, $array);
            }
        }
    }

    public function deletemenu()
    {
        $id = $this->request->getPost('id');
        $Menu_model = model("MenuModel");
        $Menu_model->delete($id);
    }
}
