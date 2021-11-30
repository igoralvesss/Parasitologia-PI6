<?php
$json_url = "http://localhost/PI6/back/api/regiao/read_one.php?id_regiao=2";
$json = file_get_contents($json_url);

$data  = json_decode($json);

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
                    <li class="nav-item"><a class="nav-link me-lg-3" href="../saneamento.php">Saneamento Básico</a></li>
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
                    <li class="breadcrumb-item active" aria-current="page">Região</li>
                </ol>
            </nav>
            <h2 class="text-center mt-5">
                <?php
                //echo $_SESSION['nome_reg'];
                echo $data -> nome_reg;
                ?>
            </h2>
            <p class="text-center lead fw-normal text-muted mb-5 fs-6">Segue abaixo doenças relacionadas a sua região:</p>
        </div>

        <div class="card  mb-5">
            <div class="card-header text-white bg-primary d-flex justify-content-between">
                <a class="btn btn-primary">Doença</a>
                <a href="../conteudos.php?id_doenca=3" class="btn btn-primary">Saiba mais</a>
            </div>
            <div class="card-body">
                <h5 class="card-title text-dark">
                    Toxoplasmose
                </h5>
                <p class="card-text">
                    toxoplasmose é uma infecção causada por um protozoário chamado “Toxoplasma Gondii”, encontrado nas fezes de gatos e outros felinos, que pode se hospedar em humanos e outros animais. É causada pela in</p>
            </div>
        </div>

        </div>
        </div>

        <div class="card  mb-5">
            <div class="card-header text-white bg-primary d-flex justify-content-between">
                <a class="btn btn-primary">Doença</a>
                <a href="../conteudos.php?id_doenca=9" class="btn btn-primary">Saiba mais</a>
            </div>
            <div class="card-body">
                <h5 class="card-title text-dark">
                    Ancilostomose
                </h5>
                <p class="card-text">
                    A ancilostomíase, também chamada de ancilostomose e popularmente conhecida como amarelão, é uma parasitose intestinal que pode ser causada pelo parasita Ancylostoma duodenale ou pelo Necator americanu</p>
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