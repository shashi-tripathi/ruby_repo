require 'rails_helper'

RSpec.describe "finances/edit", :type => :view do
  before(:each) do
    @finance = assign(:finance, Finance.create!(
      :father_profs => 1,
      :mother_profess => 1,
      :father_income => 1,
      :mother_income => 1,
      :other_income => 1,
      :economic_status => 1,
      :income_document => 1,
      :rationa_card => 1,
      :bank_statement => 1,
      :bank_name => 1,
      :bank_account_no => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit finance form" do
    render

    assert_select "form[action=?][method=?]", finance_path(@finance), "post" do

      assert_select "input#finance_father_profs[name=?]", "finance[father_profs]"

      assert_select "input#finance_mother_profess[name=?]", "finance[mother_profess]"

      assert_select "input#finance_father_income[name=?]", "finance[father_income]"

      assert_select "input#finance_mother_income[name=?]", "finance[mother_income]"

      assert_select "input#finance_other_income[name=?]", "finance[other_income]"

      assert_select "input#finance_economic_status[name=?]", "finance[economic_status]"

      assert_select "input#finance_income_document[name=?]", "finance[income_document]"

      assert_select "input#finance_rationa_card[name=?]", "finance[rationa_card]"

      assert_select "input#finance_bank_statement[name=?]", "finance[bank_statement]"

      assert_select "input#finance_bank_name[name=?]", "finance[bank_name]"

      assert_select "input#finance_bank_account_no[name=?]", "finance[bank_account_no]"

      assert_select "input#finance_user_id[name=?]", "finance[user_id]"
    end
  end
end
