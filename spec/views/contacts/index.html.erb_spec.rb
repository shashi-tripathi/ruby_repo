require 'rails_helper'

RSpec.describe "contacts/index", :type => :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :sent_to => "Sent To",
        :sent_from => "Sent From",
        :message => "Message"
      ),
      Contact.create!(
        :sent_to => "Sent To",
        :sent_from => "Sent From",
        :message => "Message"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "Sent To".to_s, :count => 2
    assert_select "tr>td", :text => "Sent From".to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
