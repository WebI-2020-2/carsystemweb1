<?php
    class ProductSaleModel extends DB{
        public function create($params){
            $quantidade = addslashes($params['quantidade']);
            $idProduto = addslashes($params['idProduto']);
            $idVenda = addslashes($params['idVenda']);

            $sql = "INSERT INTO ProdutoVenda (quantidade, idProduto, idVenda) VALUES ({$quantidade}, {$idProduto}, {$idVenda});";
            
            return DB::execute($sql);
        }        
        public function getProductsByVendaId($params){
            $idVenda = addslashes($params['idVenda']);
            $sql = "SELECT 
                        pv.*,
                        p.nome,
                        pv.valorUnitario
                    FROM 
                        ProdutoVenda AS pv
                    INNER JOIN
                        Produto AS p on p.id = pv.idProduto
                    WHERE pv.idVenda = '{$idVenda}'";

            return DB::getAll($sql);
        }
    }
?>