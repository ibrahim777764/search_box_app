class CreateSearchAnalytics < ActiveRecord::Migration[7.0]
  def change
    create_table :search_analytics do |t|
      t.string :query
      t.integer :user_id

      t.timestamps
    end
  end
end
