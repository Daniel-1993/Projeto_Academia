class Qualificacao < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :academia_treinamento
end
