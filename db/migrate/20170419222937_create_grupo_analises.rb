class CreateGrupoAnalises < ActiveRecord::Migration
  def change
    create_table :grupo_analises do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
