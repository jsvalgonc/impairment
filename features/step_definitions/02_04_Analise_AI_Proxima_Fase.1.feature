Feature: 02.03 - Analise de Inclusão na AI


Scenario: Analise de Inclusão na AI
  Given there is a future Month
  Given I am authenticated as a Process Manager
  When I go to the "AnaliseAI" page
  Then I should see "AI" in line "1001401171004"
  And  I should see "AC" in line "100835210001" 
  
  