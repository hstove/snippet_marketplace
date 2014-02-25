require 'spec_helper'

describe "snippets/show" do
  before(:each) do
    @snippet = assign(:snippet, stub_model(Snippet,
      :code => "MyText",
      :title => "Title",
      :price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Title/)
    rendered.should match(/1.5/)
  end
end
