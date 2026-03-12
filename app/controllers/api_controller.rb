class ApiController < ApplicationController
  def hello
    render json: { message: "Hello World from the Rails API" }
  end
end