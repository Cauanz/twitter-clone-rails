class AddRetweetToTweets < ActiveRecord::Migration[8.1]
  def change
    add_column :tweets, :retweet_id, :integer
  end
end
