class Crianca < ApplicationRecord
  belongs_to :turma
  belongs_to :calcado, optional:true
end
