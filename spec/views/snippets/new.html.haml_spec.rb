require 'spec_helper'

describe "snippets/new" do
  before(:each) do
    assign(:snippet, stub_model(Snippet,
      :code => "MyText",
      :title => "MyString",
      :price => 1.5
    ).as_new_record)
  end

  it "renders new snippet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", snippets_path, "post" do
      assert_select "textarea#snippet_code[name=?]", "snippet[code]"
      assert_select "input#snippet_title[name=?]", "snippet[title]"
      assert_select "input#snippet_price[name=?]", "snippet[price]"
    end
  end
end
