class ApplicationController < ActionController::Base
  before_action :set_global_variables
  
  def index
     
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_global_variables
     # @currency = Currency.find(params[:id])
      @global_data = HTTParty.get('https://api.coinmarketcap.com/v1/global/',
      :headers =>{'Content-Type' => 'application/json'} )
       @currencies = HTTParty.get('https://api.coinmarketcap.com/v1/ticker/?limit=0',
      :headers =>{'Content-Type' => 'application/json'} )
    end
    
end
