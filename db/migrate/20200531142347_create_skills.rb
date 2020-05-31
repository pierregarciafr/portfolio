class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :iconName
      t.string :text

      t.timestamps
    end
  end
end
