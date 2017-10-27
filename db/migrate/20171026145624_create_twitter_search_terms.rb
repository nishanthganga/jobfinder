class CreateTwitterSearchTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :twitter_search_terms do |t|
      t.string :term
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
