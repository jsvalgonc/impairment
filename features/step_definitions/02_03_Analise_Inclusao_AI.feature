Feature: 02.04 - Analise AI - Próxima Fase


Scenario: Analise de Inclusão na AI
  Given there is a future Month
  Given I am authenticated as a Process Manager
  When I go to the "Fase" page
  When I press the "NextPhase" button
  Then  I should see "Confirma"
  When I press the "Yes" button
  Then  I should see "Alocação"
  
  