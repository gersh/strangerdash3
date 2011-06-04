class MatchController < ApplicationController
  def index()
    @token = Raydash.getToken('dummyblack','myCustomGroup')
    session[:token]=@token
  end
  def next()
    Raydash.changeStreamRand(session[:token],:active => true,:twoWay=>true, :customGroup=>'myCustomGroup')
    render :json => {:ok => true }
  end
end
