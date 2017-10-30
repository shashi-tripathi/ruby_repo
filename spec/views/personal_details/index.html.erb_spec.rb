require 'rails_helper'

RSpec.describe "personal_details/index", :type => :view do
  before(:each) do
    assign(:personal_details, [
      PersonalDetail.create!(
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :gender => false,
        :sibling => false,
        :s_first_name => "S First Name",
        :s_middle_name => "S Middle Name",
        :s_last_name => "S Last Name",
        :f_first_name => "F First Name",
        :f_middle_name => "F Middle Name",
        :f_last_name => "F Last Name",
        :m_first_name => "M First Name",
        :m_middle_name => "M Middle Name",
        :m_last_name => "M Last Name",
        :m_dob => "M Dob",
        :ref1_name => "Ref1 Name",
        :ref1_relation => "Ref1 Relation",
        :ref2_name => "Ref2 Name",
        :ref2_relation => "Ref2 Relation"
      ),
      PersonalDetail.create!(
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :gender => false,
        :sibling => false,
        :s_first_name => "S First Name",
        :s_middle_name => "S Middle Name",
        :s_last_name => "S Last Name",
        :f_first_name => "F First Name",
        :f_middle_name => "F Middle Name",
        :f_last_name => "F Last Name",
        :m_first_name => "M First Name",
        :m_middle_name => "M Middle Name",
        :m_last_name => "M Last Name",
        :m_dob => "M Dob",
        :ref1_name => "Ref1 Name",
        :ref1_relation => "Ref1 Relation",
        :ref2_name => "Ref2 Name",
        :ref2_relation => "Ref2 Relation"
      )
    ])
  end

  it "renders a list of personal_details" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "S First Name".to_s, :count => 2
    assert_select "tr>td", :text => "S Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "S Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "F First Name".to_s, :count => 2
    assert_select "tr>td", :text => "F Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "F Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "M First Name".to_s, :count => 2
    assert_select "tr>td", :text => "M Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "M Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "M Dob".to_s, :count => 2
    assert_select "tr>td", :text => "Ref1 Name".to_s, :count => 2
    assert_select "tr>td", :text => "Ref1 Relation".to_s, :count => 2
    assert_select "tr>td", :text => "Ref2 Name".to_s, :count => 2
    assert_select "tr>td", :text => "Ref2 Relation".to_s, :count => 2
  end
end
