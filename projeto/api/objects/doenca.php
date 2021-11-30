<?php
class Doenca{
  
    // database connection and table name
    private $conn;
    private $table_name = "regiao";
    private $table_name2 = "doenca";
    private $table_name3 = "historia";
    private $table_name4 = "profilaxia";
    private $table_name5 = "transmissao";
  
  
    // object properties
    public $id_regiao;
    public $nome_reg;
    public $id_doenca;
    public $nome;
    public $descricao;
    public $regiao_id;
    public $transmissao_id;
    public $historia_id;
    public $profilaxia_id;
    public $id_transmissao;
    public $conteudo_trans;
    public $id_historia;
    public $conteudo;
    public $imagem;
    public $id_profilaxia;
    public $tipo;

  
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }

    // read products
function read(){
  
    // select all query
    $query = " SELECT * FROM " . $this->table_name2 . " p

    ";
   /* $query = "SELECT
                c.name as category_name, p.id, p.name, p.description, p.price, p.category_id, p.created
            FROM
                " . $this->table_name . " p
                LEFT JOIN
                    categories c
                        ON p.category_id = c.id
            ORDER BY
                p.created DESC";
    */
    // prepare query statement
    $stmt = $this->conn->prepare($query);
  
    // execute query
    $stmt->execute();
  
    return $stmt;
}

// used when filling up the update product form
function readOne(){
  
    // query to read single record
    $query = " SELECT * FROM " . $this->table_name . " r, " . $this->table_name2 . " d,
                             " . $this->table_name3 . " h, " . $this->table_name4 . " p,
                             " . $this->table_name5 . " t
                        WHERE r.id_regiao = d.regiao_id
                          AND h.id_historia = d.historia_id
                          AND p.id_profilaxia = d.profilaxia_id
                          AND t.id_transmissao = d.transmissao_id
                          AND d.id_doenca = ?";
  
    // prepare query statement
    $stmt = $this->conn->prepare( $query );
  
    // bind id of product to be updated
    $stmt->bindParam(1, $this->id_doenca);
  
    // execute query
    $stmt->execute();
  
    // get retrieved row
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
  
    // set values to object properties
    //regiao
    $this->id_regiao = $row['id_regiao'];
    $this->nome_reg = $row['nome_reg'];
    //doenca
    $this->id_doenca = $row['id_doenca'];
    $this->nome = $row['nome'];
    $this->descricao = $row['descricao'];
    $this->regiao_id = $row['regiao_id'];
    $this->transmissao_id = $row['transmissao_id'];
    $this->historia_id = $row['historia_id'];
    $this->profilaxia_id = $row['profilaxia_id'];
    //transmissao
    $this->id_transmissao = $row['id_transmissao'];
    $this->conteudo_trans = $row['conteudo_trans'];
    //historia
    $this->id_historia = $row['id_historia'];
    $this->conteudo = $row['conteudo'];
    $this->imagem = $row['imagem'];
    //profilaxia
    $this->id_profilaxia = $row['id_profilaxia'];
    $this->tipo = $row['tipo'];
}

// read products with pagination
public function readPaging($from_record_num, $records_per_page){
  
    // select query
    $query = " SELECT * FROM " . $this->table_name . " p
            LIMIT ?, ?";
  
    // prepare query statement
    $stmt = $this->conn->prepare( $query );
  
    // bind variable values
    $stmt->bindParam(1, $from_record_num, PDO::PARAM_INT);
    $stmt->bindParam(2, $records_per_page, PDO::PARAM_INT);
  
    // execute query
    $stmt->execute();
  
    // return values from database
    return $stmt;
}

// used for paging products
public function count(){
    $query = "SELECT COUNT(*) as total_rows FROM " . $this->table_name . "";
  
    $stmt = $this->conn->prepare( $query );
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
  
    return $row['total_rows'];
}
}
?>