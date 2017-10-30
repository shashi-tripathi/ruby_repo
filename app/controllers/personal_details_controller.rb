class PersonalDetailsController < ApplicationController
  before_action :set_personal_detail, only: [:show, :edit, :update, :destroy]

  def index
    @personal_details = PersonalDetail.all
  end

  def show
  end

  def new
    @personal_detail = PersonalDetail.new
  end

  def edit
       Rails.logger.debug("@personal_detail.gender!!!!!:"+@personal_detail.gender.to_s)
    
  end

  def create
    @personal_detail = PersonalDetail.new(personal_detail_params)
  if @personal_detail.save(personal_detail_params)
        flash.now[:notice] = "Personal Details has been saved!!!"
        render :new
      else
         flash[:notice] = ""
         render :new
      end
  end

  def update
      if @personal_detail.update(personal_detail_params)
        flash.now[:notice] = "Personal Details has been updated successfully!!!"
        render :edit
      else
         flash[:notice] = ""
         render :edit
      end


  end

  def destroy
    @personal_detail.destroy
  end

  private
    def set_personal_detail
      @personal_detail = PersonalDetail.find(params[:id])
    end

    def personal_detail_params
      params.require(:personal_detail).permit(:first_name, :middle_name, :last_name, :dob, :gender, :sibling, :s_first_name, :s_middle_name, :s_last_name, :s_dob, :f_first_name, :f_middle_name, :f_last_name, :f_dob, :m_first_name, :m_middle_name, :m_last_name, :m_dob, :ref1_name, :ref1_relation, :ref2_name, :ref2_relation)
    end
end
