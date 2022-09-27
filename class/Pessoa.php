<?php
require_once 'Conexao.php';
class Pessoa{
    public $id;
    public $cpf;
    public $rg;
    public $nome;
    public $data_nasc;
    public $idade;
    public $sexo;
    public $mae;
    public $pai;
    public $email;
    public $telefone_fixo;
    public $celular;
    public $cep;
    public $endereco;
    public $numero;
    public $bairro;
    public $cidade;
    public $estado;

    public function cadastrar(){     
        $cx = new PDO('mysql:host='.HOST.';dbname='.DB, USER, PASSW);   
        $cmdSql = 'INSERT INTO pessoa(cpf, rg, nome, data_nasc, idade, sexo, mae, pai, email, telefone_fixo, celular, cep, endereco, numero, bairro, cidade, estado) VALUES (:cpf, :rg, :nome, :data_nasc, :idade, :sexo, :mae, :pai, :email, :telefone_fixo, :celular, :cep, :endereco, :numero, :bairro, :cidade, :estado)';
        $cxPronta = $cx->prepare($cmdSql);
        $dadosSobrepostos =[
            ":cpf"=> $this->cpf,
            ":rg"=> $this->rg,
            ":nome"=> $this->nome,
            ":data_nasc"=> $this->data_nasc,
            ":idade"=> $this->idade,
            ":sexo"=> $this->sexo,
            ":mae"=> $this->mae,
            ":pai"=> $this->pai,
            ":email"=> $this->email,
            ":telefone_fixo"=> $this->telefone_fixo,
            ":celular"=> $this->celular,
            ":cep"=> $this->cep,
            ":endereco"=> $this->endereco,
            ":numero"=> $this->numero,
            ":bairro"=> $this->bairro,
            ":cidade"=> $this->cidade,
            ":estado"=> $this->estado
        ];
        return $cxPronta->execute($dadosSobrepostos);
    }
    
    public function listarTodas(){
        $cx = new PDO('mysql:host='.HOST.';dbname='.DB, USER, PASSW);
        $cmdSql = 'SELECT * FROM pessoa';
        $cxPronta = $cx->prepare($cmdSql);
        if($cxPronta->execute()){
            if($cxPronta->rowCount() > 0){
                return $cxPronta->fetchAll(PDO::FETCH_CLASS,"Pessoa");
            }
        }
    }

}
// input_cpf
// input_rg
// input_nome
// input_data_nasc
// input_idade
// input_sexo
// input_mae
// input_pai
// input_email
// input_telefone_fixo
// input_celular
// input_cep
// input_endereco
// input_numero
// input_bairro
// input_cidade
// input_estado
// btn_cadaster

