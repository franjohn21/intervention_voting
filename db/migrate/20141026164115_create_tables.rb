class CreateTables < ActiveRecord::Migration
  def change
  	create_table :cards do |t|
  		t.string :content
  		t.string :created_by
  	end

  	create_table :card_pairs do |t|
  		t.references :card
  		t.references :loser
  		t.boolean :both_suck, :default => false

  		t.timestamps
  	end
  end
end
