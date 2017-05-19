class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.date :BalanceSheetDate
      t.text :ContractPortfolio
      t.integer :aparty_id
      t.integer :question_id
      t.integer :answer

      t.timestamps null: false
    end
  end
end
