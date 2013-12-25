require 'spec_helper'

describe "reactions/index" do
  before(:each) do
    assign(:reactions, [
      stub_model(Reaction,
        :title => "Title",
        :image_url => "Image Url",
        :author => "Author"
      ),
      stub_model(Reaction,
        :title => "Title",
        :image_url => "Image Url",
        :author => "Author"
      )
    ])
  end

  it "renders a list of reactions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
  end
end
