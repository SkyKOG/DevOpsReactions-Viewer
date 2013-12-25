require 'spec_helper'

describe "reactions/edit" do
  before(:each) do
    @reaction = assign(:reaction, stub_model(Reaction,
      :title => "MyString",
      :image_url => "MyString",
      :author => "MyString"
    ))
  end

  it "renders the edit reaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reaction_path(@reaction), "post" do
      assert_select "input#reaction_title[name=?]", "reaction[title]"
      assert_select "input#reaction_image_url[name=?]", "reaction[image_url]"
      assert_select "input#reaction_author[name=?]", "reaction[author]"
    end
  end
end
