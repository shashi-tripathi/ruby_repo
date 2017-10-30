require 'rails_helper'

RSpec.describe "contacts/show", :type => :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :sent_to => "Sent To",
      :sent_from => "Sent From",
      :message => "Message"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Sent To/)
    expect(rendered).to match(/Sent From/)
    expect(rendered).to match(/Message/)
  end
end
