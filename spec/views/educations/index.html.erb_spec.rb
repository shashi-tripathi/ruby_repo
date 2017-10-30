require 'rails_helper'

RSpec.describe "educations/index", :type => :view do
  before(:each) do
    assign(:educations, [
      Education.create!(
        :grade => 1,
        :institute => 2,
        :institute_type => 3,
        :institute_country => 4,
        :institute_state => 5,
        :institue_city => "Institue City",
        :institute_website => "Institute Website",
        :institute_email => "Institute Email",
        :institute_phone => "Institute Phone",
        :teacher_name => "Teacher Name",
        :teach_email => "Teach Email",
        :teacher_phone => "Teacher Phone",
        :user_id => 6
      ),
      Education.create!(
        :grade => 1,
        :institute => 2,
        :institute_type => 3,
        :institute_country => 4,
        :institute_state => 5,
        :institue_city => "Institue City",
        :institute_website => "Institute Website",
        :institute_email => "Institute Email",
        :institute_phone => "Institute Phone",
        :teacher_name => "Teacher Name",
        :teach_email => "Teach Email",
        :teacher_phone => "Teacher Phone",
        :user_id => 6
      )
    ])
  end

  it "renders a list of educations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Institue City".to_s, :count => 2
    assert_select "tr>td", :text => "Institute Website".to_s, :count => 2
    assert_select "tr>td", :text => "Institute Email".to_s, :count => 2
    assert_select "tr>td", :text => "Institute Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Teacher Name".to_s, :count => 2
    assert_select "tr>td", :text => "Teach Email".to_s, :count => 2
    assert_select "tr>td", :text => "Teacher Phone".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
