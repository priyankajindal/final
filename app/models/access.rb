class Access < ActiveRecord::Base

	belongs_to :device
	belongs_to :subscription
	
end
