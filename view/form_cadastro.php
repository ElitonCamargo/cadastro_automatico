<?php
if(isset($_POST['input_cpf'])){
    require_once 'class/Pessoa.php';
    $objPessoa = new Pessoa();
    
    $objPessoa->cpf =           $_POST['input_cpf'];
    $objPessoa->rg =            $_POST['input_rg'];
    $objPessoa->nome =          $_POST['input_nome'];
    $objPessoa->data_nasc =     $_POST['input_data_nasc'];
    $objPessoa->idade =         $_POST['input_idade'];
    $objPessoa->sexo =          $_POST['input_sexo'];
    $objPessoa->mae =           $_POST['input_mae'];
    $objPessoa->pai =           $_POST['input_pai'];
    $objPessoa->email =         $_POST['input_email'];
    $objPessoa->telefone_fixo = $_POST['input_telefone_fixo'];
    $objPessoa->celular =       $_POST['input_celular'];
    $objPessoa->cep =           $_POST['input_cep'];
    $objPessoa->endereco =      $_POST['input_endereco'];
    $objPessoa->numero =        $_POST['input_numero'];
    $objPessoa->bairro =        $_POST['input_bairro'];
    $objPessoa->cidade =        $_POST['input_cidade'];
    $objPessoa->estado =        $_POST['input_estado'];

    if($objPessoa->cadastrar()){
        echo'<div class="alert alert-success" role="alert">
                <h4 class="alert-heading">Cadastro</h4>
                <p>Sucesso ao cadastrar usuário!!!</p>
            </div>';
    }
    else{
        echo'<div class="alert alert-danger" role="alert">
                <h4 class="alert-heading">Cadastro</h4>
                <p>Erro ao cadastrar usuário</p>
            </div>';
    }
}
?>
<fieldset>
    <legend>Cadastro de pessoa</legend>
    <form class="row g-3" method="POST">
        <h5>Dados pessoais</h4>    
        <!-- cpf -->
        <div class="col-md-6">
            <label class="form-label">CPF</label>
            <input name="input_cpf" type="tex" class="form-control" placeholder="CPF">
        </div>

        <!-- rg -->
        <div class="col-md-6">
            <label class="form-label">RG</label>
            <input name="input_rg" type="tex" class="form-control" placeholder="RG">
        </div>
        <!-- nome -->
        <div class="col-12">
            <label class="form-label">Nome</label>
            <input name="input_nome" type="text" class="form-control" placeholder="Nome">
        </div>
        <!-- data_nasc -->
        <div class="col-md-4">
            <label class="form-label">Data de nascimento</label>
            <input name="input_data_nasc" type="text" class="form-control" >
        </div>
        <!-- idade -->
        <div class="col-md-4">
            <label class="form-label">Idade</label>
            <input name="input_idade" type="text" class="form-control" >
        </div>        
        <!-- sexo -->
        <div class="col-md-4">
            <label class="form-label">Sexo</label>
            <input name="input_sexo" type="text" class="form-control" >
        </div>         
        <!-- mae -->
        <div class="col-12">
            <label class="form-label">Nome da Mãe</label>
            <input name="input_mae" type="text" class="form-control" placeholder="Nome">
        </div>
        <!-- pai -->
        <div class="col-12">
            <label class="form-label">Nome do Pai</label>
            <input name="input_pai" type="text" class="form-control" placeholder="Nome">
        </div>
        <hr>
        <h5>Contato</h5>
        <!-- email -->
        <div class="col-md-6">
            <label class="form-label">Email</label>
            <input name="input_email" type="email" class="form-control">
        </div>
        <!-- telefone_fixo -->
        <div class="col-md-3">
            <label class="form-label">Telefone</label>
            <input name="input_telefone_fixo" type="text" class="form-control">
        </div>
        <!-- celular -->
        <div class="col-md-3">
            <label class="form-label">Celular</label>
            <input name="input_celular" type="text" class="form-control">
        </div>
        <hr>
        <h5>Endereço</h5>
        <!-- cep -->
        <div class="col-md-4">
            <label class="form-label">CEP</label>
            <input name="input_cep" type="text" class="form-control" >
        </div>
        <!-- endereco -->
        <div class="col-10">
            <label class="form-label">Logradouro</label>
            <input name="input_endereco" type="text" class="form-control">
        </div>
        <!-- numero -->
        <div class="col-2">
            <label class="form-label">Número</label>
            <input name="input_numero" type="text" class="form-control">
        </div>
        <!-- bairro -->
        <div class="col-12">
            <label class="form-label">Bairro</label>
            <input name="input_bairro" type="text" class="form-control">
        </div>
        <!-- cidade -->
        <div class="col-6">
            <label class="form-label">Cidade</label>
            <input name="input_cidade" type="text" class="form-control">
        </div>
        <!-- estado -->
        <div class="col-6">
            <label class="form-label">UF</label>
            <input name="input_estado" type="text" class="form-control">
        </div>

      <div class="col-12">
        <input type="submit" name="btn_cadastrar" id="btn_cadastrar" value="Cadastrar" class="btn btn-primary">
      </div>
    </form>
</fieldset>
