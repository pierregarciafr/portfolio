class AddActivateToSkill < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :activate, :boolean
  end
end
