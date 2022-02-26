class PagesController < ApplicationController
  def hello
    puts params
    render json: params
  end
end
