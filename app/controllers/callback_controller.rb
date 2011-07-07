class CallbackController < ApplicationController
	def index()
		c = MyModels::Callback.new
		c.token=params[:token]
		c.customGroup=params[:customGroup]
		c.connectedTo=params[:connectedTo]
		c.timestmap=params[:timestamp]
		c.type=params[:type]
		c.save()
		render :json => {}
	end

end
