class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :from
      t.string :object
      t.string :content

      t.timestamps
    end
  end
end
