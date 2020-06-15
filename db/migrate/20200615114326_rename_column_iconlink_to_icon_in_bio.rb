class RenameColumnIconlinkToIconInBio < ActiveRecord::Migration[6.0]
  def change
    rename_column :bios, :iconLink, :icon
  end
end
