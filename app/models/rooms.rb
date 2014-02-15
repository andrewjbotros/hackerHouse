class Rooms < ActiveRecord::Base
  belongs_to :unit

  validates :price, presence: true,
                    numericality: { only_integer: true }


end
