class Subscription < ActiveRecord::Base

belongs_to :user
has_many :accesss
has_many :devices, through: :accesss

end
