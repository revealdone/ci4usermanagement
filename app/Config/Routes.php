<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

/*
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
// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.
// $routes->setAutoRoute(false);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'User::index');
// $routes->get('/', 'Admin::index');

$routes->get('/admin', 'Admin::index', ['filter' => 'role:admin']);
$routes->get('/admin/index', 'Admin::index', ['filter' => 'role:admin']);
$routes->get('/admin/(:num)', 'Admin::detail/$1', ['filter' => 'role:admin']);
$routes->get('/jual/index', 'Jual::index');
$routes->get('/kategori/data', 'Kategori::data');
$routes->get('/komik/create', 'Komik::create');
// $routes->get('/kategori/modalformtambah', 'Kategori::modalformtambah');
$routes->get('/input/create', 'Input::create');
// $routes->post('/komik/save', 'Komik::save');
// $routes->post('/input/save', 'Input::save');
$routes->get('/input/edit/(:any)', 'Input::edit/$1');
$routes->get('/komik/edit/(:any)', 'Komik::edit/$1');
$routes->delete('/komik/(:num)', 'Komik::delete/$1');
$routes->delete('/input/(:num)', 'Input::delete/$1');
$routes->get('/komik/(:any)', 'Komik::detail/$1');
$routes->get('/input/(:any)', 'Input::detail/$1');

// $routes->get('/coba/index','Coba::index');
// $routes->get('/coba/about','Coba::about');

// $routes->get('/coba/(:any)/(:num)','Coba::about/$1/$2');
// $routes->get('/coba/(:any)','Coba::about/$1');

// $routes->get('/users','Admin\Users::inddex');

/*
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
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
