require 'rails_helper'

RSpec.describe "educations/edit", :type => :view do
  before(:each) do
    @education = assign(:education, Education.create!(
      :grade => 1,
      :institute => 1,
      :institute_type => 1,
      :institute_country => 1,
      :institute_state => 1,
      :institue_city => "MyString",
      :institute_website => "MyString",
      :institute_email => "MyString",
      :institute_phone => "MyString",
      :teacher_name => "MyString",
      :teach_email => "MyString",
      :teacher_phone => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit education form" do
    render

    assert_select "form[action=?][method=?]", education_path(@education), "post" do

      assert_select "input#education_grade[name=?]", "education[grade]"

      assert_select "input#education_institute[name=?]", "education[institute]"

      assert_select "input#education_institute_type[name=?]", "education[institute_type]"

      assert_select "input#education_institute_country[name=?]", "education[institute_country]"

      assert_select "input#education_institute_state[name=?]", "education[institute_state]"

      assert_select "input#education_institue_city[name=?]", "education[institue_city]"

      assert_select "input#education_institute_website[name=?]", "education[institute_website]"

      assert_select "input#education_institute_email[name=?]", "education[institute_email]"

      assert_select "input#education_institute_phone[name=?]", "education[institute_phone]"

      assert_select "input#education_teacher_name[name=?]", "education[teacher_name]"

      assert_select "input#education_teach_email[name=?]", "education[teach_email]"

      assert_select "input#education_teacher_phone[name=?]", "education[teacher_phone]"

      assert_select "input#education_user_id[name=?]", "education[user_id]"
    end
  end
end
