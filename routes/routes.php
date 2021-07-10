
<?php
    require_once('app.php');

    // Rotas de login
    Route::get('/login', 'LoginController@index');
    Route::post('/login/log-into', 'LoginController@store');

    // Rotas de dasboard
    Route::get('/dashboard', 'DashboardController@index');

    // Rotas de logout
    Route::get('/logout', 'LogoutController@logout');

    // Rotas de produto
    Route::get('/product', 'ProductController@show');
    Route::get('/add/product', 'ProductController@index');
    Route::post('/adding/product', 'ProductController@store');
    Route::post('/getProducts', 'ProductController@getProducts');
    Route::post('/getProduct', 'ProductController@getProduct');
    Route::get('/edit/product', 'ProductController@edit');
    Route::post('/update/product', 'ProductController@update');
    Route::get('/delete/product', 'ProductController@delete');

    // // Rotas de categoria
    // Route::get('/category', 'CategoryController@show');
    // Route::get('/add/category', 'CategoryController@index');
    // Route::post('/adding/category', 'CategoryController@store');
    // Route::get('/edit/category','CategoryController@edit');
    // Route::post('/update/category','CategoryController@update');
    // Route::get('/delete/category', 'CategoryController@delete');

    // Rotas de cliente
    Route::get('/client','ClientController@show');
    Route::get('/add/client','ClientController@index');
    Route::post('/adding/client', 'ClientController@store');
    Route::post('/adding/sale-client', 'ClientController@addSaleClient');
    Route::get('/getAllClients', 'ClientController@getAllClients');
    Route::post('/getClient','ClientController@getClient');
    Route::post('/getClientById','ClientController@getClientById');
    Route::get('/edit/client', 'ClientController@edit');
    Route::post('/update/client','ClientController@update');
    Route::get('/delete/client', 'ClientController@delete');

    // Rotas de venda
    Route::get('/add/sale','SaleController@index');
    Route::post('/adding/sale', 'SaleController@store');
    Route::get('/sale','SaleController@show');
    Route::post('/getSale', 'SaleController@getSale');
    Route::post('/sale/getProducts', 'SaleController@getProducts');

    //Rotas de funcionário
    Route::get('/employee', 'EmployeeController@show');
    Route::get('/add/employee','EmployeeController@index');
    Route::post('/adding/employee', 'EmployeeController@store');
    Route::post('/getEmployee', 'EmployeeController@getEmployee');
    Route::get('/edit/employee', 'EmployeeController@edit');
    Route::post('/update/employee','EmployeeController@update');
    Route::get('/delete/employee', 'EmployeeController@delete');

    //Rotas de forncedores
    Route::get('/provider', 'ProviderController@show');
    Route::get('/add/provider', 'ProviderController@index');
    Route::post('/adding/provider', 'ProviderController@store');
    Route::post('/getProvider', 'ProviderController@getProvider');
    Route::get('/edit/provider', 'ProviderController@edit');
    Route::post('/update/provider', 'ProviderController@update');
    Route::get('/delete/provider', 'ProviderController@delete');
    Route::get('/getAllProviders', 'ProviderController@getAllProviders');
    Route::post('/getProviderByName', 'ProviderController@getProviderByName');

    // // Rotas de promoções
    // Route::get('/add/promotion', 'PromotionController@index');
    // Route::post('/adding/promotion', 'PromotionController@store');
    // Route::get('/promotion', 'PromotionController@show');
    // Route::get('/edit/promotion', 'PromotionController@edit');
    // Route::post('/update/promotion', 'PromotionController@update');
    // Route::get('/delete/promotion', 'PromotionController@delete');
    
    // // Rotas de produto promoção
    // Route::get('/add/promotion-product', 'PromotionProductController@index');
    // Route::post('/adding/promotion-product', 'PromotionProductController@store');
    // Route::get('/promotion-product', 'PromotionProductController@show');
    // Route::get('/edit/promotion-product', 'PromotionProductController@edit');
    // Route::post('/update/promotion-product', 'PromotionProductController@update');
    // Route::get('/delete/promotion-product', 'PromotionProductController@delete');


    // Rotas de compra
    Route::get('/add/purchase', 'PurchaseController@index');
    Route::post('/adding/purchase', 'PurchaseController@store');
    Route::get('/purchase', 'PurchaseController@show');
    Route::post('/purchase/getProducts', 'PurchaseController@getProducts');
    Route::post('/getPurchase', 'PurchaseController@getPurchase');

    Route::run();
?>
