require 'rails_helper'

RSpec.describe "personal_details/show", :type => :view do
  before(:each) do
    @personal_detail = assign(:personal_detail, PersonalDetail.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/S First Name/)
    expect(rendered).to match(/S Middle Name/)
    expect(rendered).to match(/S Last Name/)
    expect(rendered).to match(/F First Name/)
    expect(rendered).to match(/F Middle Name/)
    expect(rendered).to match(/F Last Name/)
    expect(rendered).to match(/M First Name/)
    expect(rendered).to match(/M Middle Name/)
    expect(rendered).to match(/M Last Name/)
    expect(rendered).to match(/M Dob/)
    expect(rendered).to match(/Ref1 Name/)
    expect(rendered).to match(/Ref1 Relation/)
    expect(rendered).to match(/Ref2 Name/)
    expect(rendered).to match(/Ref2 Relation/)
  end
end
