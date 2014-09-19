require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :snippet_id => 1,
      :user_id => 1,
      :amount => 1.5,
      :usd_amount => 1.5,
      :coinbase_id => "MyString",
      :coinbase_code => "MyString"
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", orders_path, "post" do
      assert_select "input#order_snippet_id[name=?]", "order[snippet_id]"
      assert_select "input#order_user_id[name=?]", "order[user_id]"
      assert_select "input#order_amount[name=?]", "order[amount]"
      assert_select "input#order_usd_amount[name=?]", "order[usd_amount]"
      assert_select "input#order_coinbase_id[name=?]", "order[coinbase_id]"
      assert_select "input#order_coinbase_code[name=?]", "order[coinbase_code]"
    end
  end
end
