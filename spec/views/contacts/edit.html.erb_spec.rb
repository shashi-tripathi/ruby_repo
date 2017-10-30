require 'rails_helper'

RSpec.describe "contacts/edit", :type => :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :sent_to => "MyString",
      :sent_from => "MyString",
      :message => "MyString"
    ))
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do

      assert_select "input#contact_sent_to[name=?]", "contact[sent_to]"

      assert_select "input#contact_sent_from[name=?]", "contact[sent_from]"

      assert_select "input#contact_message[name=?]", "contact[message]"
    end
  end
end
