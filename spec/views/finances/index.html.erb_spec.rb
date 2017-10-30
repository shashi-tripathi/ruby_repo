require 'rails_helper'

RSpec.describe "finances/index", :type => :view do
  before(:each) do
    assign(:finances, [
      Finance.create!(
        :father_profs => 1,
        :mother_profess => 2,
        :father_income => 3,
        :mother_income => 4,
        :other_income => 5,
        :economic_status => 6,
        :income_document => 7,
        :rationa_card => 8,
        :bank_statement => 9,
        :bank_name => 10,
        :bank_account_no => "Bank Account No",
        :user_id => 11
      ),
      Finance.create!(
        :father_profs => 1,
        :mother_profess => 2,
        :father_income => 3,
        :mother_income => 4,
        :other_income => 5,
        :economic_status => 6,
        :income_document => 7,
        :rationa_card => 8,
        :bank_statement => 9,
        :bank_name => 10,
        :bank_account_no => "Bank Account No",
        :user_id => 11
      )
    ])
  end

  it "renders a list of finances" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => "Bank Account No".to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
  end
end
