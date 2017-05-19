class GrupoAnalise < ActiveRecord::Base
    belongs_to :user
    has_many :aparties
end
