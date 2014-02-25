class AddUserIdToSnippets < ActiveRecord::Migration
  def change
    add_column :snippets, :user_id, :int
  end
end
