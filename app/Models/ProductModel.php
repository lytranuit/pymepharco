<?php

namespace App\Models;

use CodeIgniter\Database\BaseBuilder;
use CodeIgniter\Model;
use phpDocumentor\Reflection\Types\Null_;

class ProductModel extends Model
{
    protected $table      = 'pet_product';
    protected $primaryKey = 'id';

    protected $returnType     = 'App\Entities\Product';
    protected $useSoftDeletes = false;

    protected $allowedFields = ['slug', 'name_vi', 'name_en', 'name_jp', 'description_vi', 'description_en', 'guide_vi', 'guide_en', 'ccd_vi', 'ccd_en', 'ppp_vi', 'ppp_en', 'tt_vi', 'tt_en', 'image_url', 'date', 'active', 'order'];


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
        if (gettype($row_a) == "object") {
            if (in_array("image_other", $relation)) {
                $product_id = $row_a->id;
                $builder = $this->db->table('pet_product_image');
                $row_a->image_other = $builder->where('product_id', $product_id)->get()->getResult();
            }
            if (in_array("category", $relation)) {
                $product_id = $row_a->id;
                $builder = $this->db->table('pet_product_category')->join("pet_category", "pet_product_category.cateogry_id = pet_category.id");
                $row_a->tags = $builder->where('product_id', $product_id)->orderBy("order", "ASC")->get()->getResult();
            }
        } else {
            if (in_array("image_other", $relation)) {
                $product_id = $row_a['id'];
                $builder = $this->db->table('pet_product_image');
                $row_a['image_other'] = $builder->where('product_id', $product_id)->get()->getResult("array");
            }
            if (in_array("category", $relation)) {
                $product_id = $row_a['id'];
                $builder = $this->db->table('pet_product_category')->join("pet_category", "pet_product_category.cateogry_id = pet_category.id");
                $row_a['tags'] = $builder->where('product_id', $product_id)->orderBy("order", "ASC")->get()->getResult("array");
            }
        }
        return $row_a;
    }
    public function get_product_related($id, $categories)
    {
        if (empty($categories)) {
            return array();
        }
        $builder = $this->db->table("pet_product");
        $builder->whereIn('id', function (BaseBuilder $builder) use ($categories) {
            return $builder->select('product_id')->from('pet_product_category')->whereIn('category_id', $categories);
        });
        return $builder->where("status", 1)->where("is_pet", 1)->where('id !=', $id)->get()->getResult();
    }

    public function get_product($category_id = 0, $keyword = "", $offset = 0, $limit = 20)
    {
        $builder = $this->db->table("pet_product");

        if ($category_id > 0) {
            $builder->whereIn('id', function (BaseBuilder $builder) use ($category_id) {
                return $builder->select('product_id')->from('pet_product_category')->where('category_id', $category_id);
            });
        }
        if ($keyword != "") {
            $builder->groupStart();
            $builder->like('code', $keyword);
            $builder->orLike("name_" . current_language(), $keyword);
            $builder->groupEnd();
        }

        if ($limit > 0) {
            $builder->limit($limit, $offset);
        }
        //print_r($builder->where("deleted_at", NULL)->where("deleted", 0)->orderBy("id", "DESC")->limit($limit, $offset)->getCompiledSelect());
        //die();
        return $builder->where("deleted_at", NULL)->where("deleted", 0)->orderBy("date", "DESC")->get()->getResult();
    }

    function get_product_by_category($category_id, $perPage = 20, $page = 1, $sort = "")
    {

        $offset = ($page - 1) * $perPage;
        $builder = $this->db->table('pet_product')->join("pet_product_category", "pet_product_category.product_id = pet_product.id");
        $count = $builder->where("category_id = $category_id")->orderBy("pet_product_category.order", "ASC")->countAllResults();


        $builder = $this->db->table('pet_product')->join("pet_product_category", "pet_product_category.product_id = pet_product.id")->select("pet_product.*");
        $products = $builder->where("category_id = $category_id")->limit($perPage, $offset)->get()->getResult();

        $return = array(
            'count_product' => $count,
            'products' => $products
        );
        return $return;
    }
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
    //protected $useTimestamps = false;
    //protected $createdField  = 'created_at';
    //protected $updatedField  = 'updated_at';
    //protected $deletedField  = 'deleted_at';

    //protected $validationRules    = [];
    //protected $validationMessages = [];
    protected $skipValidation     = true;
}
