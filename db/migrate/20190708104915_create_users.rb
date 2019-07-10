class CreateUsers < ActiveRecord::Migration[5.2]
  def change
	  create_table "users", id: :serial, force: :cascade do |t|
	    t.string "email"
	    t.string "password_digest"
	    t.string "name"
	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
	    t.index ["email"], name: "index_users_on_email"
	  end
  end
end
