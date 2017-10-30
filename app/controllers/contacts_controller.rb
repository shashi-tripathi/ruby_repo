class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all

  end

  def show
  end

  def new
    @contact = Contact.new
  end

  def edit
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
       Notifier.email_friend(@contact.sent_to,@contact.message,@contact.sent_from).deliver
      flash.now[:notice] = "Email has been sent successfully."
      render :new
      else
         flash[:notice] = "Email could not be sent due to some errors"
         render :new
      end
   
 #   redirect_to 
  end

  def update
    @contact.update(contact_params)
   end

  def destroy
    @contact.destroy
   end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:sent_to, :sent_from, :message)
    end
end
