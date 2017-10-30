require 'rails_helper'

RSpec.describe "personal_details/new", :type => :view do
  before(:each) do
    assign(:personal_detail, PersonalDetail.new(
      :first_name => "MyString",
      :middle_name => "MyString",
      :last_name => "MyString",
      :gender => false,
      :sibling => false,
      :s_first_name => "MyString",
      :s_middle_name => "MyString",
      :s_last_name => "MyString",
      :f_first_name => "MyString",
      :f_middle_name => "MyString",
      :f_last_name => "MyString",
      :m_first_name => "MyString",
      :m_middle_name => "MyString",
      :m_last_name => "MyString",
      :m_dob => "MyString",
      :ref1_name => "MyString",
      :ref1_relation => "MyString",
      :ref2_name => "MyString",
      :ref2_relation => "MyString"
    ))
  end

  it "renders new personal_detail form" do
    render

    assert_select "form[action=?][method=?]", personal_details_path, "post" do

      assert_select "input#personal_detail_first_name[name=?]", "personal_detail[first_name]"

      assert_select "input#personal_detail_middle_name[name=?]", "personal_detail[middle_name]"

      assert_select "input#personal_detail_last_name[name=?]", "personal_detail[last_name]"

      assert_select "input#personal_detail_gender[name=?]", "personal_detail[gender]"

      assert_select "input#personal_detail_sibling[name=?]", "personal_detail[sibling]"

      assert_select "input#personal_detail_s_first_name[name=?]", "personal_detail[s_first_name]"

      assert_select "input#personal_detail_s_middle_name[name=?]", "personal_detail[s_middle_name]"

      assert_select "input#personal_detail_s_last_name[name=?]", "personal_detail[s_last_name]"

      assert_select "input#personal_detail_f_first_name[name=?]", "personal_detail[f_first_name]"

      assert_select "input#personal_detail_f_middle_name[name=?]", "personal_detail[f_middle_name]"

      assert_select "input#personal_detail_f_last_name[name=?]", "personal_detail[f_last_name]"

      assert_select "input#personal_detail_m_first_name[name=?]", "personal_detail[m_first_name]"

      assert_select "input#personal_detail_m_middle_name[name=?]", "personal_detail[m_middle_name]"

      assert_select "input#personal_detail_m_last_name[name=?]", "personal_detail[m_last_name]"

      assert_select "input#personal_detail_m_dob[name=?]", "personal_detail[m_dob]"

      assert_select "input#personal_detail_ref1_name[name=?]", "personal_detail[ref1_name]"

      assert_select "input#personal_detail_ref1_relation[name=?]", "personal_detail[ref1_relation]"

      assert_select "input#personal_detail_ref2_name[name=?]", "personal_detail[ref2_name]"

      assert_select "input#personal_detail_ref2_relation[name=?]", "personal_detail[ref2_relation]"
    end
  end
end
