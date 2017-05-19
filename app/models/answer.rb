class Answer < ActiveRecord::Base
    belongs_to :a_party
    belongs_to :question
    
    def self.criar_mes(month)
        byebug
        #ir buscar empresa/mes
        company_id = month.company_id
        month_id = month.id
        #Percorer todas as pergutas
        @questions=Question.all
        @parties=Aparty.where(company_id: company_id).where(month_id: month_id)
        @questions.each do |question|
            @parties.each do |party|
                answer=Answer.new
                answer.aparty_id=party.id
                answer.question_id = question.id
                answer.month = month.month
                answer.company_id= company_id
                answer.save
            end
        end
    end

end
