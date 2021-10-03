class AddDetailToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :title, :text
    add_column :books, :option, :string
  end
end
