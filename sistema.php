<?php
    session_start();
    include('conexao.php');
    //print_r($_SESSION);
   /* if((!isset($_SESSION['email']) == true) and (!isset($_SESSION['$senha']) == true))
    {
        unset($_SESSION['email']);
        unset($_SESSION['senha']);
       // header('Location:login.html');
    }*/
    

    $sql = mysqli_query($conexao,"SELECT * FROM cadastro ORDER BY COD_PACIENTE ") or die("Erro");
    

    //$result = $conexao->query($sql);
   
?>
    <!DOCTYPE html>
    <html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">

        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
        </style>
        <link href="CSS/homestyle.css" rel="stylesheet">
        <title>Sistema</title>

        <style>
           table {
                    font-family: Poppins, sans-serif;
                    border-collapse: collapse;
                    width:100%;
                    margin-top:1.6em;
                    }

                    td, th {
                    border: 1px solid #dddddd;
                    text-align: left;
                    padding: 8px;
                    }

                    tr:nth-child(even) {
                    background-color: #dddddd;
                    }
        </style>
    </head>

    <body>
        <header>
            <div class="container">
                <div class="logo">
                    <img src="Imagens/logo-menu.png">
                </div>

                <div class="menu">
                    <ul>
                        <li><a href="sairSistema.php">Sair</a></li>
                    </ul>
                </div>

        </header>

       
        <table>
                <tr>
                    <th>#</th>
                    <th>Nome Completo</th>
                    <th>Email</th>
                    <th>Data Nasc</th>
                    <th>Telefone</th>
                   
                </tr>
               
                    <?php

                while($dados=mysqli_fetch_assoc($sql))
                while($user_data = mysqli_fetch_assoc($sql))
                {
                    echo"<tr>";
                    echo"<td>".$user_data['COD_PACIENTE']."</td>";
                    echo"<td>".$user_data['NOME_COMPLETO']."</td>";
                    echo"<td>".$user_data['EMAIL']."</td>";
                    echo"<td>".$user_data['DT_NASC']."</td>";
                    echo"<td>".$user_data['TELEFONE']."</td>";
    
                    echo"</tr>";
                }
            ?>
            </table>
            </bory>

    </html>