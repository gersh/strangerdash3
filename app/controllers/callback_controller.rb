class CallbackController < ApplicationController
	def index()
		c=Callback.new()
		c.token=params[:token]
		c.customGroup=params[:customGroup]
		c.connectedTo=params[:connectedTo]
		c.timestamp=params[:timestamp]
		c.type=params[:type]
		c.save()
	end

end
