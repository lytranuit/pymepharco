<?php

namespace App\Models;

use CodeIgniter\Database\BaseBuilder;
use CodeIgniter\Model;
use phpDocumentor\Reflection\Types\Null_;

class ProductextModel extends Model
{
    protected $table      = 'pet_product_ext';
    protected $primaryKey = 'id';

    protected $returnType     = 'App\Entities\Productext';
    protected $useSoftDeletes = true;

    protected $allowedFields = ['product_id', 'title_vi', 'content_vi', 'title_en', 'content_en'];


    public function relation(&$data, $relation = array())
    {
        $type = gettype($data);
        if ($type == "array" && !isset($data['id'])) {
            foreach ($data as &$row) {
                $row = $this->format_row($row, $relation);
            }
        } else {
            $data = $this->format_row($data, $relation);
        }

        return $data;
    }
    function format_row($row_a, $relation)
    {
    }

    function create_object($data)
    {
        $db = $this->db;
        $array = $db->getFieldNames($this->table);
        $obj = array();
        foreach ($array as $key) {
            if (isset($data[$key])) {
                $obj[$key] = $data[$key];
            } else
                continue;
        }

        return $obj;
    }
    // protected $useTimestamps = false;
    // protected $createdField  = 'created_at';
    // protected $updatedField  = 'updated_at';
    // protected $deletedField  = 'deleted_at';

    //protected $validationRules    = [];
    //protected $validationMessages = [];
    protected $skipValidation     = true;
}
