class Acontract < ActiveRecord::Base
  belongs_to :aparty
  
  
    def self.aplicar_regras(month)
        #ir buscar empresa/mes
        company_id = month.company_id
        month_id = month.id
        #Percorer todas as regras
        @rulesii=Rulesii.where(" company_id = ?",company_id)
        @rulesii.order(priority: :desc).each do |rulesii|
          #aplicar a regras 
          sqlStatment = "update \"acontracts\" set AIISelected =1  where " + rulesii.rule + " and \"company_id\"=" + company_id.to_s + " and \"month_id\"=" + month_id.to_s
          byebug
          teste=Acontract.connection.select_all(sqlStatment)
        end
    end

end
