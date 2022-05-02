class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news, id: :uuid  do |t|
      t.string :title
      t.string :description
      t.string :content

      t.timestamps
    end
  end
end

