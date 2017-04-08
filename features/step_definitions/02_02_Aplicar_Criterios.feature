Feature: 02.02 - Apply AI Inclusion Rules


Scenario: Import Parties
  Given there is a future Month
  Given I am authenticated as a Process Manager
  When I go to the "Period Management" page
  When In line "20017-01-01" I press "Importar" file "parties"
  When I choose file "test/files/Parties_test.txt"
  When I press "Importar"
  Then I should see "Ficheiros de Contrapartes Importado"

Scenario: Import Contracts
  Given there is a future Month
  Given I am authenticated as a Process Manager
  When I go to the "Period Management" page 
  When In line "20017-01-01" I press "Importar" file "loans"
  When I choose file "test/files/Contracts_test.txt"
  When I press "Importar"
  Then I should see "Ficheiros de Contratos Importado"


Scenario: Import Mitigants 
  Given there is a future Month
  Given I am authenticated as a Process Manager
  When I go to the "Period Management" page
  When In line "20017-01-01" I press "Importar" file "mitigants"
  When I choose file "test/files/Mitigants_test.txt"
  When I press "Importar"
  Then I should see "Ficheiros de Mitigantes Importado"

Scenario: Create Rule
  Given there is a future Month
  Given I am authenticated as a Process Manager
  When I go to the "Rules Management" page
  And I follow "Criar Nova Regra"
  And fill in "rulesii_number" with "100"
  And fill in "rulesii_priority" with "10"
  And fill in "rulesii_RuleType" with "I"
  And fill in "rulesii_rule" with "[TotalPartyExposure]>1000000"
  And I press "Criar"
  Then I should see "Regra Criada com Sucesso" 

Scenario: Start AI Process
  
  Given there is a future Month
  Given I am authenticated as a Process Manager
  When I go to the "Process Management" page
  Then I should see "inicio" 
  And I press "Proxima Fase"
  Then I should see "Regras Aplicadas com Sucesso"
  When I go to the "Contratos" page
  Then I should see "AI" in line "1001401171004"
  And  I should see "AC" in line "100835210001" 
  
  