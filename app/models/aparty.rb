class Aparty < ActiveRecord::Base
  include AASM
  enum aiselected: [:nao_dividido, :analise_individual , :analise_colectiva ]
  belongs_to :grupo_analise

  aasm do
    state :em_alocacao, :initial => true
    state :alocado, :em_analise, :em_aprovacao, :em_validacao, :concluido

    #event :ficheiros_importados do
    #  transitions :from => :inicio, :to => :dados_importados
    #end
  end

  def self.aplicar_regras(month)
        #ir buscar empresa/mes
        company_id = month.company_id
        month_id = month.id
        #Percorer todas as regras
        @rulesii=Rulesii.where(" company_id = ?",company_id)
        @rulesii.order(priority: :desc).each do |rulesii|
          sqlStatment = "update aparties set \"AISelected\"=2  where\"company_id\"=" + company_id.to_s + " and \"month_id\"=" + month_id.to_s
          teste=Aparty.connection.update(sqlStatment)
          #aplicar a regras 
          sqlStatment = "update aparties set \"AISelected\"=1  where " + rulesii.rule + " and \"company_id\"=" + company_id.to_s + " and \"month_id\"=" + month_id.to_s
          teste=Aparty.connection.update(sqlStatment)
        end
    end

  def self.assigna_grupos(month)
      company_id = month.company_id
      month_id = month.id
      sqlStatment = "select update_aparties_grupos_analise()"
      teste=Aparty.connection.update(sqlStatment)
  end


end
