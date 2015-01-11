class Creature < ActiveRecord::Base
#whitelist symbol validation messed up edit...
  validates :name, presence: true, uniqueness: true, length: { maximum: 40 }
  validates :desc, presence: true, length: { minimum: 10, maximum: 255 }
end
