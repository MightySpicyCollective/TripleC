class CreateUsers < ActiveRecord::Migration
	# def change
	def up
		create_table :users do |t|
			# ids are created automatically for every table by Rails
			# If you don't want it:
			# create_table :users, {:id => false} do |t|

			# t.column "name", :type, options
			# You could also do t.string "user_id", options
			t.column "login", :string, :limit => 12
			t.string "password", :limit => 12
			t.integer "role", :default => 0
			t.boolean "status", :default => true

			# These are Rails defaults! It'll populate them for us!
			# t.datetime "created_at"
			# t.datetime "updated_at"
			# t.timestamps create them for us
			t.timestamps null: false
		end
	end

	def down
		drop_table :users
	end
end
