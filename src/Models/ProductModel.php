<?php
    class ProductModel extends DB{
        public function create($params){
            $nome = addslashes($params['nome']);
            $ano = addslashes($params['ano']);
            $cor = addslashes($params['cor']);
            $marca = addslashes($params['marca']);
            $quantidade = addslashes($params['quantidade']);
            $valorVenda = addslashes($params['valorVenda']);
            $valorCompra = addslashes($params['valorCompra']);
            $categoria = addslashes($params['categoria']);

            $sql = "INSERT INTO produto (nome, ano, cor, marca, quantidade, valorVenda, valorCompra, idCategoria)
            VALUES ('{$nome}', '{$ano}', '{$cor}', '{$marca}', '{$quantidade}', '{$valorVenda}', '{$valorCompra}', '{$categoria}')";

            return DB::execute($sql);
        }
        public function getProducts($params){
            $itemSearch = addslashes($params['itemSearch']);

            $sql = "SELECT
                    p.*,
                    CASE
                        WHEN
                            pp.valorDesconto IS NOT NULL
                                AND pr.dataInicio <= NOW()
                                AND pr.dataFim >= NOW()
                        THEN
                            FORMAT((p.valorVenda - pp.valorDesconto),
                                2)
                        ELSE FORMAT(p.valorVenda, 2)
                    END AS valorVenda
                FROM
                    produto AS p
                        LEFT JOIN
                    produtoPromocao AS pp ON p.id = pp.idProduto
                        LEFT JOIN
                    promocao AS pr ON pr.id = pp.idPromocao
                WHERE p.nome like '%{$itemSearch}%'";

            return DB::getAll($sql);
        }
        public function getAllProducts(){
            $sql = "SELECT * FROM  produto ORDER BY nome ASC;";

            return DB::getAll($sql);
        }
        public function getProductById($params){
            $id = addslashes($params['id']);
            $sql = "SELECT p.id,
                p.nome,
                p.ano,
                p.cor,
                p.marca,
                p.quantidade,
                p.valorVenda,
                p.valorCompra
                FROM produto AS p
                WHERE p.id = '{$id}';";

            return DB::getFirst($sql);
        }
        public function update($params){
            $id = addslashes($params['productId']);
            $nome = addslashes($params['nome']);
            $ano = addslashes($params['ano']);
            $cor = addslashes($params['cor']);
            $marca = addslashes($params['marca']);
            $quantidade = addslashes($params['quantidade']);
            $valorVenda = addslashes($params['valorVenda']);
            $valorCompra = addslashes($params['valorCompra']);
            $categoria = addslashes($params['categoria']);

            $sql = "UPDATE produto SET nome = '{$nome}', ano = '{$ano}', cor = '{$cor}', marca = '{$marca}', quantidade = '{$quantidade}', valorVenda = '{$valorVenda}', valorCompra = '{$valorCompra}', idCategoria = '{$categoria}' WHERE id = '{$id}'";
            return DB::execute($sql);
        }

        public function delete($params){
            $id = addslashes($params['id']);

            $sql = "DELETE FROM produto WHERE id = '{$id}';";

            return DB::execute($sql);

        }
    }
?>
