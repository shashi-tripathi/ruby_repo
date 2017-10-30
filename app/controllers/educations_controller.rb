class EducationsController < ApplicationController
  before_action :set_education, only: [:show, :edit, :update, :destroy]

  def index
    @educations = Education.all
  end

  def show
    respond_with(@education)
  end

  def new
    @education = Education.new
  end

  def edit
     @states = State.where("country_id = ?", @education.institute_country)
     @cities = City.where("state_id = ?", @education.institute_state)
  end

  def create
    @education = Education.new(education_params)
    @education.save
  end

  
  def update
       respond_to do |format|
      if @education.update(education_params)
        format.html {
        flash[:notice] = "Education Details has been updated successfully!!!"
        redirect_to "/educations/"+@education.id.to_s+"/edit"
      }
      else
          @states = State.where("country_id = ?", @education.institute_country)
          @cities = City.where("state_id = ?", @education.institute_state)
          format.html { render :edit }
      end
    end
  end

  def destroy
    @education.destroy
    respond_with(@education)
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
    def set_education
      @education = Education.find(params[:id])
    end

    def education_params
      params.require(:education).permit(:grade, :institute, :institute_type, :institute_country, :institute_state, :institue_city, :institute_website, :institute_email, :institute_phone, :teacher_name, :teach_email, :teacher_phone, :user_id,:institute_stree,:institue_zip)
    end
end
