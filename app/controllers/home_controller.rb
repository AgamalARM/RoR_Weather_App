require "net/http"
class HomeController < ApplicationController
  def index
    
  end
  
  def show
    
  end
  
  def create
    @zipcode = params[:zipcode]
    @feeling = params[:feeling]
    # @stops = Stop.where("longitude = ? AND latitude = ?", longitude, latitude)
    url = "http://api.openweathermap.org/data/2.5/weather?zip=#{@zipcode}&appid=b51c99563a009490e658f79f448e8794&units=imperial"
    uri = URI(url)
    res = Net::HTTP.get_response(uri)
    @data = JSON.parse(res.body)
    render :index
  end
                     
end