class ChangePriceToInteger < ActiveRecord::Migration
  def change
    change_column :snippets, :price, :integer
  end
end
