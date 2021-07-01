<link rel="stylesheet" href="/public/css/sidebar.css">

<nav class="sidebar-menu">
    <i class="menu-toggle" data-feather="arrow-left"></i>
    <div class="logo-container">
        <span class="logo">CARSYSTEM</span>
        <!-- <img class="logo" src="/public/img/simbolo.png" alt="logo do sistema"> -->
    </div>
    <ul class="menu-list">
        <li class="menu-option" id="vendas">
            <a href="/sale"><i data-feather="shopping-bag"></i> VENDAS</a>
        </li>
        <?php if($_SESSION['dados_usuario']['nivelAcesso'] == 2){ ?>
            <li class="menu-option" id="compras">
                <a href="/purchase"><i data-feather="shopping-cart"></i> COMPRAS</a>
            </li>
        <?php } ?>    
        <li class="menu-option" id="produtos">
            <a href="/product"><i data-feather="package"></i> PRODUTOS</a>
        </li>
        <li class="menu-option" id="fornecedores">
            <a href="/provider"><i data-feather="truck"></i> FORNECEDORES</a>
        </li>
        <?php if($_SESSION['dados_usuario']['nivelAcesso'] == 2){ ?>
            <li class="menu-option" id="funcionarios">
                <a href="/employee"><i data-feather="user"></i> FUNCIONÁRIOS</a>
            </li>
        <?php } ?>
        <li class="menu-option" id="clientes">
            <a href="/client"><i data-feather="users"></i> CLIENTES</a>
        </li>

    </ul>
    
    <div class="logout">
        <a href="/logout">SAIR<i data-feather="log-out"></i></a>
    </div>
</nav>