class AddSecondNameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :second_name, :string
  end
end
