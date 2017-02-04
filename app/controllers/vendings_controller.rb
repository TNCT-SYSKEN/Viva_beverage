class VendingsController < ApplicationController
  def show
    @vendings = Vending.all
    drinks = Drink.all
    if user_params.include?("genre")
      drinks = drinks.select{|d| d.genre_id == user_params["genre"]}

      @vendings = @vendings.select{ |v|
         
      }
    end
  end

  private
    def user_params
      params
    end
end
