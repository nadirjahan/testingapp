class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
     # t.database_authenticatable :null => false
      t.string :email,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""
      t.boolean :recoverable , :default => false
      t.boolean :rememberable   , :default => false
      t.boolean :trackable              , :default => false
      t.string :username

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
    # add_index :users, :confirmation_token,   :unique => true
    # add_index :users, :unlock_token,         :unique => true
    # add_index :users, :authentication_token, :unique => true
  end

  def self.down
    drop_table :users
  end
end
