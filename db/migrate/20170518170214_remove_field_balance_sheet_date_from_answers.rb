class RemoveFieldBalanceSheetDateFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :BalanceSheetDate, :text
  end
end
