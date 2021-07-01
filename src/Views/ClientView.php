<?php
    class ClientView{
        public function __construct($params){
            $env = parse_ini_file('env.ini')['HOST'];
?>
            <!DOCTYPE html>
            <html lang="pt-BR">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="stylesheet" href="/public/css/client.css">
                <title>Clientes</title>
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
                    <h1>CLIENTES</h1>
                </div>
            </header>
            <div class="botoesDireito">
                    <a href="/add/client" class="btnAdd">Adicionar cliente<i data-feather="plus"></i></a>
                </div>
            <div class="content">
                <table class="tabela-consulta">
                    <thead>
                        <tr>
                            <td>ID</td>
                            <td>Nome</td>
                            <td>CPF</td>
                            <td>Mais informações</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                                    
                        
                            foreach($params['clients'] as $client){ ?>
                            <tr>
                                <td><?php echo $client['id']; ?></td>
                                <td><?php echo $client['nome']; ?></td>
                                <td><?php echo $client['cpf']; ?></td>
                                <td><button type="button" class="abrir-modal" onclick="consultarCliente(<?php echo $client['id']; ?>)">
                                    <i data-feather="search"></i></button>
                                </td>
                            </tr>
                            <div class="modal disabled">
                                <div class="cliente">
                                    <button type="button" class="fechar-modal">
                                        <i data-feather="x"></i>
                                    </button>
                                    <div class="conteudoCliente"></div>
                                    <div class="botoesModal">
                                        <a class="btnEditar">Editar<i data-feather="edit"></i></a>
                                        <?php if($_SESSION['dados_usuario']['nivelAcesso'] == 2){ ?>
                                        <a class="btnDeletar">Deletar <i data-feather="trash"></i></a>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </tbody>
                </table>
                <div class="modal mensagem disabled">
                    <div>
                        <button type="button" onclick="location.href=`${host}/client`">
                            <i data-feather="x"></i>
                        </button>
                        <?php
                        if ($_SESSION['message'] != '') {
                            echo "<h3>" . $_SESSION['message'] . "</h3>";
                            unset($_SESSION['message']);
                            echo "<script type='text/javascript'>document.querySelector('.modal.mensagem').classList.toggle('disabled');</script>";
                        }
                        ?>
                    </div>
                </div>
            </div>
            </main>

            <script src="/public/js/ClientFunctions.js"></script>
            <script src="/public/js/global.js"></script>

            </body>
            </html>
        <?php }
    }

?>
