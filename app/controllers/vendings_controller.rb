class VendingsController < ApplicationController
  def show
    drinks = Drink.all

    g_vendings = []
    n_vendings = []

    @vendings = []

    if !user_params["genre"].blank? && !user_params["name"].blank?

      drinks = Drink.where("name like '%" + user_params["name"] + "%' and genre_id =" + user_params["genre"])
      drinks.map{ |d| d.ve_relation_ship.map{ |r| @vendings.push(Vending.where(id: r.vending_id)) } }

    elsif !user_params["genre"].blank?

      drinks = Drink.where(genre_id: user_params["genre"])
      drinks.map{ |d| d.ve_relation_ship.map{ |r| @vendings.push(Vending.where(id: r.vending_id)) } }

    elsif !user_params["name"].blank?

      drinks = Drink.where("name like '%" + user_params["name"] + "%'")
      drinks.map{ |d| d.ve_relation_ship.map{ |r| @vendings.push(Vending.where(id: r.vending_id)) } }

    else
      puts "hoge"
      @vendings.push(Vending.all)
    end

    @vendings = @vendings.flatten

  end

  private
    def user_params
      params
    end
end
