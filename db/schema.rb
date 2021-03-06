# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140901151741) do

  create_table "accounts", :force => true do |t|
    t.string   "nickname",                                 :null => false
    t.boolean  "enabled",                :default => true, :null => false
    t.string   "email",                  :default => "",   :null => false
    t.string   "encrypted_password",     :default => "",   :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "roles_mask"
  end

  add_index "accounts", ["authentication_token"], :name => "index_accounts_on_authentication_token", :unique => true
  add_index "accounts", ["confirmation_token"], :name => "index_accounts_on_confirmation_token", :unique => true
  add_index "accounts", ["email"], :name => "index_accounts_on_email", :unique => true
  add_index "accounts", ["reset_password_token"], :name => "index_accounts_on_reset_password_token", :unique => true
  add_index "accounts", ["unlock_token"], :name => "index_accounts_on_unlock_token", :unique => true

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "api_keys", :force => true do |t|
    t.string   "access_token"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "board_messages", :force => true do |t|
    t.string   "title",      :null => false
    t.text     "message",    :null => false
    t.integer  "sender_id",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "boards", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "drop_sets", :force => true do |t|
    t.string   "name",                         :null => false
    t.boolean  "enabled",    :default => true, :null => false
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "drop_sets_drops", :id => false, :force => true do |t|
    t.integer "drop_id",     :default => 0, :null => false
    t.integer "drop_set_id", :default => 0, :null => false
  end

  create_table "drop_sets_mobs", :id => false, :force => true do |t|
    t.integer "drop_set_id", :default => 0, :null => false
    t.integer "mob_id",      :default => 0, :null => false
  end

  create_table "drops", :force => true do |t|
    t.decimal "chance",       :precision => 10, :scale => 8, :default => 1.0, :null => false
    t.integer "item_id",                                                      :null => false
    t.integer "min_quantity",                                :default => 0,   :null => false
    t.integer "max_quantity",                                :default => 1,   :null => false
  end

  create_table "drops_item_variants", :id => false, :force => true do |t|
    t.integer "drop_id",         :null => false
    t.integer "item_variant_id", :null => false
  end

  create_table "drops_mobs", :id => false, :force => true do |t|
    t.integer "drop_id", :default => 0, :null => false
    t.integer "mob_id",  :default => 0, :null => false
  end

  create_table "entities", :force => true do |t|
    t.string   "uuid"
    t.string   "data"
    t.boolean  "dirty"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "flags", :force => true do |t|
    t.string   "name",        :null => false
    t.string   "description", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "flags_players", :id => false, :force => true do |t|
    t.integer "flag_id",   :null => false
    t.integer "player_id", :null => false
  end

  create_table "item_variants", :force => true do |t|
    t.string   "name",                                     :null => false
    t.string   "modifier",                                 :null => false
    t.string   "effect_script_name"
    t.string   "weight"
    t.string   "max_stack"
    t.string   "max_durability"
    t.string   "hp"
    t.string   "mp"
    t.string   "str"
    t.string   "int"
    t.string   "wis"
    t.string   "con"
    t.string   "dex"
    t.string   "hit"
    t.string   "ac"
    t.string   "dmg"
    t.string   "mr"
    t.string   "max_s_dmg"
    t.string   "min_s_dmg"
    t.string   "max_l_dmg"
    t.string   "min_l_dmg"
    t.string   "value"
    t.string   "regen"
    t.integer  "level"
    t.integer  "ab"
    t.integer  "element"
    t.integer  "bodystyle",             :default => 1,     :null => false
    t.integer  "color"
    t.boolean  "enchantable",           :default => false
    t.boolean  "depositable",           :default => true
    t.boolean  "bound",                 :default => false
    t.boolean  "vendorable",            :default => true
    t.boolean  "tailorable",            :default => false
    t.boolean  "smithable",             :default => false
    t.boolean  "consecratable",         :default => false
    t.boolean  "perishable",            :default => true
    t.boolean  "exchangeable",          :default => true
    t.boolean  "consecratable_variant", :default => false
    t.boolean  "tailorable_variant",    :default => false
    t.boolean  "smithable_variant",     :default => false
    t.boolean  "enchantable_variant",   :default => false
    t.boolean  "elemental_variant",     :default => false
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "item_variants_items", :id => false, :force => true do |t|
    t.integer "item_id",         :null => false
    t.integer "item_variant_id", :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "name",                                                         :null => false
    t.integer  "sprite",                                                       :null => false
    t.integer  "equip_sprite",                              :default => -1,    :null => false
    t.integer  "display_sprite"
    t.integer  "bodystyle",                                 :default => 0,     :null => false
    t.integer  "item_type",                                                    :null => false
    t.integer  "weapon_type"
    t.integer  "equip_slot"
    t.integer  "weight",                                    :default => 0,     :null => false
    t.integer  "max_stack",                                 :default => 1,     :null => false
    t.integer  "max_durability",                            :default => 0,     :null => false
    t.integer  "level",                                     :default => 0,     :null => false
    t.integer  "ab",                                        :default => 0,     :null => false
    t.integer  "class_type",                                :default => 0
    t.integer  "sex",                                       :default => 0,     :null => false
    t.integer  "hp",                                        :default => 0,     :null => false
    t.integer  "mp",                                        :default => 0,     :null => false
    t.integer  "str",                                       :default => 0,     :null => false
    t.integer  "int",                                       :default => 0,     :null => false
    t.integer  "wis",                                       :default => 0,     :null => false
    t.integer  "con",                                       :default => 0,     :null => false
    t.integer  "dex",                                       :default => 0,     :null => false
    t.integer  "hit",                                       :default => 0,     :null => false
    t.integer  "dmg",                                       :default => 0,     :null => false
    t.integer  "ac",                                        :default => 0,     :null => false
    t.integer  "mr",                                        :default => 0,     :null => false
    t.integer  "element",                                   :default => 0,     :null => false
    t.integer  "max_s_dmg",                                 :default => 0,     :null => false
    t.integer  "min_s_dmg",                                 :default => 0,     :null => false
    t.integer  "max_l_dmg",                                 :default => 0,     :null => false
    t.integer  "min_l_dmg",                                 :default => 0,     :null => false
    t.integer  "value",                                     :default => 0,     :null => false
    t.integer  "color",                                     :default => 0,     :null => false
    t.integer  "regen",                                     :default => 0,     :null => false
    t.boolean  "bound",                                     :default => false, :null => false
    t.boolean  "depositable",                               :default => true,  :null => false
    t.boolean  "enchantable",                               :default => false, :null => false
    t.boolean  "consecratable",                             :default => false, :null => false
    t.boolean  "tailorable",                                :default => false, :null => false
    t.boolean  "smithable",                                 :default => false, :null => false
    t.boolean  "exchangeable",                              :default => true,  :null => false
    t.boolean  "has_enchantable_variants",                  :default => false, :null => false
    t.boolean  "has_consecratable_variants",                :default => false, :null => false
    t.boolean  "has_tailorable_variants",                   :default => false, :null => false
    t.boolean  "has_smithable_variants",                    :default => false, :null => false
    t.boolean  "has_elemental_variants",                    :default => false, :null => false
    t.datetime "created_at",                                                   :null => false
    t.datetime "updated_at",                                                   :null => false
    t.boolean  "vendorable",                                :default => true
    t.string   "script_name"
    t.boolean  "perishable",                                :default => false
    t.integer  "max_dmg"
    t.string   "shoptab",                    :limit => 8
    t.string   "shopdesc",                   :limit => 254
    t.boolean  "unique_equipped",                           :default => false, :null => false
    t.boolean  "unique",                                    :default => false, :null => false
    t.boolean  "consumed_on_use",                           :default => true,  :null => false
    t.integer  "teleport_destination"
    t.boolean  "master_only",                               :default => false, :null => false
  end

  create_table "legend_marks", :force => true do |t|
    t.integer  "player_id",                    :null => false
    t.string   "prefix",                       :null => false
    t.integer  "color",      :default => 16,   :null => false
    t.integer  "icon",       :default => 0,    :null => false
    t.string   "text",                         :null => false
    t.boolean  "public",     :default => true, :null => false
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "maps", :force => true do |t|
    t.integer  "size_x",                    :null => false
    t.integer  "size_y",                    :null => false
    t.string   "name",                      :null => false
    t.integer  "flags",      :default => 0, :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "music"
  end

  create_table "messages", :force => true do |t|
    t.integer  "index",        :default => 0, :null => false
    t.string   "title",                       :null => false
    t.text     "message",                     :null => false
    t.integer  "recipient_id",                :null => false
    t.integer  "sender_id",                   :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "mobs", :force => true do |t|
    t.string   "name",                              :null => false
    t.integer  "sprite",                            :null => false
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "level",            :default => 1,   :null => false
    t.integer  "min_dmg",          :default => 1,   :null => false
    t.integer  "max_dmg",          :default => 1,   :null => false
    t.integer  "mr",               :default => 0,   :null => false
    t.integer  "ac",               :default => 100, :null => false
    t.float    "force_multiplier", :default => 1.0, :null => false
    t.integer  "off_element",      :default => 0,   :null => false
    t.integer  "def_element",      :default => 0,   :null => false
    t.integer  "exp",              :default => 0,   :null => false
    t.integer  "gold",             :default => 0,   :null => false
    t.string   "description"
    t.string   "script_name"
  end

  create_table "nations", :force => true do |t|
    t.integer  "flag",        :null => false
    t.string   "name",        :null => false
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "news_posts", :force => true do |t|
    t.integer  "account_id", :null => false
    t.string   "title",      :null => false
    t.text     "post",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.datetime "post_date"
  end

  add_index "news_posts", ["account_id"], :name => "index_news_posts_on_account_id"

  create_table "npcs", :force => true do |t|
    t.string   "name",                        :null => false
    t.integer  "sprite",                      :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "map_id",                      :null => false
    t.integer  "map_x",                       :null => false
    t.integer  "map_y",                       :null => false
    t.integer  "direction",    :default => 0, :null => false
    t.text     "display_text"
    t.integer  "jobs",         :default => 0, :null => false
    t.string   "portrait"
  end

  create_table "players", :force => true do |t|
    t.integer  "account_id"
    t.string   "name",                                            :null => false
    t.string   "password_hash"
    t.integer  "sex",                                             :null => false
    t.integer  "hairstyle",                                       :null => false
    t.integer  "haircolor",                                       :null => false
    t.integer  "map_id"
    t.integer  "map_x"
    t.integer  "map_y"
    t.integer  "direction",                     :default => 0,    :null => false
    t.integer  "class_type",                    :default => 0,    :null => false
    t.integer  "level",                         :default => 1,    :null => false
    t.integer  "exp",                           :default => 0,    :null => false
    t.integer  "ab",                            :default => 0,    :null => false
    t.integer  "ab_exp",                        :default => 0,    :null => false
    t.integer  "max_hp",                        :default => 50,   :null => false
    t.integer  "max_mp",                        :default => 50,   :null => false
    t.integer  "cur_hp",                        :default => 50,   :null => false
    t.integer  "cur_mp",                        :default => 50,   :null => false
    t.integer  "str",                           :default => 3,    :null => false
    t.integer  "int",                           :default => 3,    :null => false
    t.integer  "wis",                           :default => 3,    :null => false
    t.integer  "con",                           :default => 3,    :null => false
    t.integer  "dex",                           :default => 3,    :null => false
    t.string   "equipment",     :limit => 8192, :default => "[]", :null => false
    t.string   "inventory",     :limit => 8192, :default => "[]", :null => false
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
    t.integer  "nation_id"
    t.datetime "last_login"
    t.datetime "last_logoff"
    t.integer  "gold",                          :default => 0,    :null => false
    t.integer  "level_points",                  :default => 0,    :null => false
  end

  add_index "players", ["account_id"], :name => "index_players_on_account_id"
  add_index "players", ["map_id"], :name => "index_players_on_map_id"

  create_table "reactors", :force => true do |t|
    t.string   "name",                           :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "map_id",                         :null => false
    t.integer  "map_x",                          :null => false
    t.integer  "map_y",                          :null => false
    t.string   "script_name"
    t.boolean  "blocking",    :default => false, :null => false
  end

  create_table "signposts", :force => true do |t|
    t.integer  "map_id",                             :null => false
    t.integer  "map_x",                              :null => false
    t.integer  "map_y",                              :null => false
    t.text     "message",                            :null => false
    t.boolean  "is_messageboard", :default => false, :null => false
    t.integer  "board_id"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "signposts", ["board_id"], :name => "index_signposts_on_board_id"
  add_index "signposts", ["map_id"], :name => "index_signposts_on_map_id"

  create_table "skills", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "sprite",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "spawn_points", :force => true do |t|
    t.integer  "map_id",     :null => false
    t.integer  "map_x",      :null => false
    t.integer  "map_y",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "nation_id",  :null => false
  end

  create_table "spawns", :force => true do |t|
    t.integer "mob_id",                  :null => false
    t.integer "map_id",                  :null => false
    t.integer "quantity", :default => 0, :null => false
    t.integer "ticks",    :default => 1, :null => false
  end

  create_table "spells", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "sprite",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "vendor_items", :force => true do |t|
    t.integer "npc_id",  :null => false
    t.integer "item_id", :null => false
  end

  add_index "vendor_items", ["item_id"], :name => "index_vendor_items_on_item_id"
  add_index "vendor_items", ["npc_id"], :name => "index_vendor_items_on_npc_id"

  create_table "warps", :force => true do |t|
    t.string   "source_x",                      :null => false
    t.string   "source_y",                      :null => false
    t.string   "target_x",                      :null => false
    t.string   "target_y",                      :null => false
    t.integer  "max_lev",                       :null => false
    t.integer  "min_lev",                       :null => false
    t.integer  "min_ab",                        :null => false
    t.boolean  "mob_use",    :default => false, :null => false
    t.integer  "source_id",                     :null => false
    t.integer  "target_id",                     :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "worldmap_points", :force => true do |t|
    t.string   "name",                          :null => false
    t.integer  "worldmap_id",                   :null => false
    t.integer  "map_x",                         :null => false
    t.integer  "map_y",                         :null => false
    t.integer  "target_map_id",                 :null => false
    t.integer  "target_x",                      :null => false
    t.integer  "target_y",                      :null => false
    t.integer  "min_lev",       :default => 1,  :null => false
    t.integer  "max_lev",       :default => 99, :null => false
    t.integer  "min_ab",        :default => 0,  :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "worldmap_points", ["target_map_id"], :name => "index_worldmap_points_on_target_map_id"
  add_index "worldmap_points", ["worldmap_id"], :name => "index_worldmap_points_on_worldmap_id"

  create_table "worldmaps", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "client_map", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "worldwarps", :force => true do |t|
    t.integer  "target_worldmap_id", :null => false
    t.integer  "min_lev",            :null => false
    t.integer  "max_lev",            :null => false
    t.integer  "min_ab",             :null => false
    t.string   "source_x",           :null => false
    t.string   "source_y",           :null => false
    t.integer  "source_map_id",      :null => false
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "worldwarps", ["source_map_id"], :name => "index_worldwarps_on_source_map_id"
  add_index "worldwarps", ["target_worldmap_id"], :name => "index_worldwarps_on_target_worldmap_id"

end
