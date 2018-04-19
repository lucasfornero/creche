class Crianca < ApplicationRecord
    validates :Nome, :Mae, presence: true
end
