require 'spec_helper'

describe Order do
  it { should validate_presence_of(:coinbase_id) }
  it { should validate_presence_of(:coinbase_code) }
  it { should validate_presence_of(:amount) }
  it { should validate_presence_of(:usd_amount) }

  it { should belong_to(:user) }
  it { should belong_to(:snippet) }
end
