class VendingsController < ApplicationController
  def show
    drinks = Drink.all

    g_vendings = []
    n_vendings = []

    @vendings = []
    @drinks = []

    if !user_params["genre"].blank? && !user_params["name"].blank?

      drinks_t = Drink.where("name like '%" + user_params["name"] + "%' and genre_id =" + user_params["genre"])
      drinks_t.map{ |d| d.ve_relation_ship.map{ |r| @vendings.push(Vending.where(id: r.vending_id)) } }

      @drinks.push(drinks)

    elsif !user_params["genre"].blank?

      drinks_t = Drink.where(genre_id: user_params["genre"])
      drinks_t.map{ |d| d.ve_relation_ship.map{ |r| @vendings.push(Vending.where(id: r.vending_id)) } }

      @drinks.push(drinks)

    elsif !user_params["name"].blank?

      drinks_t = Drink.where("name like '%" + user_params["name"] + "%'")
      drinks_t.map{ |d| d.ve_relation_ship.map{ |r| @vendings.push(Vending.where(id: r.vending_id)) } }

      @drinks.push(drinks)

    else

      puts "hoge"
      @vendings.push(Vending.all)
    end

    @vendings = @vendings.flatten
    @drinks = @drinks.flatten
  end

  private
    def user_params
      params
    end
end
