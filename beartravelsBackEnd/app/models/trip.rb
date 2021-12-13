class Trip < ActiveRecord::Base
    
    has_many :days
    has_many :todos, through: :days
    belongs_to :user
    
end