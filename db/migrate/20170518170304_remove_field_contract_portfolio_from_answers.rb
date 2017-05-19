class RemoveFieldContractPortfolioFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :ContractPortfolio, :text
  end
end
