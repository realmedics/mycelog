class Myce < ActiveRecord::Base
  attr_accessible :title

  validates :description, presence: true
end
