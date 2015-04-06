class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
		t.string "name", :limit => 50
		t.string "city", :limit => 20
		t.string "country", :limit => 20
		t.timestamps null: false
    end
    add_index("schools", "name")
  end
end
