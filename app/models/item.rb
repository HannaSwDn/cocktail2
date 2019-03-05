class Item < ApplicationRecord

    validates_precense_of :name, :description, :price, :category

end
