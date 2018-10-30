class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|
      t.string :token
      t.references :user

      t.timestamps null: false
    end
		add_index :api_keys, [:user_id, :token]
  end
end
