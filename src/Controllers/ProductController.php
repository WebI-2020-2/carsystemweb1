<?php
    require_once(__DIR__.'/../../autoload.php');
    require_once('src/helpers/SessionValidate.php');
    require_once('src/helpers/Validate.php');

    class ProductController{
        public function index(){
            if($_SESSION['dados_usuario']['nivelAcesso'] == 2){
                // $category = new CategoryModel();
                // $params['categories'] = $category->getAllCategories();
                $params = null;

                $product = new AddProductView($params);
                var_dump($params);
            }else{
                return redirect('/product','Usuário sem permissão.');
            }
        }

        public function store($params){
            $data = array(
                'Nome' => $params['nome'],
                'Ano' => $params['ano'],
                'Cor' => $params['cor'],
                'Marca' => $params['marca'],
                'Quantidade' => $params['quantidade'],
                'ValorVenda' => $params['valorVenda']
            );
            $validator = array(
                'Nome' => 'required',
                'Ano' => 'required',
                'Cor' => 'required',
                'Marca' => 'required',
                'Quantidade' => 'required',
                'ValorVenda' => 'required'
            );
            $resultValidation = validate($data,$validator);
            if($_SESSION['dados_usuario']['nivelAcesso'] == 2){
                if($resultValidation['success']){
                    $product = new ProductModel();
                    $result = $product->create($params);
    
                    if($result){
                        return redirect('/product','Produto inserido com sucesso.');
                    }else{
                        return redirect('/add/product','Ocorreu um erro');
                    }
                }else{
                    return redirect('/product',$resultValidation['message']);
                }
            }else{  
                return redirect('/product','Usuário sem permissão.');
            }
        }

        public function show(){
            $product = new ProductModel();
            $params['products'] = $product->getAllProducts();
            $product = new ProductView($params);
        }

        public function getProducts($params){
            $products = new ProductModel();
            echo json_encode($products->getProducts($params));
        }
        public function getProduct($params){
            $product = new ProductModel();
            echo json_encode($product->getProductById($params));
        }
        public function edit($params){
            if($_SESSION['dados_usuario']['nivelAcesso'] == 2){
                $product = new ProductModel();
                // $category = new CategoryModel();
                $params['product'] = $product->getProductById($params);
                $product = new EditProductView($params);
            }else{
                return redirect('/product','Usuário sem permissão.');
            }
        }

        public function update($params){
            $data = array(
                'Nome' => $params['nome'],
                'Ano' => $params['ano'],
                'ValorVenda' => $params['valorVenda'],
                'Cor' => $params['cor'],
                'Marca' => $params['marca'],
                'Quantidade' => $params['quantidade'],
                'ID_do_produto' => $params['productId']
            );
            $validator = array(
                'Nome' => 'required',
                'Ano' => 'required',
                'ValorVenda' => 'required',
                'Cor' => 'required',
                'Marca' => 'required',
                'Quantidade' => 'required',
                'ID_do_produto' => 'required'
            );
            $resultValidation = validate($data,$validator);
           
            if($_SESSION['dados_usuario']['nivelAcesso'] == 2){
                if($resultValidation['success']){
                    $product = new ProductModel();
                    $result = $product->update($params);

                    if($result){
                        return redirect('/product', 'Produto atualizado com sucesso.');
                    }else{
                        return redirect('/product', 'Ocorreu um erro ');
                    }
                }else{
                    return redirect('/product',$resultValidation['message']);
                }
            }else{
                return redirect('/product','Usuário sem permissão.');
            }
        }
        

        public function delete($params){
            if($_SESSION['dados_usuario']['nivelAcesso'] == 2){
            $data = array(
                'ID_do_produto' => $params['id']
            );
            $validator = array(
                'ID_do_produto' => 'required'
            );
            $resultValidation = validate($data,$validator);
            
                if($resultValidation['success']){
                    $product = new ProductModel();
                    $result = $product->delete($params);

                    if($result){
                        return redirect('/product', 'Produto deletado com sucesso.');
                    }else{
                        return redirect('/product', 'Algo deu errado, tente novamente.');
                    }
                }else{
                    return redirect('/product',$resultValidation['message']);
                }
            }else{
                return redirect('/product','Usuário sem permissão.');
            }
        }
    }
?>
