class Vino < ApplicationRecord
    has_many :cepa_vinos
    has_many :cepas, through: :cepa_vinos, dependent: :destroy 
end
