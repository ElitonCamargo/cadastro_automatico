<div class="table-responsive">
<table class="table table-hover">
    <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">CPF</th>
            <th scope="col">RG</th>
            <th scope="col">Nome</th>
            <th scope="col">Data de nascimento</th>
            <th scope="col">Idade</th>
            <th scope="col">Sexo</th>
            <th scope="col">Nome da Mãe</th>
            <th scope="col">Nome do Pai</th>
            <th scope="col">Email</th>
            <th scope="col">Telefone</th>
            <th scope="col">Celular</th>
            <th scope="col">CEP</th>
            <th scope="col">Logradouro</th>
            <th scope="col">Número</th>
            <th scope="col">Bairro</th>
            <th scope="col">Cidade</th>
            <th scope="col">UF</th>
        </tr>
    </thead>
    <tbody>
        <?php
            require_once 'class/Pessoa.php';
            $objPessoa = new Pessoa();
            $pessoas = $objPessoa->listarTodas();

            if($pessoas){
                foreach ($pessoas as $pessoa) {
                    echo "
                    <tr>
                        <th scope='row'>$pessoa->id</th>                         
                        <td>$pessoa->cpf</td>
                        <td>$pessoa->rg</td>
                        <td>$pessoa->nome</td>
                        <td>$pessoa->data_nasc</td>
                        <td>$pessoa->idade</td>
                        <td>$pessoa->sexo</td>
                        <td>$pessoa->mae</td>
                        <td>$pessoa->pai</td>
                        <td>$pessoa->email</td>
                        <td>$pessoa->telefone_fixo</td>
                        <td>$pessoa->celular</td>
                        <td>$pessoa->cep</td>
                        <td>$pessoa->endereco</td>
                        <td>$pessoa->numero</td>
                        <td>$pessoa->bairro</td>
                        <td>$pessoa->cidade</td>
                        <td>$pessoa->estado</td>                       
                    </tr>
                    ";
                }
            }
        ?>
      
    </tbody>
</table>
</div>