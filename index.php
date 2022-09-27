<!doctype html>
<html lang="pt-BR">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cadastro automatizado</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <nav>
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <button class="nav-link active" id="nav-cadastro-tab"   data-bs-toggle="tab" data-bs-target="#nav-cadastro" type="button" role="tab" aria-controls="nav-cadastro"   aria-selected="true">Cadastro</button>
                <button class="nav-link"        id="nav-lista-tab"      data-bs-toggle="tab" data-bs-target="#nav-lista"    type="button" role="tab" aria-controls="nav-lista"      aria-selected="false">Lista</button>
            </div>
        </nav>
        <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade show active" id="nav-cadastro" role="tabpanel" aria-labelledby="nav-cadastro-tab" tabindex="0">
                <?php
                    require_once 'view/form_cadastro.php';
                ?>
            </div>
            <div class="tab-pane fade" id="nav-lista" role="tabpanel" aria-labelledby="nav-lista-tab" tabindex="0">
                <?php
                    require_once 'view/table_lista.php';
                ?>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>

</html>