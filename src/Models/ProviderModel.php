<?php
    class ProviderModel extends DB{
        public function create($params){
            $nome = addslashes($params['nome']);
            $cnpj = addslashes($params['cnpj']);
            $email = addslashes($params['email']);

             $sql = "INSERT INTO Fornecedor (nome, cnpj, email) VALUES
            ('{$nome}', '{$cnpj}', '{$email}')";

            return DB::execute($sql);
        }
        public function getAllProviders(){
            $sql = "SELECT * FROM Fornecedor ORDER BY nome ASC;";

            return DB::getAll($sql);
        }
        public function getProviderById($params){
            $id = addslashes($params['id']);

            $sql = "SELECT * FROM Fornecedor WHERE id = '{$id}'";

            return DB::getFirst($sql);
        }

        public function getProviderByName($params){
            $fornecedor = addslashes($params['itemSearch']);
            $sql = "SELECT * FROM Fornecedor WHERE nome like '%{$fornecedor}%'";

            return DB::getAll($sql);
        }
        
        public function update($params){
            $nome = addslashes($params['nome']);
            $cnpj = addslashes($params['cnpj']);
            $email = addslashes($params['email']);
            $id = addslashes($params['id']);

            $sql = "UPDATE Fornecedor SET nome = '{$nome}', cnpj = '{$cnpj}', email = '{$email}' WHERE id = '{$id}'";


            return DB::execute($sql);
        }
        public function delete($params){
            $id = addslashes($params['id']);

            $sql = "DELETE FROM Fornecedor WHERE id = '{$id}'";

            return DB::execute($sql);
        }
    }
?>