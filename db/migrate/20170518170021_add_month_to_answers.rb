class AddMonthToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :month, :text
  end
end
