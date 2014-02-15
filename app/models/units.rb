class Units < ActiveRecord::Base
  has_many :rooms
  accepts_nested_attribute_for :rooms

end
