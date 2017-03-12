Feature: 02.02 - Apply AI Inclusion Rules
  In order to create a new rule
  As a process manager
  I open the process management page
  I start the process

Scenario: Start AI Process
  Given there is a future Month
  Given I am authenticated as a Process Manager
  When I go to the "Process Management" page
  And I chosee "2017-01-01" from drop box "Mes" 
  Then I should see "Ficheiros Importados" 
  And I press "Próxima Fase"
  Then I should see "Regras Aplicadas com Sucesso"
  When I go to the "Contratos" page
  Then I should see "AI" in line "1001401171004"
  And  I should see "AC" in line "100835210001" 
  
  