class AddIndexToUrlAssociations < ActiveRecord::Migration[6.1]
  def change
    add_index :url_associations, :short_url
  end
end
