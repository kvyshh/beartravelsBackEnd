class Day < ActiveRecord::Base
    
    belongs_to :trip
    has_many :todos
    
end