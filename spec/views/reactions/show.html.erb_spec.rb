require 'spec_helper'

describe "reactions/show" do
  before(:each) do
    @reaction = assign(:reaction, stub_model(Reaction,
      :title => "Title",
      :image_url => "Image Url",
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Image Url/)
    rendered.should match(/Author/)
  end
end
