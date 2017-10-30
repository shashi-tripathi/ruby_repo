class SearchesController < ApplicationController
  def index
  end

  def new
  	@search=Search.new
  	@states = State.where("country_id = ?", Country.first.id)
    @cities = City.where("state_id = ?", Country.first.id)

  end	

  def create
    Rails.logger.debug("I am inside create!!!!!!")
  end

  def state
      @states = State.where("country_id = ?", params[:id])
      @states.collect { |state| 
      	Rails.logger.debug("I am in !!!!!!!!!!!state:"+state.state_name)
      }
     respond_to do |format|
        format.js
     end
  end
  def city
      @cities = City.where("state_id = ?", params[:state_id])
      @cities.collect { |city| 
        Rails.logger.debug("I am in !!!!!!!!!!!city:"+city.city_name)
      }
     respond_to do |format|
        format.js
     end
  end
 def zip
      @zip = City.where("id = ?", params[:city_id])
      @zip.collect { |zip| 
          @zip_code=zip.zip.to_s
           Rails.logger.debug("I am in !!!!!!!!!!!city:"+zip.zip.to_s)
        }
    @zip_code
    respond_to do |format|
        format.js
     end
  end



end

