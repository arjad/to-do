class CreatePosttables < ActiveRecord::Migration[5.1]
  def change
    create_table :posttables do |t|
      t.string :title
      t.text :descp

      t.timestamps
    end
  end
end
