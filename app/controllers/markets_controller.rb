class MarketsController < ApplicationController

  def index
    render json: Market.all
  end

end
