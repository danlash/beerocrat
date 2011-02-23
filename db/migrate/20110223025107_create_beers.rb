#:primary_key, :string, :text, :integer, :float, :decimal, :datetime, :timestamp, :time, :date, :binary, :boolean

class CreateBeers < ActiveRecord::Migration
  def self.up
    create_table :beers do |t|
      t.string :name
      t.string :brewery
      t.string :origin
      t.string :picture
      t.string :website
      t.date :date_tapped
      t.date :date_emptied
      t.integer :alcohol
      t.string :requested_by
      t.string :emptied_by

      t.timestamps
    end
  end

  def self.down
    drop_table :beers
  end
end
