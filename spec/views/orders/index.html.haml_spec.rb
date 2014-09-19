require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :snippet_id => 1,
        :user_id => 2,
        :amount => 1.5,
        :usd_amount => 1.5,
        :coinbase_id => "Coinbase",
        :coinbase_code => "Coinbase Code"
      ),
      stub_model(Order,
        :snippet_id => 1,
        :user_id => 2,
        :amount => 1.5,
        :usd_amount => 1.5,
        :coinbase_id => "Coinbase",
        :coinbase_code => "Coinbase Code"
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Coinbase".to_s, :count => 2
    assert_select "tr>td", :text => "Coinbase Code".to_s, :count => 2
  end
end
