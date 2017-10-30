require 'rails_helper'

RSpec.describe "books/new", :type => :view do
  before(:each) do
    assign(:book, Book.new(
      :title => "MyString",
      :category => 1,
      :description => "MyString",
      :langauge => "",
      :grade => "",
      :subject => "",
      :media_type => "",
      :address => "MyString"
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "input#book_category[name=?]", "book[category]"

      assert_select "input#book_description[name=?]", "book[description]"

      assert_select "input#book_langauge[name=?]", "book[langauge]"

      assert_select "input#book_grade[name=?]", "book[grade]"

      assert_select "input#book_subject[name=?]", "book[subject]"

      assert_select "input#book_media_type[name=?]", "book[media_type]"

      assert_select "input#book_address[name=?]", "book[address]"
    end
  end
end
