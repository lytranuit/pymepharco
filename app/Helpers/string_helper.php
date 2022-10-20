<?php

if (!function_exists('str_slug')) {
    /**
     * Convert string to slug.
     *
     * @param string $string
     * @return mixed
     */
    function str_slug(string $str)
    {
        $str = trim(mb_strtolower($str));
        $str = preg_replace('/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/', 'a', $str);
        $str = preg_replace('/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/', 'e', $str);
        $str = preg_replace('/(ì|í|ị|ỉ|ĩ)/', 'i', $str);
        $str = preg_replace('/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/', 'o', $str);
        $str = preg_replace('/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/', 'u', $str);
        $str = preg_replace('/(ỳ|ý|ỵ|ỷ|ỹ)/', 'y', $str);
        $str = preg_replace('/(đ)/', 'd', $str);
        $str = preg_replace('/[^a-z0-9-\s]/', '', $str);
        $str = preg_replace('/([\s]+)/', '-', $str);
        return $str;
    }
}


if (!function_exists('date_TV')) {
    /**
     * Convert string to friendly file name.
     *
     * @param string $string
     * @return mixed
     */
    function date_TV(string $format, $time)
    {
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $timeEng = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
        $timeVie = ['Chủ Nhật', 'Thứ Hai', 'Thứ Ba', 'Thứ Tư', 'Thứ Năm', 'Thứ Sáu', 'Thứ Bảy', 'Một', 'Hai', 'Ba', 'Tư', 'Năm', 'Sáu', 'Bảy', 'Tám', 'Chín', 'Mười', 'Mười Một', 'Mười Hai'];

        $time = date($format, $time);

        $time = str_replace($timeEng, $timeVie, $time);

        return $time;
        /**
         * 09h52, Thứ Bảy ngày 28 tháng Mười năm 2017
         */
    }
}
if (!function_exists('str_snake')) {
    /**
     * Convert string to friendly file name.
     *
     * @param string $string
     * @return mixed
     */
    function str_snake(string $string)
    {
        return str_replace(' ', '_', strtolower($string));
    }
}

if (!function_exists('class_basename')) {
    /**
     * Get the class "basename" of the given object / class.
     *
     * @param  string|object $class
     * @return string
     */
    function class_basename($class)
    {
        $class = is_object($class) ? get_class($class) : $class;
        return basename(str_replace('\\', '/', $class));
    }
}

if (!function_exists('str_starts_with')) {
    /**
     * Determine if a given string starts with a given substring.
     *
     * @param  string  $haystack
     * @param  string|array  $needles
     * @return bool
     */
    function str_starts_with($haystack, $needles)
    {
        foreach ((array) $needles as $needle) {
            if ($needle !== '' && substr($haystack, 0, strlen($needle)) === (string) $needle) {
                return true;
            }
        }
        return false;
    }
}

if (!function_exists('str_studly')) {
    /**
     * Convert a value to studly caps case.
     *
     * @param  string  $value
     * @return string
     */
    function str_studly($value)
    {
        $value = ucwords(str_replace(['-', '_'], ' ', $value));
        return str_replace(' ', '', $value);
    }
}

if (!function_exists('str_contains')) {
    /**
     * Determine if a given string contains a given substring.
     *
     * @param  string  $haystack
     * @param  string|array  $needles
     * @return bool
     */
    function str_contains(string $haystack, $needles)
    {
        foreach ((array) $needles as $needle) {
            if ($needle !== '' && mb_strpos($haystack, $needle) !== false) {
                return true;
            }
        }
        return false;
    }
}

if (!function_exists('str_camel')) {
    /**
     * Convert a value to camel case.
     *
     * @param  string  $value
     * @return string
     */
    function str_camel($value)
    {
        return lcfirst(str_studly($value));
    }
}

if (!function_exists('str_plural')) {
    /**
     * Get the plural form of an English word.
     *
     * @param  string  $value
     * @return string
     */
    function str_plural($value)
    {
        return plural($value);
    }
}

if (!function_exists('str_plural_studly')) {
    /**
     * Pluralize the last word of an English, studly caps case string.
     *
     * @param  string  $value
     * @return string
     */
    function str_plural_studly($value)
    {
        $parts = preg_split('/(.)(?=[A-Z])/u', $value, -1, PREG_SPLIT_DELIM_CAPTURE);

        $lastWord = array_pop($parts);

        return implode('', $parts) . str_plural($lastWord);
    }
}



if (!function_exists('area_current')) {

    function area_current()
    {

        helper("cookie");

        // store a cookie value

        $area_current = get_cookie("area_current");

        return $area_current;
    }
}
if (!function_exists('html_nestable')) {

    function html_nestable($array, $column, $parent, $controller = '')
    {
        $html = "";
        $return = array_filter((array) $array, function ($item) use ($column, $parent) {
            return $item[$column] == $parent;
        });
        ///Bebin Tag
        if ($parent == 0) {
            $id_nestable = "id='nestable'";
        } else {
            $id_nestable = "";
        }
        $html .= '<ol class="dd-list" ' . $id_nestable . '>';
        ///Content
        foreach ($return as $row) {
            $sub_html = "";
            if ($controller == "menu") {
                if ($row['type'] == 1) {
                    $sub_html = "<span class='text-info mr-1'>[Link='" . $row['link'] . "']</span>";
                } elseif ($row['type'] == 2) {
                    $related_id = $row['related_id'];
                    if ($related_id == 0) {
                        $sub_html = "<span class='text-success mr-1'>[Danh mục sản phẩm='Tất cả']</span>";
                    } else {
                        $category_model = model("CategoryModel");
                        $obj = $category_model->where('id', $related_id)->asObject()->first();
                        $name = isset($obj->name_vi) ? $obj->name_vi : "";
                        $sub_html = "<span class='text-success mr-1'>[Danh mục sản phẩm='" . $name . "']</span>";
                    }
                } elseif ($row['type'] == 3) {
                    $related_id = $row['related_id'];
                    if ($related_id == 0) {
                        $sub_html = "<span class='text-warning mr-1'>[Danh mục tin tức='Tất cả']</span>";
                    } else {
                        $tag_model = model("TagModel");
                        $obj = $tag_model->where('id', $related_id)->asObject()->first();
                        $name = isset($obj->name_vi) ? $obj->name_vi : "";
                        $sub_html = "<span class='text-warning mr-1'>[Danh mục tin tức='" . $name  . "']</span>";
                    }
                } elseif ($row['type'] == 4) {
                    $related_id = $row['related_id'];
                    if ($related_id == 0) {
                        $sub_html = "<span class='text-primary mr-1'>[Sản phẩm='Tất cả']</span>";
                    } else {
                        $product_model = model("ProductModel");
                        $obj = $product_model->where('id', $related_id)->asObject()->first();
                        $name = isset($obj->name_vi) ? $obj->name_vi : "";
                        $sub_html = "<span class='text-primary mr-1'>[Sản phẩm='" . $name . "']</span>";
                    }
                } elseif ($row['type'] == 5) {
                    $related_id = $row['related_id'];
                    if ($related_id == 0) {
                        $sub_html = "<span class='text-primary mr-1'>[Tin tức='Tất cả']</span>";
                    } else {
                        $news_model = model("NewsModel");
                        $obj = $news_model->where('id', $related_id)->asObject()->first();
                        $name = isset($obj->title_vi) ? $obj->title_vi : "";
                        $sub_html = "<span class='text-primary mr-1'>[Tin tức='" . $name . "']</span>";
                    }
                } elseif ($row['type'] == 7) {
                    $related_id = $row['related_id'];
                    switch ($related_id) {
                        case 1:
                            $sub_html = "<span class='text-danger mr-1'>[Giới thiệu]</span>";
                            break;
                        case 2:
                            $sub_html = "<span class='text-danger mr-1'>[Liên hệ]</span>";
                            break;
                        case 3:
                            $sub_html = "<span class='text-danger mr-1'>[Lịch sử]</span>";
                            break;
                    }
                }
            }
            $html .= '<li class="dd-item" id="menuItem_' . $row['id'] . '" data-id="' . $row['id'] . '">
                            <div class="dd-handle">
                             ' . $sub_html . '
                                <div>' . $row['name_vi'] . '</div>
                                <div class="dd-nodrag btn-group ml-auto">
                                    <a class="btn btn-sm btn-outline-light" href="' . base_url("admin/$controller/edit/" . $row['id']) . '">Edit</a> 
                                    <button class="btn btn-sm btn-outline-light dd-item-delete">
                                        <i class="far fa-trash-alt"></i>
                                    </button>
                                </div>
                            </div>';
            $html .= html_nestable((array) $array, $column, $row['id'], $controller);
            $html .= '</li>';
        }
        ///End Tag
        $html .= '</ol>';

        return $html;
    }
}


if (!function_exists('current_language')) {

    function current_language()
    {
        $language = \Config\Services::language();
        $short_lang =  $language->getLocale();
        return $short_lang;
    }
}

if (!function_exists('pick_language')) {

    function pick_language($data, $struct = 'name_')
    {
        $language = \Config\Services::language();
        $short_lang =  $language->getLocale();
        print_r($data);
        $data = (array) $data;
        if (isset($data[$struct . $short_lang]) && $data[$struct . $short_lang] != "") {
            return $struct . $short_lang;
        } else {
            return $struct . 'vi';
        }
    }
}

if (!function_exists('language_current')) {

    function language_current()
    {
        $language = \Config\Services::language();
        return $language->getLocale();
    }
}
if (!function_exists('support_language')) {

    function support_language()
    {
        return config("App")->supportedLocales;
    }
}


if (!function_exists('split_string')) {

    function split_string($str, $length)
    {
        $str = strip_tags($str);
        if (strlen($str) > $length) {
            $str = mb_substr($str, 0, $length) . "...";
        }
        return $str;
    }
}






if (!function_exists('url_product_list')) {

    function url_product_list($id)
    {
        $url = base_url("san-pham");
        if ($id > 0) {
            $category_model = model("CategoryModel");
            $category = $category_model->find($id);
            $url = !empty($category) ? base_url("san-pham/" . ($category->slug != '' ? $category->slug : str_slug($category->name_vi)) . "-c$id.html") : "";
        }
        return $url;
    }
}


if (!function_exists('url_product_list2')) {

    function url_product_list2($id)
    {
        $url = base_url("san-pham");
        if ($id > 0) {
            $category_model = model("CategoryModel");
            $category = $category_model->find($id);
            $url = !empty($category) ? base_url("san-pham/c$id-v2.html") : "";
        }
        return $url;
    }
}
if (!function_exists('url_news_list')) {

    function url_news_list($id)
    {
        $url = base_url("bang-tin");
        if ($id > 0) {
            $url = base_url("bang-tin?tag_id=$id");
        }
        return $url;
    }
}


if (!function_exists('url_page_list')) {

    function url_page_list($id)
    {
        $url = base_url();
        if ($id > 0) {
            $url = base_url("page/view/$id");
        }
        return $url;
    }
}

if (!function_exists('url_page')) {

    function url_page($id)
    {
        $url = base_url();
        if ($id > 0) {

            $page_model = model("PageModel");
            $page = $page_model->find($id);
            $url = base_url("page/" . ($page->slug != '' ? $page->slug : str_slug($page->title_vi)) . "-c$id.html");
        }
        return $url;
    }
}


if (!function_exists('url_product')) {

    function url_product($product)
    {
        $url = base_url("san-pham.html");
        if ($product) {
            $url = base_url("san-pham/d$product->id.html");
        }
        return $url;
    }
}
if (!function_exists('url_product_byid')) {

    function url_product_byid($id)
    {
        $url = base_url("san-pham.html");
        if ($id > 0) {
            $model = model("ProductModel");
            $object = $model->find($id);
            $url = !empty($object) ? base_url("san-pham/d$object->id.html") : "";
        }
        return $url;
    }
}

if (!function_exists('url_tag')) {

    function url_tag($tag)
    {
        $url = base_url();
        if ($tag) {
            $url = base_url("tin-tuc/c$tag->id.html");
        }
        return $url;
    }
}

if (!function_exists('url_tag_byid')) {

    function url_tag_byid($id = NULL)
    {
        $url = base_url();
        if ($id) {
            $model = model("TagModel");
            $object = $model->find($id);
            $url = !empty($object) ? base_url("tin-tuc/c$object->id.html") : "";
        }
        return $url;
    }
}
if (!function_exists('url_news')) {

    function url_news($news)
    {
        $url = base_url();
        if ($news) {
            $url = base_url("tin-tuc/d$news->id.html");
        }
        return $url;
    }
}
if (!function_exists('url_news_byid')) {

    function url_news_byid($id = NULL)
    {
        $url = base_url("tin-tuc.html");
        if ($id) {
            $model = model("ProductModel");
            $object = $model->find($id);
            $url = !empty($object) ?  base_url("tin-tuc/d$object->id.html") : "";
        }
        return $url;
    }
}

if (!function_exists('url_category')) {

    function url_category($category = NULL)
    {
        $url = base_url();
        if ($category) {
            $url = base_url("san-pham/c$category->id.html");
        }
        return $url;
    }
}
if (!function_exists('url_category_byid')) {

    function url_category_byid($id = NULL)
    {
        $url = base_url();
        if ($id) {
            $model = model("CategoryModel");
            $object = $model->find($id);
            $url = !empty($object) ?  base_url("san-pham/c$object->id.html") : "";
        }
        return $url;
    }
}
