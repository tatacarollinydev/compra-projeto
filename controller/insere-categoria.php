<?php
include('controller/conexao.php');

$descricao = $_POST['descricao'];

echo "<h3>Descrição: $descricao </h3></br>";

$cad_categoria = "INSERT INTO categoria (DESCRICAO) VALUES ('$descricao')";

if(mysqli_query($mysqli,$cad_categoria )){

   echo "<h1> Nova categoria cadastrada com sucesso</h1></br>";
}else{
    echo "Erro" . $cad_categoria . </br> . $mysqli_error ($mysqli);
}
myslqli_close($mysqli);
?>