class AddAnswerTypeToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :answer_type, :integer
  end
end
