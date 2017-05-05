class CreateAuthTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :auth_tokens do |t|
      t.integer :user_id
      t.string :auth_token

      t.timestamps
    end
  end
end
