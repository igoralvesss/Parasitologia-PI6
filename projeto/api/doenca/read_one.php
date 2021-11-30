<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Credentials: true");
header('Content-Type: application/json');
  
// include database and object files
include_once '../config/database.php';
include_once '../objects/doenca.php';
  
// get database connection
$database = new Database();
$db = $database->getConnection();
  
// prepare product object
$doenca = new Doenca($db);
  
// set ID property of record to read
$doenca->id_doenca = isset($_GET['id_doenca']) ? $_GET['id_doenca'] : die();
  
// read the details of product to be edited
$doenca->readOne();
  
if($doenca->nome!=null){
    // create array

        $doenca_arr=array(
            "id_regiao" => $doenca->id_regiao,
            "nome_reg" => $doenca->nome_reg,
            "id_doenca" => $doenca->id_doenca,
            "nome" => $doenca->nome,
            "descricao" => $doenca->descricao,
            "transmissao_id" => $doenca->transmissao_id,
            "historia_id" => $doenca->historia_id,
            "regiao_id" => $doenca->regiao_id,
            "profilaxia_id" => $doenca->profilaxia_id,
            "id_transmissao" => $doenca->id_transmissao,
            "conteudo_trans" => $doenca->conteudo_trans,
            "id_historia" => $doenca->id_historia,
            "conteudo" => $doenca->conteudo,
            "imagem" => $doenca->imagem,
            "id_profilaxia" => $doenca->id_profilaxia,
            "tipo" => $doenca->tipo

    );
  
    // set response code - 200 OK
    http_response_code(200);
  
    // make it json format
    echo json_encode($doenca_arr);
}
  
else{
    // set response code - 404 Not found
    http_response_code(404);
  
    // tell the user product does not exist
    echo json_encode(array("message" => "Doenca does not exist."));
}
?>