class AddHighlightToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :highlight, :boolean, default: false
  end
end
