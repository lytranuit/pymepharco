<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/**
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/**
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Home::index');
//$routes->get('/lang/{locale}', 'Language::index');
$routes->add('lang/(:any)', 'Language::index/$1');

$routes->add('gioi-thieu', 'Home::about', ['as' => 'about']);
$routes->add('lien-he', 'Home::contact', ['as' => 'contact']);
$routes->add('lich-su', 'Home::history', ['as' => 'history']);
$routes->add('gia-tri-cot-loi', 'Home::value', ['as' => 'value']);
$routes->add('he-thong-phan-phoi', 'Home::supply', ['as' => 'supply']);
$routes->add('nghe-nghiep', 'Home::job', ['as' => 'job']);
$routes->add('hoat-dong-cong-dong', 'Home::activities', ['as' => 'activities']);
$routes->add('doi-ngu', 'Home::manager', ['as' => 'manager']);
$routes->add('suc-khoe', 'Home::healthly', ['as' => 'healthly']);

$routes->add('dang-nhap.html', 'Home::login', ['as' => 'loginhome']);
$routes->add('dang-ky.html', 'Home::register', ['as' => 'registerhome']);


$routes->add('san-pham.html', 'Product::index'); // Tất cả sản phẩm
$routes->add('san-pham/c(:num).html', 'Category::view/$1'); // san pham trong danh muc
$routes->add('san-pham/c(:num)-v2.html', 'Category::view2/$1'); // san pham trong danh muc
$routes->add('san-pham/d(:num).html', 'Product::view/$1'); //san phẩm chi tiết



$routes->add('tin-tuc.html', 'News::index'); // tat ca tin tuc
$routes->add('tin-tuc/c(:num).html', 'Tag::view/$1'); // tin tuc trong danh mục
$routes->add('tin-tuc/d(:num).html', 'News::view/$1'); // Tin tức chi tiết

/**
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
