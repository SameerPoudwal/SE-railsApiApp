class ComputeController < ApplicationController
  def index
    x = 0
    y = 1
    z = 0
    random = Random.new
    max = 10000 + random.rand(500) + 1

    max.times do
      z = x + y
      x = y
      y= z
    end
    json_response(max, :done)
  end
end
