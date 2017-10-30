class FinancesController < ApplicationController
  before_action :set_finance, only: [:show, :edit, :update, :destroy]

  def index
    @finances = Finance.all
  end

  def show
  
  end

  def new
    @finance = Finance.new
  end

  def edit
  end

  def create
    @finance = Finance.new(finance_params)
    @finance.save
    end

  
    def update
      # Rails.logger.debug("uploaded_document!!!!!:"+params[:finance][:uploaded_document].to_s)
      @finance.uploaded_file=params[:finance][:uploaded_document]
      if @finance.update(finance_params)
      flash.now[:notice] = "Financcial Details has been updated successfully!!!"
      render :edit
      else
         flash[:notice] = "Post can not be saved, please enter information."
         render :edit
      end
  end

  

  def filename(new_filename)
    write_attribute("filename", sanitize_filename(new_filename))
  end

  def sanitize_filename(filename)
    #get only the filename, not the whole path (from IE)
    just_filename = File.basename(filename)
    #replace all non-alphanumeric, underscore or periods with underscores
    just_filename.gsub(/[^\w\.\-]/, '_')
  end

 def destroy
    @finance.destroy
    respond_with(@finance)
 end

 def download
     @finance = Finance.find(params[:id])
require 'tmpdir'
   tempfile = File.new(File.join(Dir.tmpdir, @finance.filename), "w")
   tempfile.syswrite(@finance.uploaded_document)
   tempfile.close
   send_file Rails.root.join(tempfile), :type=>@finance.content_type, :x_sendfile=>true
 end

  private
    def set_finance
      @finance = Finance.find(params[:id])
    end

    def finance_params
      params.require(:finance).permit(:father_profs, :mother_profess, :father_income, :mother_income, :other_income, :economic_status, :income_document, :rationa_card, :bank_statement, :bank_name, :bank_account_no, :user_id,)
    end
end
