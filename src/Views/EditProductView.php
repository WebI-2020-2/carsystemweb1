<?php
class EditProductView
{
    public function __construct($params)
    {
        $env = parse_ini_file('env.ini')['HOST']; ?>
        <!DOCTYPE html>
        <html lang="pt-BR">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="/public/css/addProduct.css">
            <title>Editar produtos</title>

            <script>
                const host = '<?php echo $env; ?>';
            </script>
        </head>

        <body>
            <?php include "components/Sidebar.php" ?>
            <main>
                <header>
                    <i class="menu-toggle disabled" data-feather="menu"></i>
                    <h1>EDITAR PRODUTO</h1>
                </header>

                <div class="content">
                    <form action="/update/product" method="POST">
                        <div class="conteudo-cadastro">
                            <input type="hidden" name="productId" value="<?php echo $params['id']; ?>">
                            <label for="nome" class="label1">Nome do produto</label>
                            <input type="text" name="nome" id="nome" value="<?php echo $params['product']['nome']; ?>">
                            <label for="ano" class="label2">Ano</label>
                            <input type="text" name="ano" id="ano" value="<?php echo $params['product']['ano']; ?>">
                            <label for="valorVenda" class="label3">Valor de venda</label>
                            <input type="text" name="valorVenda" id="valorVenda" value="<?php echo $params['product']['valorVenda']; ?>">
                            <label for="cor" class="label4">Cor</label>
                            <input type="text" name="cor" id="cor" value="<?php echo $params['product']['cor']; ?>">
                            <label for="marca" class="label5">Marca</label>
                            <input type="text" name="marca" id="marca" value="<?php echo $params['product']['marca']; ?>">
                            <label for="quantidade" class="label6">Quantidade</label>
                            <input type="text" name="quantidade" id="quantidade" value="<?php echo $params['product']['quantidade']; ?>">
                        </div>
                        <div class="botoes">
                            <button type="reset" onclick="location.href=`${host}/product`">CANCELAR <i data-feather="x"></i></button>
                            <button type="submit" class="submit">SALVAR <i data-feather="check"></i></button>
                        </div>
                    </form>
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
                </div>
            </main>
            <script src="/public/js/global.js"></script>
        </body>

        </html>
<?php }
}
?>
