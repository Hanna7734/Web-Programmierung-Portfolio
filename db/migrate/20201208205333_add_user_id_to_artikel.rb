class AddUserIdToArtikel < ActiveRecord::Migration[6.0]
  def change
    add_column :artikels, :user_id, :integer
    add_index :artikels, :user_id
  end
end
