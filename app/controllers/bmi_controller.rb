class BmiController < ApplicationController
  def index
  end

  def result
puts params
    height = params["height"].to_f / 100
    weight = params["weight"].to_f 

    @bmi = 100
puts @bmi
  end
end
