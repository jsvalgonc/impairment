Feature: 01.02 - Importar Carteira
  In order to import a new loan book
  As a process manager
  I choose a month 
  I choose a file
  And press the import button

Scenario: Import Parties
  Given I am authenticated as a Process Manager
  When I go to the "Period Management" page
  When In line "20017-01-01" I press "Importar Parties"
  When fill in "ficheiro" with "D:\Trabalho\BPN\II\FicheirosImportar\Parties_M201409I_PV_PAR.txt"
  When I press "OK"
  Then I should see "Ficheiro Importado com sucesso"

Scenario: Import Contracts
  Given I am authenticated as a Process Manager
  When I go to the "Period Management" page
  When In line "20017-01-01" I press "Importar Contracts"
  When fill in "ficheiro" with "D:\Trabalho\BPN\II\FicheirosImportar\Contracts_M201409I_PV_CNT.txt"
  When I press "OK"
  Then I should see "Ficheiro Importado com sucesso"

Scenario: Import Mitigants 
  Given I am authenticated as a Process Manager
  When I go to the "Period Management" page
  When In line "20017-01-01" I press "Importar Mitigants"
  When fill in "ficheiro" with "D:\Trabalho\BPN\II\FicheirosImportar\MCJ_M201409I_PV_MCJ.txt"
  When I press "OK"
  Then I should see "Ficheiro Importado com sucesso"
  