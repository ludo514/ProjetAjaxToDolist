class AjoutIsRead < ActiveRecord::Migration[5.2]
  def change
  	add_column :emails, :is_read, :boolean
  end
end
