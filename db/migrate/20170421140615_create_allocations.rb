class CreateAllocations < ActiveRecord::Migration
  def change
    create_table :allocations do |t|
      t.decimal :number
      t.decimal :priority
      t.string :ruleTipe
      t.string :balcao
      t.references :grupo_analise, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
