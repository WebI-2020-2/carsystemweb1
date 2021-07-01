/* --------------- EXIBIR/ESCONDER MODAIS --------------- */

// elementos que abrem e fecham os modais
const abrirModalElements = document.querySelectorAll(".abrir-modal");
const fecharModalElements = document.querySelectorAll(".fechar-modal");

// funções de abrir/fechar modais
const toggleModal = () => document.querySelector(".modal").classList.toggle("disabled");

abrirModalElements.forEach((elemento) => { elemento.addEventListener("click", toggleModal) });
fecharModalElements.forEach((elemento) => { elemento.addEventListener("click", () => { toggleModal(); limparProduto(); })});

/* --------------- PRODUTO -------------- */
const modalProduto = document.querySelector(".conteudoProduto");

const consultarProduto = (id) => {
  axios
    .post(`${host}/getProduct`,
        (`id=${id}`),
        {
            headers: {
                "Content-type": "application/x-www-form-urlencoded",
            },
        }
    )
    .then((response) => {
      const produto = response.data;
      const valorCompra = Number(produto.valorCompra);
      const valorVenda = Number(produto.valorVenda);
      const valorCompraFormatado = valorCompra.toLocaleString('pt-br', { style: 'currency', currency: 'BRL'});
      const valorVendaFormatado = valorVenda.toLocaleString('pt-br', { style: 'currency', currency: 'BRL'})
      modalProduto.innerHTML =
        `<h2>${produto.nome}</h2>
        <table class="info">
        <tr>
          <th>ID</th>
          <td>${produto.id}</td>
        </tr>
        <tr>
          <th>Nome</th>
          <td>${produto.nome}</td>
        </tr>
        <tr>
          <th>Cor</th>
          <td>${produto.cor}</td>
        </tr>
        <tr>
          <th>Marca</th>
          <td>${produto.marca}</td>
        </tr>
        <tr>
          <th>Quantidade</th>
          <td>${produto.quantidade}</td>
        </tr>
        <tr>
          <th>Valor de Venda</th>
          <td>${valorVendaFormatado}</td>
        </tr>
        <tr>
          <th>Valor de Compra</th>
          <td>${valorCompraFormatado}</td>
        </tr>
        </table>`;

      document.querySelector('.btnEditar').href = 'edit/product?id=' + produto.id;
      document.querySelector('.btnDeletar').href = 'delete/product?id=' + produto.id;
    })
    .catch((err) => console.log(err));
}

const limparProduto = () => {
  modalProduto.innerHTML = "";
}

const filtrarProduto = () => {
  const tr = document.querySelectorAll(".tabela-consulta tbody tr");
  const filter = document.getElementById("input").value.toUpperCase();
  for (let i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
