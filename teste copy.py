# Importação base para lidar com a biblioteca SELENIUM
from selenium import webdriver

# Biblioteca utilizada para selecionar elementos na DOM do HTML.
from selenium.webdriver.common.by import By

# Biblioteca utilizada para aguardar carregamentos mais demorados
from selenium.webdriver.support.ui import WebDriverWait

# Biblioteca para lidar com exceções e erros inesperado durante o carregamento. 
from selenium.webdriver.support import expected_conditions as EC

# Importe para solicitação de tempo entre a execuão de um bloco e outro.  
import time

# Importe necessário para manipular dados em JSON  
import json

# Apontando para o local onde se encontra o chromedriver, que é o responsável por permitir a execução do SELENIUM no navegador. 
# Criando uma variável “navegador” para ligar com todas a funcionalidades da execução do SELENIUM, quando em modo de teste.  
navegador = webdriver.Chrome("C:\chromedriver\chromedriver.exe")

# Apontando o site que o SELENIUM deve abrir.   
navegador.get("https://www.4devs.com.br/gerador_de_pessoas")

# Selecionando o elemento que definir a quantidade de pessoa que será executada.    
quant_pessoas = navegador.find_element(By.NAME,"txt_qtde")
# Selecionando o elemento que é o botão a ser clicado pra gerar as pessoas.
gerar_Pessoas = navegador.find_element(By.ID,"bt_gerar_pessoa")
# Selecionando o elemento que é o campo onde os dados gerados e emitidos em JSON são exibidos.
campoDadosGerados = navegador.find_element(By.NAME,"dados_json")


quant_pessoas.clear() # Limpando o campo quantidade de pessoas 
quant_pessoas.send_keys(30) #Definindo que serão geradas 30 pessoas. 
gerar_Pessoas.click() # Clicando no elemento, botão “GERAR PESSOA” 

# Criando uma estrutura Try/Finally para lidar com erros e exceções inesperadas 
try:
    # Aguardando até 10 segundos para que os dados gerados sejam totalmente carregados na variável dados
    dados =  WebDriverWait(navegador, 10).until(EC.presence_of_element_located((By.ID, "dados_json")))
    # Tentando para verificar se os dados em JSON foram recebidos.
    print(dados.get_attribute('value'))

    # Transformando a lista de pessoas recebidas em JSON em uma array de objetos pessoas. 
    listaPessoas = json.loads(dados.get_attribute('value'))
     
    navegador.get("http://projetos.php.local/cadastro_automatico/")

    for pessoa in listaPessoas:
        input_cpf           = navegador.find_element(By.NAME,'input_cpf') 
        input_rg            = navegador.find_element(By.NAME,'input_rg')
        input_nome          = navegador.find_element(By.NAME,'input_nome')
        input_data_nasc     = navegador.find_element(By.NAME,'input_data_nasc')
        input_idade         = navegador.find_element(By.NAME,'input_idade')
        input_sexo          = navegador.find_element(By.NAME,'input_sexo')
        input_mae           = navegador.find_element(By.NAME,'input_mae')
        input_pai           = navegador.find_element(By.NAME,'input_pai')
        input_email         = navegador.find_element(By.NAME,'input_email')
        input_telefone_fixo = navegador.find_element(By.NAME,'input_telefone_fixo')
        input_celular       = navegador.find_element(By.NAME,'input_celular')
        input_cep           = navegador.find_element(By.NAME,'input_cep')
        input_endereco      = navegador.find_element(By.NAME,'input_endereco')
        input_numero        = navegador.find_element(By.NAME,'input_numero')
        input_bairro        = navegador.find_element(By.NAME,'input_bairro')
        input_cidade        = navegador.find_element(By.NAME,'input_cidade')
        input_estado        = navegador.find_element(By.NAME,'input_estado')

        input_cpf.send_keys(pessoa['cpf'])
        input_rg.send_keys(pessoa['rg'])
        input_nome.send_keys(pessoa['nome'])
        input_data_nasc.send_keys(pessoa['data_nasc'])
        input_idade.send_keys(pessoa['idade'])
        input_sexo.send_keys(pessoa['sexo'])
        input_mae.send_keys(pessoa['mae'])
        input_pai.send_keys(pessoa['pai'])
        input_email.send_keys(pessoa['email'])
        input_telefone_fixo.send_keys(pessoa['telefone_fixo'])
        input_celular.send_keys(pessoa['celular'])
        input_cep.send_keys(pessoa['cep'])
        input_endereco.send_keys(pessoa['endereco'])
        input_numero.send_keys(pessoa['numero'])
        input_bairro.send_keys(pessoa['bairro'])
        input_cidade.send_keys(pessoa['cidade'])
        input_estado.send_keys(pessoa['estado'])
        navegador.find_element(By.NAME,'btn_cadaster').click()

        time.sleep(2)



    navegador.close()
finally:
    navegador.quit()






















