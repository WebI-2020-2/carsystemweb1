<?php
class EditClientView
{
    public function __construct($params)
    {
        $env = parse_ini_file('env.ini')['HOST'];
?>
        <!DOCTYPE html>
        <html lang="pt-BR">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="/public/css/addClient.css">
            <title>Editar clientes</title>
            <script>
                const host = '<?php echo $env; ?>';
            </script>
        </head>

        <body>
            <?php include "components/Sidebar.php" ?>
            <main>
                <header>
                    <i class="menu-toggle disabled" data-feather="menu"></i>
                    <h1>EDITAR CLIENTE</h1>
                </header>

                <div class="content">
                    <form action="/update/client" method="POST">
                        <div class="conteudo-cadastro">
                            <input type="hidden" name="clientId" value="<?php echo $params['id'] ?>">
                            <label for="nome" class="label1">Nome</label>
                            <input type="text" name="nome" id="nome" value="<?php echo $params['client']['nome'] ?>">
                            <label for="cpf" class="label2">CPF</label>
                            <input type="text" name="cpf" id="cpf" value="<?php echo $params['client']['cpf'] ?>">
                        </div>
                        <div class="botoes">
                            <button type="reset" onclick="location.href=`${host}/client`">CANCELAR <i data-feather="x"></i></button>
                            <button type="submit" class="submit">SALVAR <i data-feather="check"></i></button>
                        </div>
                    </form>
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
            <script src="/public/js/global.js"></script>
        </body>

        </html>
<?php }
}
?>
