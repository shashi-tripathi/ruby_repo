require 'rails_helper'

RSpec.describe "finances/show", :type => :view do
  before(:each) do
    @finance = assign(:finance, Finance.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/Bank Account No/)
    expect(rendered).to match(/11/)
  end
end
