Feature: 02.02 - Apply AI Inclusion Rules


Scenario: Import Parties
  Given there is a future Month
  Given I am authenticated as a Process Manager
  When I go to the "Period Management" page
  When In line "20017-01-01" I press "Importar" file "parties"
  When I choose file "test/files/Parties_test.txt"
  When I press "Importar"
  Then I should see "Ficheiros de Contrapartes Importado"

#Scenario: Import Contracts
  When I go to the "Period Management" page 
  When In line "20017-01-01" I press "Importar" file "loans"
  When I choose file "test/files/Contracts_test.txt"
  When I press "Importar"
  Then I should see "Ficheiros de Contratos Importado"


#Scenario: Import Mitigants 
  When I go to the "Period Management" page
  When In line "20017-01-01" I press "Importar" file "mitigants"
  When I choose file "test/files/Mitigants_test.txt"
  When I press "Importar"
  Then I should see "Ficheiros de Mitigantes Importado"

#Scenario: Create Rule
  When I go to the "Rules Management" page
  And I follow "Criar Nova Regra"
  And fill in "rulesii_number" with "100"
  And fill in "rulesii_priority" with "10"
  And fill in "rulesii_RuleType" with "I"
  #And fill in "rulesii_rule" with "[\"TotalPartyExposure\"]>1"
  And I fill in regra
  And I press "Criar"
  Then I should see "Regra Criada com Sucesso" 

#Scenario: Start AI Process
  
  When I go to the "Process Management" page
  Then I should see "dados_importados" 
  And I press "Proxima Fase"
  Then I should see "Fase Alterada"
  And I press "Proxima Fase"
  Then I should see "Fase Alterada"
  When I go to the "Clientes" page
  Then I should see "Análise Individual" before "TIAGO DOMINGOS SANTOS" and after "Análise Colectiva"
  Then I should see "Análise Colectiva" before "BEQUATRO" and after "Não Dividido"
  
#3.1.1 Critério de Alocação

  Given there's a user "analista"
  Given there's Grupo de Analise "Grupo1"
  When I go to the "criar Criterio de Alocação" page
  Then fill in "allocation_number" with "100"
  Then fill in "allocation_priority" with "100"
  Then fill in "allocation_balcao" with "001"
  When I chosee "Grupo1" from drop box "allocation_grupo_analise"
  
  And I press "Criar"
  Then I should see "Criterio de Alocação criado com Sucesso" 

#3.1.2 - Correr Processo de Alocação
  When I go to the "Process Management" page
  Then I should see "ac_ai_separados"
  And I press "Proxima Fase"
  Then I should see "Fase Alterada"
  Given I am not authenticated
  Given I am authenticated as "analista"
  When I go to the "Gestao de Pool" page
  Then I should see "TIAGO DOMINGOS SANTOS"
  
  