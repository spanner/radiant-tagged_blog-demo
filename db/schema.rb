# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100810151922) do

  create_table "assets", :force => true do |t|
    t.string   "caption"
    t.string   "title"
    t.string   "asset_file_name"
    t.string   "asset_content_type"
    t.integer  "asset_file_size"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uuid"
    t.integer  "original_width"
    t.integer  "original_height"
    t.string   "original_extension"
  end

  create_table "config", :force => true do |t|
    t.string "key",   :limit => 40, :default => "", :null => false
    t.string "value",               :default => ""
  end

  add_index "config", ["key"], :name => "key", :unique => true

  create_table "dashboard_links", :force => true do |t|
    t.string   "title"
    t.string   "cssclass"
    t.string   "path"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "extension_meta", :force => true do |t|
    t.string  "name"
    t.integer "schema_version", :default => 0
    t.boolean "enabled",        :default => true
  end

  create_table "forums", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "position"
    t.integer  "lock_version",  :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.integer  "old_id"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.integer  "homepage_id"
    t.integer  "site_id"
    t.integer  "lock_version"
    t.boolean  "public"
    t.text     "invitation"
  end

  create_table "layouts", :force => true do |t|
    t.string   "name",          :limit => 100
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.string   "content_type",  :limit => 40
    t.integer  "lock_version",                 :default => 0
  end

  create_table "memberships", :force => true do |t|
    t.integer "group_id"
    t.integer "reader_id"
  end

  create_table "message_readers", :force => true do |t|
    t.integer  "site_id"
    t.integer  "message_id"
    t.integer  "reader_id"
    t.datetime "sent_at"
  end

  create_table "messages", :force => true do |t|
    t.integer  "site_id"
    t.string   "subject"
    t.text     "body"
    t.text     "filter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.integer  "lock_version"
    t.integer  "group_id"
    t.string   "function_id"
    t.integer  "status_id",     :default => 1
    t.integer  "layout_id"
    t.datetime "sent_at"
  end

  create_table "page_attachments", :force => true do |t|
    t.integer "asset_id"
    t.integer "page_id"
    t.integer "position"
  end

  create_table "page_fields", :force => true do |t|
    t.integer "page_id"
    t.string  "name"
    t.string  "content"
  end

  add_index "page_fields", ["page_id", "name", "content"], :name => "index_page_fields_on_page_id_and_name_and_content"

  create_table "page_parts", :force => true do |t|
    t.string  "name",      :limit => 100
    t.string  "filter_id", :limit => 25
    t.text    "content"
    t.integer "page_id"
  end

  add_index "page_parts", ["page_id", "name"], :name => "parts_by_page"

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.string   "slug",            :limit => 100
    t.string   "breadcrumb",      :limit => 160
    t.string   "class_name",      :limit => 25
    t.integer  "status_id",                      :default => 1,     :null => false
    t.integer  "parent_id"
    t.integer  "layout_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "published_at"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.boolean  "virtual",                        :default => false, :null => false
    t.integer  "lock_version",                   :default => 0
    t.boolean  "commentable",                    :default => true
    t.boolean  "comments_closed",                :default => false
    t.datetime "replied_at"
    t.integer  "replied_by_id"
  end

  add_index "pages", ["class_name"], :name => "pages_class_name"
  add_index "pages", ["parent_id"], :name => "pages_parent_id"
  add_index "pages", ["slug", "parent_id"], :name => "pages_child_slug"
  add_index "pages", ["virtual", "status_id"], :name => "pages_published"

  create_table "permissions", :force => true do |t|
    t.integer "group_id"
    t.integer "permitted_id"
    t.string  "permitted_type"
  end

  create_table "post_attachments", :force => true do |t|
    t.integer  "post_id"
    t.integer  "reader_id"
    t.integer  "position"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "old_id"
  end

  create_table "posts", :force => true do |t|
    t.integer  "reader_id"
    t.integer  "topic_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "old_id"
    t.integer  "page_id"
    t.text     "search_text"
  end

  add_index "posts", ["created_at"], :name => "index_posts_on_forum_id"
  add_index "posts", ["reader_id", "created_at"], :name => "index_posts_on_reader_id"

  create_table "readers", :force => true do |t|
    t.integer  "site_id"
    t.string   "name",                    :limit => 100
    t.string   "email"
    t.string   "login",                   :limit => 40,  :default => "",    :null => false
    t.string   "crypted_password"
    t.text     "description"
    t.text     "notes"
    t.boolean  "trusted",                                :default => true
    t.boolean  "receive_email",                          :default => false
    t.boolean  "receive_essential_email",                :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.string   "password_salt"
    t.string   "session_token"
    t.string   "provisional_password"
    t.datetime "activated_at"
    t.string   "honorific"
    t.integer  "user_id"
    t.datetime "last_request_at"
    t.datetime "last_login_at"
    t.string   "persistence_token",                      :default => "",    :null => false
    t.string   "single_access_token",                    :default => "",    :null => false
    t.string   "perishable_token",                       :default => "",    :null => false
    t.integer  "login_count",                            :default => 0,     :null => false
    t.integer  "failed_login_count",                     :default => 0,     :null => false
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "clear_password"
    t.string   "forename"
    t.string   "phone"
    t.string   "organisation"
    t.string   "post_building"
    t.string   "post_street"
    t.string   "post_place"
    t.string   "post_town"
    t.string   "post_county"
    t.string   "postcode"
    t.integer  "posts_count",                            :default => 0
    t.integer  "old_id"
  end

  add_index "readers", ["session_token"], :name => "session_token"

  create_table "sessions", :force => true do |t|
    t.string   "session_id"
    t.text     "data"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "snippets", :force => true do |t|
    t.string   "name",          :limit => 100, :default => "", :null => false
    t.string   "filter_id",     :limit => 25
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.integer  "lock_version",                 :default => 0
  end

  add_index "snippets", ["name"], :name => "name", :unique => true

  create_table "taggings", :force => true do |t|
    t.integer "tag_id"
    t.string  "tagged_type"
    t.integer "tagged_id"
  end

  add_index "taggings", ["tag_id", "tagged_id", "tagged_type"], :name => "index_taggings_on_tag_id_and_tagged_id_and_tagged_type", :unique => true

  create_table "tags", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "site_id"
    t.integer  "page_id"
    t.boolean  "visible",             :default => true
    t.string   "metaphone"
    t.string   "metaphone_secondary"
  end

  add_index "tags", ["title"], :name => "index_tags_on_title", :unique => true

  create_table "topics", :force => true do |t|
    t.integer  "forum_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "replied_at"
    t.integer  "hits",          :default => 0
    t.boolean  "sticky",        :default => false
    t.boolean  "locked",        :default => false
    t.integer  "replied_by_id"
    t.integer  "old_id"
  end

  add_index "topics", ["forum_id", "replied_at"], :name => "index_topics_on_forum_id_and_replied_at"
  add_index "topics", ["forum_id", "sticky", "replied_at"], :name => "index_topics_on_sticky_and_replied_at"
  add_index "topics", ["forum_id"], :name => "index_topics_on_forum_id"

  create_table "users", :force => true do |t|
    t.string   "name",          :limit => 100
    t.string   "email"
    t.string   "login",         :limit => 40,  :default => "",    :null => false
    t.string   "password",      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.boolean  "admin",                        :default => false, :null => false
    t.boolean  "designer",                     :default => false, :null => false
    t.text     "notes"
    t.integer  "lock_version",                 :default => 0
    t.string   "salt"
    t.string   "session_token"
    t.string   "locale"
    t.text     "bio"
    t.string   "bio_filter_id", :limit => 25
    t.string   "blog_location"
  end

  add_index "users", ["login"], :name => "login", :unique => true

end
