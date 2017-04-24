class AddUserIdToGrupoAnalises < ActiveRecord::Migration
  def change
    add_reference :grupo_analises, :user, index: true, foreign_key: true
  end
end
