class RenameBiographiesToBios < ActiveRecord::Migration[6.0]
  def change
    rename_table :biographies, :bios
  end
end
