require 'rails_helper'

RSpec.describe "educations/show", :type => :view do
  before(:each) do
    @education = assign(:education, Education.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Institue City/)
    expect(rendered).to match(/Institute Website/)
    expect(rendered).to match(/Institute Email/)
    expect(rendered).to match(/Institute Phone/)
    expect(rendered).to match(/Teacher Name/)
    expect(rendered).to match(/Teach Email/)
    expect(rendered).to match(/Teacher Phone/)
    expect(rendered).to match(/6/)
  end
end
