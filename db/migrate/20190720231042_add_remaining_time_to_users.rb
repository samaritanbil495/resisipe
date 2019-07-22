class AddRemainingTimeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :remainingTime, :integer
  end
end
