class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :login
      t.string :avatar_url
      t.string :url
      t.string :followers_url
      t.string :subscriptions_url
      t.string :events_url

      t.timestamps
    end
  end
end