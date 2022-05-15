class CreateUrlAssociations < ActiveRecord::Migration[6.1]
  def change
    create_table :url_associations do |t|
      t.string :long_url
      t.string :short_url

      t.timestamps
    end
  end
end
