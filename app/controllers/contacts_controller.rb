class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    Contact.create(name: params["name"],email: params["email"], content: params["content"])
    redirect_to new_contact_path
  end
  
  private
  
end
