class AddSlugToTwitterSearchTerm < ActiveRecord::Migration[5.1]
  def change
    add_column :twitter_search_terms, :slug, :string
  end
end