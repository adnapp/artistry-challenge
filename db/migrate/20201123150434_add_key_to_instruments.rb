class AddKeyToInstruments < ActiveRecord::Migration[5.2]
  def change
    add_column :instruments, :artist_id, :integer
  end
end
