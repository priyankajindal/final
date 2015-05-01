class SubscriptionsController < ApplicationController

  def index
	@subs = Subscription.all 
  end

	def show	
	@sub = Subscription.find_by(id: params["id"]) 
	end

end