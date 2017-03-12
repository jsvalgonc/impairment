class CreateMonths < ActiveRecord::Migration
  def change
    create_table :months do |t|
      t.date :month
      t.integer :status

      t.timestamps null: false
    end
  end
end
