Feature: 02.01.01.01 - Regras de Inclusão na Análise Individual
  In order to create a new rule
  As a process manager
  I open the rules management page
  I create a new rule

Scenario: Open Month
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