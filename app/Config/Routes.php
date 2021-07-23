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

$routes->add('gioi-thieu', 'Home::about');
$routes->add('lien-he', 'Home::contact');
$routes->add('thu-vien', 'Home::library');
$routes->add('khuyen-mai.html', 'Product::promotion');

$routes->add('dang-nhap.html', 'Home::login', ['as' => 'loginhome']);
$routes->add('dang-ky.html', 'Home::register', ['as' => 'registerhome']);


$routes->add('danh-muc/c(:num).html', 'Category::view/$1');
$routes->add('tin-tuc/c(:num).html', 'Tag::view/$1');
$routes->add('san-pham/c(:num).html', 'Product::view/$1');
$routes->add('post/c(:num).html', 'News::view/$1');

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
