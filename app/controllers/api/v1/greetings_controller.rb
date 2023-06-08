class Api::V1::GreetingsController < ApplicationController
  def index
    @greeting = Greeting.order('Random()').limit(5)
    render json: @greeting
  end
end
