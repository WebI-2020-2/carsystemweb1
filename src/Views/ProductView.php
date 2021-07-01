<?php
    class ProductView{
        public function __construct($params){
            $env = parse_ini_file('env.ini')['HOST'];
?>
            <!DOCTYPE html>
            <html lang="pt-BR">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="stylesheet" href="/public/css/product.css">
                <title>Produtos</title>
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
                    <h1>PRODUTOS</h1>
                </div>
            </header>
            <div class="botoesDireito">
                <?php if($_SESSION['dados_usuario']['nivelAcesso'] == 2){ ?>
                    <a href="/add/product" class="btnAdd">Adicionar produto<i data-feather="plus"></i></a>
                <?php } ?>
                </div>
            <div class="content">
                <table class="tabela-consulta">
                    <thead>
                        <tr>
                            <td>ID</td>
                            <td>Nome</td>
                            <td>Ano</td>
                            <td>Valor de venda</td>
                            <td>Mais informações</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach($params['products'] as $product){ ?>
                            <tr>
                                <td><?php echo $product['id']; ?></td>
                                <td><?php echo $product['nome']; ?></td>
                                <td><?php echo $product['ano']; ?></td>
                                <td><?php echo 'R$ ' . number_format($product['valorVenda'], 3, '.', '.' ); ?></td>
                                <td><button type="button" class="abrir-modal" onclick="consultarProduto(<?php echo $product['id']; ?>)">
                                    <i data-feather="search"></i></button>
                                </td>
                            </tr>
                            <div class="modal disabled">
                                <div class="produto">
                                    <button type="button" class="fechar-modal">
                                        <i data-feather="x"></i>
                                    </button>
                                    <div class="conteudoProduto"></div>
                                    <?php if($_SESSION['dados_usuario']['nivelAcesso'] == 2){ ?>
                                        <div class="botoesModal">
                                            <a class="btnEditar">Editar <i data-feather="edit"></i></a>
                                            <a class="btnDeletar">Deletar <i data-feather="trash"></i></a>
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>
                        <?php } ?>
                    </tbody>
                </table>
                </div>
                <div class="modal mensagem disabled">
                    <div>
                        <button type="button" onclick="location.href=`${host}/product`">
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
            </main>

            <script src="/public/js/ProductFunctions.js"></script>
            <script src="/public/js/global.js"></script>

            </body>
            </html>
        <?php }
    }
?>
