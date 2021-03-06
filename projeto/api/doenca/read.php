<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
  
// include database and object files
include_once '../config/database.php';
include_once '../objects/doenca.php';
  
// instantiate database and product object
$database = new Database();
$db = $database->getConnection();
  
// initialize object
$doenca = new Doenca($db);
  
// query products
$stmt = $doenca->read();
$num = $stmt->rowCount();
  
// check if more than 0 record found
if($num>0){
  
    // products array
    $doencas_arr=array();
    $doencas_arr["records"]=array();
  
    // retrieve our table contents
    // fetch() is faster than fetchAll()
    // http://stackoverflow.com/questions/2770630/pdofetchall-vs-pdofetch-in-a-loop
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        // extract row
        // this will make $row['name'] to
        // just $name only
        extract($row);
  
        $doenca_item=array(
            "id_doenca" => $id_doenca,
            "nome" => $nome,
            "id_transmissao" => $id_transmissao,
            "id_historia" => $id_historia,
            "id_regiao" => $id_regiao,
            "id_profilaxia" => $id_profilaxia
        );
  
        array_push($doencas_arr["records"], $doenca_item);
    }
  
    // set response code - 200 OK
    http_response_code(200);
  
    // show products data in json format
    echo json_encode($doencas_arr);
}
  
else{
  
    // set response code - 404 Not found
    http_response_code(404);
  
    // tell the user no products found
    echo json_encode(
        array("message" => "No doencas found.")
    );
}