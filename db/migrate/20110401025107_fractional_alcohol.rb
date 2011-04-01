class FractionalAlcohol < ActiveRecord::Migration
  def self.up
    alter_table :beers do |t|
      t.decimal :alcohol #this doesnt seem to work!
    end
  end

  def self.down
    alter_table :beers do |t|
    	t.integer :alcohol
    end
  end
end
