class Month < ActiveRecord::Base
  belongs_to :company
  include AASM

  aasm do
    state :inicio, :initial => true
    state :inicio, :dados_importados, :ac_ai_separados, :ai_distribuida_concluida, :ai_central_concluida, :fechado

    event :validar_importacao do
      transitions :from => :inicio, :to => :dados_importados, :guard => :todos_ficheiros_importados?
    end
    
    event :evento_aplic_regras do
        #e=Acontract.aplicar_regras
        transitions :from => :dados_importados, :to => :ac_ai_separados
    end
        
  end

    def todos_ficheiros_importados?      
        if (self.import_parties_status=='imported_parties'||self.import_loans_status=='imported_loans'||self.import_mitigants_status=='imported_mitigants') then
            true
        else
            false
        end
    end

  #def proxima_fase
  #  byebug
  #  case self.aasm_state
  #  when 'dados_importados'
  #    Acontract.aplicar_regras
  #    @month.evento_aplic_regras
  #  else
  #    redirect_to months_path, notice: "Não é possivel alterar estado" 
  #  end  
  #end


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
