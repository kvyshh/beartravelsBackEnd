class User < ActiveRecord::Base
    
    has_many :trips
    has_many :days, through: :trips
    has_many :todos, through: :trips
    
end