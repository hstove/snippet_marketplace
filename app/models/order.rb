class Order < ActiveRecord::Base
  belongs_to :snippet
  belongs_to :user
  validates_presence_of :amount, :usd_amount, :coinbase_id
end
