class AddPosttablesReferenceToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :posttables, foreign_key: true
  end
end
