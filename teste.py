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
quant_pessoas.send_keys(20) 
gerar_Pessoas.click() 
time.sleep(1)

try:
    
    dados =  WebDriverWait(navegador, 10).until(EC.presence_of_element_located((By.ID, "dados_json")))    
    listaPessoas = json.loads(dados.get_attribute('value'))    
    
     
    navegador.get("http://cadastropessoa.local/")
    navegador.fullscreen_window()

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

    navegador.find_element(By.ID,'nav-lista-tab').click()    

finally:
    print("Erro de sistema!!!")

print("Fim execução")



