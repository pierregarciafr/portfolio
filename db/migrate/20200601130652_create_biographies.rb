class CreateBiographies < ActiveRecord::Migration[6.0]
  def change
    create_table :biographies do |t|
      t.string :title
      t.string :content
      t.string :icon

      t.timestamps
    end
  end
end
