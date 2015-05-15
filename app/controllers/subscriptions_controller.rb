class SubscriptionsController < ApplicationController

  def index
	@subs = Subscription.all 
  end

	def show	
	@sub = Subscription.find_by(id: params["id"]) 
	end

	def new
	@sub = Subscription.new
	end

	def create
  	Subscription.create(params["subscription"])
  	redirect_to subscriptions_url
  end

end