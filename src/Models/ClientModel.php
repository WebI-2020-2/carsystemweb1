<?php
    class ClientModel extends DB{
        public function create($params){
            $nome = addslashes($params['nome']);
            $cpf = addslashes($params['cpf']);

            $sql = "INSERT INTO cliente (nome, cpf)
            VALUES ('{$nome}', '{$cpf}')";

            return DB::execute($sql);
        }
        public function getAllClients(){
            $sql = "SELECT * FROM cliente ORDER BY nome ASC;";

            return DB::getAll($sql);
        }
        public function getClient($params){
            $cliente = addslashes($params['itemSearch']);
            $sql = "SELECT * FROM cliente WHERE nome like '%{$cliente}%'";

            return DB::getAll($sql);
        }
        public function getClientById($params){
            $id = addslashes($params['id']);

            $sql = "SELECT * FROM cliente WHERE id = '{$id}';";

            return DB::getFirst($sql);
        }
        public function update($params){
            $nome = addslashes($params['nome']);
            $cpf = addslashes($params['cpf']);
            $id = addslashes($params['clientId']);

            $sql = "UPDATE cliente SET nome = '{$nome}', cpf = '{$cpf}' WHERE id = '{$id}';";

            return DB::execute($sql);
        }
        public function delete($params){
            $id = addslashes($params['id']);

            $sql = "DELETE FROM cliente WHERE id = '{$id}';";

            return DB::execute($sql);

        }
    }
?>
