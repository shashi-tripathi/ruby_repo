class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  def new
      @address=Address.new
  end

  # GET /addresses/1/edit
  def edit
    @states = State.where("country_id = ?", @address.country)
    @cities = City.where("state_id = ?", @address.state)
   
  end

  
  # PATCH/PUT /addresses/1
  # PATCH/PUT /addresses/1.json
  def update
    #Rails.logger.debug("address_param:"+address_params[state].to_s)
      respond_to do |format|
      if @address.update(address_params)
       format.html {
         flash[:notice] = "Address has been updated successfully!!!"
          redirect_to "/addresses/"+ @address.id.to_s + "/edit"
       }
      else
          @states = State.where("country_id = ?", @address.country)
          @cities = City.where("state_id = ?", @address.state)
          format.html { render :edit }
       end
      end
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



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:address).permit(:id,:house_no,:country,:street,:zip,:state,:city,:user_id,:email,:phone,:alt_phone,:mobile)
    end

end

