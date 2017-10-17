# #   create_table "songs", force: :cascade do |t|
#     t.string   "title"
#     t.boolean  "released"
#     t.integer  "release_year"
#     t.string   "artist_name"
#     t.string   "genre"
#     t.datetime "created_at",   null: false
#     t.datetime "updated_at",   null: false
#   end

Song.create(title: "New Song 1", released: true, release_year: "2001", artist_name: "Tim Tam", genre: "Rap")
Song.create(title: "New Song 2", released: false, release_year: "2002", artist_name: "Jim Jam", genre: "Hip-Hop")
Song.create(title: "New Song 3", released: true, release_year: "2003", artist_name: "Dim Dam", genre: "Country")
