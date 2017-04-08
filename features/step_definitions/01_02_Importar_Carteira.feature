Feature: 01.02 - Importar Carteira
  In order to import a new loan book
  As a process manager
  I choose a month 
  I choose a file
  And press the import button

Scenario: Import Parties
  Given there is a future Month
  Given I am authenticated as a Process Manager
  #Given there is a present Month
  When I go to the "Period Management" page
  When In line "20017-01-01" I press "Importar" file "parties"
  When I choose file "test/files/Parties_test.txt"
  When I press "Importar"
  Then I should see "Ficheiros de Contrapartes Importado"

Scenario: Import Contracts
  Given there is a future Month
  Given I am authenticated as a Process Manager
  #Given there is a present Month
  When I go to the "Period Management" page 
  When In line "2016-01-01" I press "Importar" file "loans"
  When I choose file "test/files/Contracts_test.txt"
  When I press "Importar"
  Then I should see "Ficheiros de Contratos Importado"


Scenario: Import Mitigants
  Given there is a future Month
  Given I am authenticated as a Process Manager
  #Given there is a present Month
  When I go to the "Period Management" page
  When In line "20017-01-01" I press "Importar" file "mitigants"
  When I choose file "test/files/Mitigants_test.txt"
  When I press "Importar"
  Then I should see "Ficheiros de Mitigantes Importado"
  