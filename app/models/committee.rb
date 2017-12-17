class Committee < ActiveRecord::Base
    belongs_to :ward
    has_many :coordinates
end
