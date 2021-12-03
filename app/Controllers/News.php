<?php

namespace App\Controllers;


class News extends BaseController
{
    public function index()
    {
        $news_model = model("NewsModel");
        $this->data['news'] = $news_model->paginate(10);
        $this->data['pager'] = $news_model->pager;
        // echo "<pre>";
        // print_r($this->data['news']);
        // die();
        return view($this->data['content'], $this->data);
    }

    //--------------------------------------------------------------------
    public function view($id)
    {
        $news_model = model("NewsModel");
        $this->data['info'] = $news_model->asObject()->find($id);
        $this->data['title'] =   $this->data['info']->{pick_language($this->data['info'], "title_")} . $this->data['title'];

        return view($this->data['content'], $this->data);
    }
}
