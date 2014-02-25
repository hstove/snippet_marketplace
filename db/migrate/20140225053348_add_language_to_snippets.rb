class AddLanguageToSnippets < ActiveRecord::Migration
  def change
    add_column :snippets, :language, :string
    add_column :snippets, :description, :text
  end
end
