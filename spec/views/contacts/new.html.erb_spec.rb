require 'rails_helper'

RSpec.describe "contacts/new", :type => :view do
  before(:each) do
    assign(:contact, Contact.new(
      :sent_to => "MyString",
      :sent_from => "MyString",
      :message => "MyString"
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_sent_to[name=?]", "contact[sent_to]"

      assert_select "input#contact_sent_from[name=?]", "contact[sent_from]"

      assert_select "input#contact_message[name=?]", "contact[message]"
    end
  end
end
