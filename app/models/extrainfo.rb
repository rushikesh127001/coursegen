class Extrainfo < ApplicationRecord
    belongs_to :user

    validates :semester,:section,:subject,:modulecoordinator1,:modulecoordinator2, presence:true



end    
