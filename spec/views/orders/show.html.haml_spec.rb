require 'spec_helper'

describe "orders/show" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :snippet_id => 1,
      :user_id => 2,
      :amount => 1.5,
      :usd_amount => 1.5,
      :coinbase_id => "Coinbase",
      :coinbase_code => "Coinbase Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Coinbase/)
    rendered.should match(/Coinbase Code/)
  end
end
