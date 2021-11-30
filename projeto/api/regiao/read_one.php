<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Credentials: true");
header('Content-Type: application/json');
  
// include database and object files
include_once '../config/database.php';
include_once '../objects/regiao.php';
  
// get database connection
$database = new Database();
$db = $database->getConnection();
  
// prepare product object
$regiao = new Regiao($db);
  
// set ID property of record to read
$regiao->id_regiao = isset($_GET['id_regiao']) ? $_GET['id_regiao'] : die();
  
// read the details of product to be edited
$regiao->readOne();
  
if($regiao->nome_reg!=null){
    // create array

        $regiao_arr=array(
            "id_regiao" => $regiao->id_regiao,
            "nome_reg" => $regiao->nome_reg,
            "id_doenca" => $regiao->id_doenca,
            "nome" => $regiao->nome,
            "descricao" => $regiao->descricao,
            "transmissao_id" => $regiao->transmissao_id,
            "historia_id" => $regiao->historia_id,
            "regiao_id" => $regiao->regiao_id,
            "profilaxia_id" => $regiao->profilaxia_id,
            "id_transmissao" => $regiao->id_transmissao,
            "conteudo_trans" => $regiao->conteudo_trans,
            "id_historia" => $regiao->id_historia,
            "conteudo" => $regiao->conteudo,
            "imagem" => $regiao->imagem,
            "id_profilaxia" => $regiao->id_profilaxia,
            "tipo" => $regiao->tipo

    );
  
    // set response code - 200 OK
    http_response_code(200);
  
    // make it json format
    echo json_encode($regiao_arr);
}
  
else{
    // set response code - 404 Not found
    http_response_code(404);
  
    // tell the user product does not exist
    echo json_encode(array("message" => "regiao does not exist."));
};
?>