<?php
    class ClientModel extends DB{
        public function create($params){
            $nome = addslashes($params['nome']);
            $cpf = addslashes($params['cpf']);

            $sql = "INSERT INTO Cliente (nome, cpf)
            VALUES ('{$nome}', '{$cpf}')";

            return DB::execute($sql);
        }
        public function getAllClients(){
            $sql = "SELECT * FROM Cliente ORDER BY nome ASC;";

            return DB::getAll($sql);
        }
        public function getClient($params){
            $cliente = addslashes($params['itemSearch']);
            $sql = "SELECT * FROM Cliente WHERE nome like '%{$cliente}%'";

            return DB::getAll($sql);
        }
        public function getClientById($params){
            $id = addslashes($params['id']);

            $sql = "SELECT * FROM Cliente WHERE id = '{$id}';";

            return DB::getFirst($sql);
        }
        public function update($params){
            $nome = addslashes($params['nome']);
            $cpf = addslashes($params['cpf']);
            $id = addslashes($params['clientId']);

            $sql = "UPDATE Cliente SET nome = '{$nome}', cpf = '{$cpf}' WHERE id = '{$id}';";

            return DB::execute($sql);
        }
        public function delete($params){
            $id = addslashes($params['id']);

            $sql = "DELETE FROM Cliente WHERE id = '{$id}';";

            return DB::execute($sql);

        }
    }
?>
