from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC 
import time
import json
navegador = webdriver.Chrome("C:\chromedriver\chromedriver.exe")
navegador.get("https://www.4devs.com.br/gerador_de_pessoas")  
quant_pessoas = navegador.find_element(By.NAME,"txt_qtde")
gerar_Pessoas = navegador.find_element(By.ID,"bt_gerar_pessoa")
campoDadosGerados = navegador.find_element(By.NAME,"dados_json")


quant_pessoas.clear()
quant_pessoas.send_keys(30) 
gerar_Pessoas.click() 
time.sleep(1)
try:
    
    dados =  WebDriverWait(navegador, 10).until(EC.presence_of_element_located((By.ID, "dados_json")))    
    print(dados.get_attribute('value'))
    # dados = '[{"nome": "Caroline Camila Isabella Pires","idade": 70,"cpf": "876.642.564-61","rg": "38.590.845-3","data_nasc": "14/07/1952","sexo": "Feminino","signo": "Câncer","mae": "Antonella Sueli Rita","pai": "Gabriel Nicolas Pires","email": "caroline_camila_pires@p4ed.com","senha": "3gLtJMAjnE","cep": "68628-020","endereco": "Avenida Afonso Leão","numero": 530,"bairro": "Promissão I","cidade": "Paragominas","estado": "PA","telefone_fixo": "(91) 2663-5299","celular": "(91) 98479-2057","altura": "1,65","peso": 67,"tipo_sanguineo": "O-","cor": "vermelho"},{"nome": "Silvana Camila Cláudia Costa","idade": 75,"cpf": "328.218.119-18","rg": "28.287.747-2","data_nasc": "13/06/1947","sexo": "Feminino","signo": "Gêmeos","mae": "Alice Sophia Milena","pai": "Cláudio Ryan Costa","email": "silvanacamilacosta@etirama.com.br","senha": "6HCNJCeeuW","cep": "59025-190","endereco": "Praça Carlos Gomes","numero": 687,"bairro": "Cidade Alta","cidade": "Natal","estado": "RN","telefone_fixo": "(84) 2581-7408","celular": "(84) 99673-4721","altura": "1,73","peso": 71,"tipo_sanguineo": "O-","cor": "vermelho"}]'
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
        input_cpf.submit()  
        time.sleep(1)

finally:
    navegador.quit()
    print('Erro')


