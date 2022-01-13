<?php

namespace App\Models;

use CodeIgniter\Model;

class MenuModel extends Model
{
    protected $table      = 'pet_menu';
    protected $primaryKey = 'id';

    protected $returnType     = 'App\Entities\Menu';
    protected $useSoftDeletes = true;

    protected $allowedFields = ['order', 'parent_id', 'name_vi', 'name_en', 'name_jp', 'type', "link", 'related_id'];

    //protected $useTimestamps = false;
    //protected $createdField  = 'created_at';
    //protected $updatedField  = 'updated_at';
    //protected $deletedField  = 'deleted_at';

    //protected $validationRules    = [];
    //protected $validationMessages = [];
    //protected $skipValidation     = true;
    function create_object($data)
    {
        $db = $this->db;
        $array = $db->getFieldNames($this->table);
        $obj = array();
        foreach ($array as $key) {
            if (isset($data[$key])) {
                if ($key == "price" || $key == "quantity" || $key == "retail_price" || $key == "min" || $key == "max" || $key == "fee") {
                    $obj[$key] = str_replace(",", "", $data[$key]);
                    $obj[$key] = (float) str_replace(" VND", "", $obj[$key]);
                } else
                    $obj[$key] = $data[$key];
            } else
                continue;
        }

        return $obj;
    }
    function get_list_parent($menu)
    {
        $list_parent = [];

        if (is_numeric($menu))
            $menu = $this->find($menu);
        if (empty($menu)) {
            return [];
        }
        $parent_id = $menu->parent_id;
        if ($parent_id != 0) {
            $parent = $this->asObject()->find($parent_id);
            array_push($list_parent, $parent);
            $list_parent = array_merge($this->get_list_parent($parent), $list_parent);
        }

        return $list_parent;
    }

    function get_list_child($menu)
    {
        $list = $this->where("parent_id", $menu)->asObject()->findAll();
        foreach ($list as &$row) {
            $row_id = $row->id;
            $row->child = $this->get_list_child($row_id);
        }
        return $list;
    }
}
