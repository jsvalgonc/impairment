Feature: 01.01 - Abrir Mês
  In order to open a new month
  As a process manager
  I open a new month

Scenario: Open Month
  Given there is a future Month
  Given I am authenticated as a Process Manager
  When I go to the "Period Management" page
  And I press "Novo Mês"
  Then I should see "Novo Mês Aberto com sucesso"
  And I shoul see "01/02/2020"

