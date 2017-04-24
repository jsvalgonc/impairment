class Month < ActiveRecord::Base
  belongs_to :company
  include AASM

  aasm do
    state :inicio, :initial => true
    state :dados_importados,:ac_ai_separados , :dados_transferidos , :grupos_assignados, :ai_distribuida_concluida, :ai_central_concluida, :fechado

    event :ficheiros_importados do
      transitions :from => :inicio, :to => :dados_importados
    end
    
    event :evento_aplic_regras do
        #e=Acontract.aplicar_regras
        transitions :from => :dados_transferidos, :to => :ac_ai_separados
    end
    
    event :evento_assigna_grupos do
        transitions :from => :ac_ai_separados, :to => :grupos_assignados
    end
    
    event :transferir_dados_analise do
        transitions :from => :dados_importados, :to => :dados_transferidos
    end
  end
        
    def todos_ficheiros_importados?   
        if (self.import_parties_status=='imported_parties'&&self.import_loans_status=='imported_loans'&&self.import_mitigants_status=='imported_mitigants') then
            true
        else
            false
        end
    end


    #event :fechar do
    #  transitions :from => :meio, :to => :meio
    #end

    #event :reabrir do
    #  transitions :from => [:processo_do_meio, :fim], :to => :inicio
    #end

    #enum role: [:open, :closed]
    enum status: [ :open , :closed  ]
    enum import_parties_status: [  :missing_parties, :imported_parties  ]
    enum import_loans_status: [  :missing_loans, :imported_loans  ]
    enum import_mitigants_status: [  :missing_mitigants, :imported_mitigants  ]
    
    def self.getMax
        res=Month.maximum('month')
        if res.nil? then
            return Time.new(1900,1,1)
        else
            return res
        end
    end
end
