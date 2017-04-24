class AddGrupoAnaliseIdToAparties < ActiveRecord::Migration
  def change
    add_reference :aparties, :grupo_analise, index: true, foreign_key: true
  end
end
