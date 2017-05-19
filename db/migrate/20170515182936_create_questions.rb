class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :version
      t.text :question
      t.integer :type

      t.timestamps null: false
    end
  end
end
