class Ward < ActiveRecord::Base
    has_many :committees
    has_many :coordinates
end