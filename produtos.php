<?php
    include_once("controller/conexao.php");
?>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Cadastrar produto</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8">
  </head>
  <body>
    <header>
      <div class="center">
        <h1>Cadastro de Produtos</h1>
        <a href="index.php" target="_self">Voltar</a>
      </div>
    </header>
    <section id="produtos">
      <form action="insere-produto.php" method="post">
        <label for="nome">Nome:</label>
        <input type="text" name="nome">
        <br>
        <label for="descricao">Descrição:</label>
        <input type="text" name="descricao">
        <br>
        <label for="estoque">Estoque:</label>
        <input type="number" name="estoque">
        <br>
        <label for="preco">Preço:</label>
        <input type="number" name="preco" min="0.00" max="100000.00" step="0.01">
        <br>
        <label for="seleciona_categoria">Categoria:</label>
        <select name="seleciona_categoria" id="">
          <option value="">Selecione</option>
          <?php
              $resultado_categoria = "SELECT * FROM categoria";
              $resultcategoria = mysqli_query($mysqli, $resultado_categoria);

              while ($row_categorias = mysqli_fetch_assoc($resultcategoria)) {
          ?>
            <option value="<?php echo $row_categorias["IDCATEGORIA"]; ?>">
              <?php
                  echo $row_categorias["DESCRICAO"];
              ?>
            </option>
          <?php
              }
          ?>
        </select>
        <br>
        <label for="seleciona_marca">Marca:</label>
        <select name="seleciona_marca" id="">
          <option value="">Selecione</option>
          <?php
              $resultado_marca = "SELECT * FROM marca";
              $resultmarca = mysqli_query($mysqli, $resultado_marca);

              while ($row_marcas = mysqli_fetch_assoc($resultmarca)) {
          ?>
            <option value="<?php echo $row_marcas["IDMARCA"]; ?>">
              <?php
                  echo $row_marcas["DESCRICAO"];
              ?>
            </option>
          <?php
              }
          ?>
        </select>
        <br /><br />
        <input type="submit" value="Cadastrar">
      </form>
    </section>
  </body>
</html>
