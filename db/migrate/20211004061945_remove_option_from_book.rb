class RemoveOptionFromBook < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :option, :string
  end
end
