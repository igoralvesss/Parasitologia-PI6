<?php
session_start();

if ($_GET['id_doenca'] == 2) {
  $json_url = "http://localhost/PI6/back/api/doenca/read_one.php?id_doenca=2";
} elseif ($_GET['id_doenca'] == 3) {
  $json_url = "http://localhost/PI6/back/api/doenca/read_one.php?id_doenca=3";
} elseif ($_GET['id_doenca'] == 4) {
  $json_url = "http://localhost/PI6/back/api/doenca/read_one.php?id_doenca=4";
} elseif ($_GET['id_doenca'] == 5) {
  $json_url = "http://localhost/PI6/back/api/doenca/read_one.php?id_doenca=5";
} elseif ($_GET['id_doenca'] == 6) {
  $json_url = "http://localhost/PI6/back/api/doenca/read_one.php?id_doenca=6";
} elseif ($_GET['id_doenca'] == 7) {
  $json_url = "http://localhost/PI6/back/api/doenca/read_one.php?id_doenca=7";
} elseif ($_GET['id_doenca'] == 8) {
  $json_url = "http://localhost/PI6/back/api/doenca/read_one.php?id_doenca=8";
} elseif ($_GET['id_doenca'] == 9) {
  $json_url = "http://localhost/PI6/back/api/doenca/read_one.php?id_doenca=9";
} elseif ($_GET['id_doenca'] == 10) {
  $json_url = "http://localhost/PI6/back/api/doenca/read_one.php?id_doenca=10";
} elseif ($_GET['id_doenca'] == 11) {
  $json_url = "http://localhost/PI6/back/api/doenca/read_one.php?id_doenca=11";
} else {
  $json_url = "http://localhost/PI6/back/api/doenca/read_one.php?id_doenca=12";
}


$json = file_get_contents($json_url);

$data  = json_decode($json);

//$iddo = $data->id_doenca

?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>Parasitologia Brasil</title>
  <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
  <!-- Bootstrap icons-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
  <!-- Google fonts-->
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="css/style.css" rel="stylesheet" />
</head>

<body id="page-top">

  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top shadow-sm" style="background-color: #000000;" id="mainNav">
    <div class="container px-5 d-flex justify-content-between">
      <a href="javascript:void(0)" onClick="history.go(-1); return false;"><img src="assets/img/seta-esquerda.png" width="30px" alt=""></a>
      <p class="text-white fs-4"><?php echo $data->nome ?></p>
      <img src="assets/img/seta-esquerda_2.png" width="30px" alt="">
    </div>
  </nav>

  <header class="corzinha mt-5">

    <nav class="mt-5 ms-5" aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="javascript:void(0)" onClick="history.go(-2); return false;">Principal</a></li>
        <li class="breadcrumb-item"><a href="javascript:void(0)" onClick="history.go(-1); return false;">Região</a></li>
        <li class="breadcrumb-item active" aria-current="page"><?php echo $data->nome ?></li>
      </ol>
    </nav>
    <div class="container cont_principal d-flex justify-content-around mt-5">

      <div class="secundario2" style="width:450px; height:100px;">
        <div class=" mt-5 mb-lg-0 text-center text-lg-start d-flex justify-content-center flex-wrap">
          <img class="logo_grande" src="assets/img/logo_grande.png" width="400px" alt="">
          <p class="text-center mb-2 fs-5">Aqui você encontra informações sobre a doença <?php echo $data->nome ?> .</p>
          <p class="text-center lead fw-normal text-muted mb-5 fs-6">Escolha um dos tópicos que tenha interesse em saber.</p>

        </div>
      </div>

      <div class="secundario1 d-flex justify-content-center pa-2 mt-5">
        <div class="card-btn" style="width:450px; height:100px;">
          <div class="d-grid gap-2">

            <a href="utilitarios/historia.php?id_doenca=<?php echo $data->id_doenca ?>" class="btn mt-3" style="background-color: #03e922;">História</a>

            <a href="utilitarios/transmissao.php?id_doenca=<?php echo $data->id_doenca ?>" class="btn mt-3" style="background-color: #03e922;">Transmissão</a>

            <a href="utilitarios/profilaxia.php?id_doenca=<?php echo $data->id_doenca ?>" class="btn mt-3" style="background-color: #03e922;">Medidas para prevenção</a>
          </div>
        </div>
      </div>
  </header>



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
  <script src="js/scripts.js"></script>
  <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
  <!-- * *                               SB Forms JS                               * *-->
  <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
  <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
  <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>

</html>