<?php
session_start();

$json_url = "http://localhost/PI6/back/api/regiao/read_one.php?id_regiao=5";
$json = file_get_contents($json_url);

$data  = json_decode($json);

$_SESSION['id_regiao'] = $data->id_regiao;
$_SESSION['nome_reg'] = $data->nome_reg;
$_SESSION['id_doenca'] = $data->id_doenca;
$_SESSION['nome'] = $data->nome;
$_SESSION['descricao'] = $data->descricao;
$_SESSION['transmissao_id'] = $data->transmissao_id;
$_SESSION['historia_id'] = $data->historia_id;
$_SESSION['regiao_id'] = $data->regiao_id;
$_SESSION['profilaxia_id'] = $data->profilaxia_id;
$_SESSION['id_transmissao'] = $data->id_transmissao;
$_SESSION['conteudo_trans'] = $data->conteudo_trans;
$_SESSION['id_historia'] = $data->id_historia;
$_SESSION['conteudo'] = $data->conteudo;
$_SESSION['imagem'] = $data->imagem;
$_SESSION['id_profilaxia'] = $data->id_profilaxia;
$_SESSION['tipo'] = $data->tipo

?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Parasitologia Brasil</title>
    <link rel="icon" type="image/x-icon" href="../assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Google fonts-->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../css/style.css" rel="stylesheet" />
</head>

<body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top shadow-sm" style="background-color: #03e922;" id="mainNav">
        <div class="container px-5">
            <img src="../assets/img/logo_parasitologia.png" width="200px" alt="">

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="bi-list"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
                    <li class="nav-item"><a class="nav-link me-lg-3" href="javascript:void(0)" onClick="history.go(-1); return false;">Principal</a></li>
                    <li class="nav-item"><a class="nav-link me-lg-3" href="../saneamento.php">Saneamento B??sico</a></li>
                </ul>
                <button class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal">
                    <span class="d-flex align-items-center">
                        <i class="bi bi-joystick me-2"></i>
                        <span class="small">QUIZ</span>
                    </span>
                </button>
            </div>
        </div>
    </nav>

    <header class="container mt-5">


        <div class="pt-5 mt-4">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)" onClick="history.go(-1); return false;">Principal</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Regi??o</li>
                </ol>
            </nav>
            <h2 class="text-center mt-5">
                <?php
                echo $_SESSION['nome_reg'];
                //echo $data -> nome_reg;
                ?>
            </h2>
            <p class="text-center lead fw-normal text-muted mb-5 fs-6">Segue abaixo doen??as relacionadas a sua regi??o:</p>
        </div>

        <div class="card  mb-5">
            <div class="card-header text-white bg-primary d-flex justify-content-between">
                <a class="btn btn-primary">Doen??a</a>
                <a href="../conteudos.php?id_doenca=7" class="btn btn-primary">Saiba mais</a>
            </div>
            <div class="card-body">
                <h5 class="card-title text-dark">
                    Esquistossomose
                </h5>
                <p class="card-text">
                    ?? uma doen??a parasit??ria, diretamente relacionada ao saneamento prec??rio, causada pelo Schistosoma mansoni. A pessoa adquire a infec????o quando entra em contato com ??gua doce onde existam caramujos infectados pelos vermes causadores da esquistossomose.
                </p>
            </div>
        </div>

        </div>
        </div>

        <div class="card  mb-5">
            <div class="card-header text-white bg-primary d-flex justify-content-between">
                <a class="btn btn-primary">Doen??a</a>
                <a href="../conteudos.php?id_doenca=12" class="btn btn-primary">Saiba mais</a>
            </div>
            <div class="card-body">
                <h5 class="card-title text-dark">
                    Tung??ase
                </h5>
                <p class="card-text">
                    Tung??ase ?? uma parasitose causada por f??meas gr??vidas de uma esp??cie de pulga, Tunga penetrans, que habita o solo de zonas arenosas. A contamina????o ocorre quando o paciente pisa neste solo sem prote????o nos seus p??s. A f??mea gr??vida penetra na pele humana com a sua cabe??a e libera seus ovos para o exterior.
                </p>
            </div>
        </div>

        </div>
        </div>


    </header>

    <!-- Quote/testimonial aside-->

    <!-- Footer-->
    <footer class="bg-black text-center py-5 mt-5">
        <div class="container px-5">
            <div class="text-white-50 small">
                <div class="mb-2">&copy; Parasitologia Brasil 2021. Todos os direitos reservados.</div>
                <a href="#!">Privacidade</a>
                <span class="mx-1">&middot;</span>
                <a href="#!">Termos</a>
                <span class="mx-1">&middot;</span>
                <a href="#!">FAQ</a>
            </div>
        </div>
    </footer>
    <!-- Feedback Modal-->

    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="../js/scripts.js"></script>
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <!-- * *                               SB Forms JS                               * *-->
    <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>

</html>