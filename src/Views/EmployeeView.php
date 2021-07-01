<?php
    class EmployeeView{
        public function __construct($params){
            $env = parse_ini_file('env.ini')['HOST'];
?>
            <!DOCTYPE html>
            <html lang="pt-BR">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="stylesheet" href="/public/css/employee.css">
                <title>Funcionários</title>
                <script>
                    const host =  '<?php echo $env; ?>';
                </script>
            </head>
            <body>
            <?php include "components/Sidebar.php" ?>
            <main>
            <header>
                <i class="menu-toggle disabled" data-feather="menu"></i>
                <div class="header-conteudo">
                    <h1>FUNCIONÁRIOS</h1>
                </div>
            </header>
            <div class="botoesDireito">
                <a href="/add/employee" class="btnAdd">Adicionar funcionário<i data-feather="plus"></i></a>
            </div>
            <div class="content">
                <table class="tabela-consulta">
                    <thead>
                        <tr>
                            <td>ID</td>
                            <td>Nome</td>
                            <td>CPF</td>
                            <td>Email</td>
                            <td>Mais informações</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach($params['employees'] as $employee){ ?>
                            <tr>
                                <td><?php echo $employee['id']; ?></td>
                                <td><?php echo $employee['nome']; ?></td>
                                <td><?php echo $employee['cpf']; ?></td>
                                <td><?php echo $employee['email']; ?></td>
                                <td><button type="button" class="abrir-modal" onclick="consultarFuncionario(<?php echo $employee['id']; ?>)">
                                    <i data-feather="search"></i></button>
                                </td>
                            </tr>
                            <div class="modal disabled">
                                <div class="funcionario">
                                    <button type="button" class="fechar-modal">
                                        <i data-feather="x"></i>
                                    </button>
                                    <div class="conteudoFuncionario"></div>
                                    <div class="botoesModal">
                                        <a class="btnEditar">Editar<i data-feather="edit"></i></a>
                                        <a class="btnDeletar">Deletar <i data-feather="trash"></i></a>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </tbody>
                </table>
            </main>

            <script src="/public/js/EmployeeFunctions.js"></script>
            <script src="/public/js/global.js"></script>

            </body>
            </html>
        <?php }
    }
?>
