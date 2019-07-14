class CreateUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :urls do |t|
      t.string  :url
      t.string  :encoded_url
      t.integer :visits, default: 0
      t.string  :title
    end
    add_index :urls, :url, unique:true
    add_index :urls, :encoded_url, unique:true
  end
end
