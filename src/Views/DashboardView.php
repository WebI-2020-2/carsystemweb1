<?php
class DashboardView
{
    public function __construct($params)
    {
        $env = parse_ini_file('env.ini')['HOST'];
?>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="/public/css/dashboard.css">

            <title>Dashboard</title>

            <script>
                const host = '<?php echo $env; ?>';
            </script>
        </head>

        <body>
            <?php include "components/Sidebar.php" ?>
            <main>
                <header>
                    <i class="menu-toggle disabled" data-feather="menu"></i>
                </header>
                <div class="content">
                    <div class="galeria">
                        <img class="foto" src="../../public/img/che-r.png" alt="">
                        <img class="foto" src="../../public/img/Fiat_argo.png" alt="">
                        <img class="foto" src="../../public/img/toro-r.png" alt="">
                    </div>
                    <br>
                    <div class="shortcuts">
                        <button type="button" onclick="location.href=`${host}/add/sale`">Efetuar venda</button>
                        <button type="button" onclick="location.href=`${host}/add/purchase`">Efetuar compra</button>
                    </div>
                    
                </div>
            </main>
        </body>

        <script src="/public/js/global.js"></script>

        </html>
<?php
    }
}
