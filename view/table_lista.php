<div class="table-responsive tamanhoTabela">
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
                        <td class='colTable'>$pessoa->cpf</td>
                        <td class='colTable'>$pessoa->rg</td>
                        <td class='colTable'>$pessoa->nome</td>
                        <td class='colTable'>$pessoa->data_nasc</td>
                        <td class='colTable'>$pessoa->idade</td>
                        <td class='colTable'>$pessoa->sexo</td>
                        <td class='colTable'>$pessoa->mae</td>
                        <td class='colTable'>$pessoa->pai</td>
                        <td class='colTable'>$pessoa->email</td>
                        <td class='colTable'>$pessoa->telefone_fixo</td>
                        <td class='colTable'>$pessoa->celular</td>
                        <td class='colTable'>$pessoa->cep</td>
                        <td class='colTable'>$pessoa->endereco</td>
                        <td class='colTable'>$pessoa->numero</td>
                        <td class='colTable'>$pessoa->bairro</td>
                        <td class='colTable'>$pessoa->cidade</td>
                        <td class='colTable'>$pessoa->estado</td>                       
                    </tr>
                    ";
                }
            }
        ?>
      
    </tbody>
</table>
</div>
