class CreateCOmments < ActiveRecord::Migration[5.1]
  def change
    create_table :c_omments do |t|
      t.string :name
      t.reference :posts

      t.timestamps
    end
  end
end
