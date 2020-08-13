class Category < ApplicationRecord
    has_many :bourbons, :dependent => :destroy 
end
