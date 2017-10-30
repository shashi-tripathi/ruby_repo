require 'rails_helper'

RSpec.describe "books/index", :type => :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :title => "Title",
        :category => 1,
        :description => "Description",
        :langauge => "",
        :grade => "",
        :subject => "",
        :media_type => "",
        :address => "Address"
      ),
      Book.create!(
        :title => "Title",
        :category => 1,
        :description => "Description",
        :langauge => "",
        :grade => "",
        :subject => "",
        :media_type => "",
        :address => "Address"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
