class VendingsController < ApplicationController
  def show
    drinks = Drink.all

    g_vendings = []
    n_vendings = []

    @vendings = []
    @drinks = []
    @relations = []

    Vending.all.map { |v|
      @relations[v.id] = [];
    }

    if !user_params["genre"].blank? && !user_params["name"].blank?

      drinks_t = Drink.where("name like '%" + user_params["name"] + "%' and genre_id =" + user_params["genre"])
      if user_params["temp"].blank?
        drinks_t.map{ |d| d.ve_relation_ship.map{ |r| @vendings.push(Vending.where(id: r.vending_id));@relations[r.vending_id].push(d.name) } }
      else
        drinks_t.map{ |d|
          d.ve_relation_ship.map{ |r|
            if r.temp == user_params["temp"].to_i
              @vendings.push(Vending.where(id: r.vending_id))
              @relations[r.vending_id].push(d.name)
              @drinks.push(Drink.where(id: r.drink_id))
            end
          }
        }
      end

      drinks_t.map{ |d|
        if foo = user_params["temp"].blank?
          @drinks.push(d)
        else
          hoge = false

          d.ve_relation_ship.map{|r|
            hoge = true if r.temp == user_params["temp"].to_i
          }

          @drinks.push(d) if hoge == true
        end
      }

    elsif !user_params["genre"].blank?

      drinks_t = Drink.where(genre_id: user_params["genre"])

      if user_params["temp"].blank?
        drinks_t.map{ |d| d.ve_relation_ship.map{ |r| @vendings.push(Vending.where(id: r.vending_id));@relations[r.vending_id].push(d.name) } }
      else
        drinks_t.map{ |d|
          d.ve_relation_ship.map{ |r|
            if r.temp == user_params["temp"].to_i
              @vendings.push(Vending.where(id: r.vending_id))
              @relations[r.vending_id].push(d.name)
              @drinks.push(Drink.where(id: r.drink_id))
            end
          }
        }
      end

      drinks_t.map{ |d|
        if foo = user_params["temp"].blank?
          @drinks.push(d)
        else
          hoge = false

          d.ve_relation_ship.map{|r|
            hoge = true if r.temp == user_params["temp"].to_i
          }

          @drinks.push(d) if hoge == true
        end
      }

    elsif !user_params["name"].blank?

      drinks_t = Drink.where("name like '%" + user_params["name"] + "%'")
      if user_params["temp"].blank?
        drinks_t.map{ |d| d.ve_relation_ship.map{ |r| @vendings.push(Vending.where(id: r.vending_id));@relations[r.vending_id].push(d.name) } }
      else
        drinks_t.map{ |d|
          d.ve_relation_ship.map{ |r|
            if r.temp == user_params["temp"].to_i
              @vendings.push(Vending.where(id: r.vending_id))
              @relations[r.vending_id].push(d.name)
              @drinks.push(Drink.where(id: r.drink_id))
            end
          }
        }
      end

      drinks_t.map{ |d|
        if foo = user_params["temp"].blank?
          @drinks.push(d)
        else
          hoge = false

          d.ve_relation_ship.map{|r|
            hoge = true if r.temp == user_params["temp"].to_i
          }

          @drinks.push(d) if hoge == true
        end
      }

    else

      @vendings.push(Vending.all)
      @relations.push(VeRelationShip.all)

    end

    @vendings = @vendings.flatten.uniq

    @v_drinks = []

    i = 0

    @vendings.map{|v|
      @v_drinks[i] = []
      v.ve_relation_ship.map{|r|
        @v_drinks[i].push(Drink.where(id: r.drink_id)[0].name)
        @v_drinks[i] = @v_drinks[i].flatten.uniq
      }
      i += 1
    }

    @drinks = @drinks.flatten.uniq
    @relations = @relations.flatten.uniq

  end

  private
    def user_params
      params
    end
end
