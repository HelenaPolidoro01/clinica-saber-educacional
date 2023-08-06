<?php 
    include("conexao.php");

    $nomecompleto=$_POST['nomecompleto'];
    $email=$_POST['email'];
    $dtnasc=$_POST['dtnasc'];
    $dtnasc1=implode("-",array_reverse(explode("/",$dtnasc)));
    $telefone=$_POST['telefone'];
    $senha=$_POST['senha'];
    

    $in = mysqli_query($conexao, "INSERT INTO cadastro(NOME_COMPLETO, EMAIL, DT_NASC, TELEFONE, SENHA) 
    values('$nomecompleto', '$email', '$dtnasc1','$telefone', '$senha')") or die ("Erro");
if($in)
{
    header('Location:login.html');
}
?>