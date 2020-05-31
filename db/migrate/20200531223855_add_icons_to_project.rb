class AddIconsToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :icons, :text, array: true, default: []
  end
end
