class CreateRulesiis < ActiveRecord::Migration
  def change
    create_table :rulesiis do |t|
      t.decimal :number
      t.decimal :priority
      t.string :RuleType
      t.string :rule

      t.timestamps null: false
    end
  end
end
