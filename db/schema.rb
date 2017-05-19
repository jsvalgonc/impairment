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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170518170354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acontracts", force: :cascade do |t|
    t.date     "BalanceSheetDate"
    t.string   "ContractPortfolio"
    t.string   "ContractReference"
    t.string   "HoldingPartyReference"
    t.string   "BPN_Balcao"
    t.string   "PartyReference"
    t.string   "Classe"
    t.string   "ProductClass"
    t.string   "ProductComponent"
    t.string   "AccountNature"
    t.string   "AccountType"
    t.date     "OriginDate"
    t.date     "MaturityDate"
    t.date     "IrrecoverableDate"
    t.string   "Currency"
    t.decimal  "Balance"
    t.decimal  "DrawnAmount"
    t.decimal  "UndrawnAmount"
    t.decimal  "Principal"
    t.decimal  "AccruedInterestAtBSD"
    t.decimal  "LossClass"
    t.decimal  "TaxaNominal"
    t.decimal  "TIR"
    t.string   "TipoCredito"
    t.string   "TipoGarantia"
    t.string   "TipoCliente"
    t.string   "CurrentDelay"
    t.string   "ISMitigant"
    t.decimal  "BPN_PercentagemCartao"
    t.decimal  "BPN_Val_Fee"
    t.string   "IsMortgage"
    t.decimal  "BPN_Val1_CapVin"
    t.decimal  "BPN_Val2_CapVen"
    t.decimal  "BPN_Val3_CapAbt"
    t.decimal  "BPN_Val5_JrsVen"
    t.decimal  "BPN_Val6_JrsAnl"
    t.decimal  "BPN_Val7_PrvRGC"
    t.decimal  "BPN_Val8_PrvEco"
    t.decimal  "BPN_Val9_PrvCrV"
    t.decimal  "BPN_Val10_PrvCCD"
    t.decimal  "BPN_Val11_PrvRP"
    t.decimal  "BPN_Val13_GarPre"
    t.string   "BPN_AccRef1"
    t.string   "BPN_AccRef2"
    t.string   "BPN_AccRef3"
    t.string   "BPN_AccRef4_AccruedInterestAtBSD"
    t.string   "BPN_AccRef5"
    t.string   "BPN_AccRef6"
    t.string   "BPN_AccRef7"
    t.string   "BPN_AccRef8"
    t.string   "BPN_AccRef9"
    t.string   "BPN_AccRef10"
    t.string   "BPN_AccRef11"
    t.string   "BPN_AccRef12_UndrawnAmount"
    t.string   "BPN_AccRef13"
    t.integer  "party_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "aparty_id"
    t.integer  "AIISelected"
    t.integer  "company_id"
    t.integer  "month_id"
    t.integer  "aiiselected"
  end

  add_index "acontracts", ["BalanceSheetDate", "HoldingPartyReference", "ContractReference", "ContractPortfolio"], name: "index_acontracts_primary_key", using: :btree
  add_index "acontracts", ["aparty_id"], name: "index_acontracts_on_aparty_id", using: :btree
  add_index "acontracts", ["company_id"], name: "index_acontracts_on_company_id", using: :btree
  add_index "acontracts", ["month_id"], name: "index_acontracts_on_month_id", using: :btree
  add_index "acontracts", ["party_id"], name: "index_acontracts_on_party_id", using: :btree

  create_table "allocations", force: :cascade do |t|
    t.decimal  "number"
    t.decimal  "priority"
    t.string   "ruleTipe"
    t.string   "balcao"
    t.integer  "grupo_analise_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "allocations", ["grupo_analise_id"], name: "index_allocations_on_grupo_analise_id", using: :btree

  create_table "amitigants", force: :cascade do |t|
    t.date     "BalanceSheetDate"
    t.string   "HoldingPartyReference"
    t.string   "ContractReference"
    t.string   "MitigantReference"
    t.decimal  "MitigantBalance"
    t.string   "MitigantType"
    t.string   "Componente"
    t.integer  "acontract_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "month_id"
    t.integer  "company_id"
  end

  add_index "amitigants", ["BalanceSheetDate", "HoldingPartyReference", "ContractReference", "MitigantReference"], name: "index_amitigants_primary_key", using: :btree
  add_index "amitigants", ["acontract_id"], name: "index_amitigants_on_acontract_id", using: :btree

  create_table "answers", force: :cascade do |t|
    t.integer  "aparty_id"
    t.integer  "question_id"
    t.integer  "answer"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "answer_type"
    t.integer  "company_id"
    t.text     "month"
  end

  create_table "aparties", force: :cascade do |t|
    t.date     "BalanceSheetDate"
    t.string   "HoldingPartyReference"
    t.string   "PartyReference"
    t.string   "PartyDescription"
    t.string   "NIF"
    t.string   "ActivitySector"
    t.string   "CountryCode"
    t.string   "SectorialCode"
    t.string   "PartyType"
    t.string   "Balcao"
    t.string   "ZipCode"
    t.string   "CodigoVigilanciaEspecial"
    t.string   "PartyGroupReference"
    t.decimal  "TotalGroupExposure"
    t.decimal  "TotalPartyExposure"
    t.decimal  "BPN_OverdueCredit"
    t.decimal  "BPN_ReturnedCheques"
    t.decimal  "BPN_OverdueCreditOther"
    t.decimal  "BPN_BdPDefault"
    t.decimal  "BPN_OverdueCreditBPNOther"
    t.string   "NPLTeam"
    t.string   "NPLTeamLeader"
    t.string   "AssetManager"
    t.string   "LegalManager"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "aasm_state"
    t.integer  "AISelected",                default: 0
    t.integer  "company_id"
    t.integer  "month_id"
    t.integer  "grupo_analise_id"
    t.integer  "user_id"
  end

  add_index "aparties", ["BalanceSheetDate", "HoldingPartyReference", "PartyReference"], name: "index_aparties_primary_key", using: :btree
  add_index "aparties", ["company_id"], name: "index_aparties_on_company_id", using: :btree
  add_index "aparties", ["grupo_analise_id"], name: "index_aparties_on_grupo_analise_id", using: :btree
  add_index "aparties", ["month_id"], name: "index_aparties_on_month_id", using: :btree
  add_index "aparties", ["user_id"], name: "index_aparties_on_user_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "CompanyCode"
    t.string   "Description"
    t.integer  "CompanyStatus"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.date     "BalanceSheetDate"
    t.string   "ContractPortfolio"
    t.string   "ContractReference"
    t.string   "HoldingPartyReference"
    t.string   "BPN_Balcao"
    t.string   "PartyReference"
    t.string   "Classe"
    t.string   "ProductClass"
    t.string   "ProductComponent"
    t.string   "AccountNature"
    t.string   "AccountType"
    t.date     "OriginDate"
    t.date     "MaturityDate"
    t.date     "IrrecoverableDate"
    t.string   "Currency"
    t.decimal  "Balance"
    t.decimal  "DrawnAmount"
    t.decimal  "UndrawnAmount"
    t.decimal  "Principal"
    t.decimal  "AccruedInterestAtBSD"
    t.decimal  "LossClass"
    t.decimal  "TaxaNominal"
    t.decimal  "TIR"
    t.string   "TipoCredito"
    t.string   "TipoGarantia"
    t.string   "TipoCliente"
    t.string   "CurrentDelay"
    t.string   "ISMitigant"
    t.decimal  "BPN_PercentagemCartao"
    t.decimal  "BPN_Val_Fee"
    t.string   "IsMortgage"
    t.decimal  "BPN_Val1_CapVin"
    t.decimal  "BPN_Val2_CapVen"
    t.decimal  "BPN_Val3_CapAbt"
    t.decimal  "BPN_Val5_JrsVen"
    t.decimal  "BPN_Val6_JrsAnl"
    t.decimal  "BPN_Val7_PrvRGC"
    t.decimal  "BPN_Val8_PrvEco"
    t.decimal  "BPN_Val9_PrvCrV"
    t.decimal  "BPN_Val10_PrvCCD"
    t.decimal  "BPN_Val11_PrvRP"
    t.decimal  "BPN_Val13_GarPre"
    t.string   "BPN_AccRef1"
    t.string   "BPN_AccRef2"
    t.string   "BPN_AccRef3"
    t.string   "BPN_AccRef4_AccruedInterestAtBSD"
    t.string   "BPN_AccRef5"
    t.string   "BPN_AccRef6"
    t.string   "BPN_AccRef7"
    t.string   "BPN_AccRef8"
    t.string   "BPN_AccRef9"
    t.string   "BPN_AccRef10"
    t.string   "BPN_AccRef11"
    t.string   "BPN_AccRef12_UndrawnAmount"
    t.string   "BPN_AccRef13"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "party_id"
  end

  add_index "contracts", ["BalanceSheetDate", "HoldingPartyReference", "ContractReference", "ContractPortfolio"], name: "index_contracts_primary_key", using: :btree
  add_index "contracts", ["party_id"], name: "index_contracts_on_party_id", using: :btree

  create_table "grupo_analises", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "grupo_analises", ["user_id"], name: "index_grupo_analises_on_user_id", using: :btree

  create_table "mitigants", force: :cascade do |t|
    t.date     "BalanceSheetDate"
    t.string   "HoldingPartyReference"
    t.string   "ContractReference"
    t.string   "MitigantReference"
    t.decimal  "MitigantBalance"
    t.string   "MitigantType"
    t.string   "Componente"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "mitigants", ["BalanceSheetDate", "HoldingPartyReference", "ContractReference", "MitigantReference"], name: "index_mitigants_primary_key", using: :btree

  create_table "models", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "models", ["email"], name: "index_models_on_email", unique: true, using: :btree
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true, using: :btree

  create_table "months", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.date     "month"
    t.integer  "import_parties_status"
    t.integer  "import_loans_status"
    t.integer  "import_mitigants_status"
    t.string   "aasm_state"
    t.integer  "company_id"
  end

  add_index "months", ["company_id"], name: "index_months_on_company_id", using: :btree

  create_table "parties", force: :cascade do |t|
    t.date     "BalanceSheetDate"
    t.string   "ContractPortfolio"
    t.string   "ContractReference"
    t.string   "HoldingPartyReference"
    t.string   "PartyReference"
    t.string   "PartyDescription"
    t.string   "NIF"
    t.string   "ActivitySector"
    t.string   "CountryCode"
    t.string   "SectorialCode"
    t.string   "PartyType"
    t.string   "Balcao"
    t.string   "ZipCode"
    t.string   "CodigoVigilanciaEspecial"
    t.string   "PartyGroupReference"
    t.decimal  "TotalGroupExposure"
    t.decimal  "TotalPartyExposure"
    t.decimal  "BPN_OverdueCredit"
    t.decimal  "BPN_ReturnedCheques"
    t.decimal  "BPN_OverdueCreditOther"
    t.decimal  "BPN_BdPDefault"
    t.decimal  "BPN_OverdueCreditBPNOther"
    t.string   "NPLTeam"
    t.string   "NPLTeamLeader"
    t.string   "AssetManager"
    t.string   "LegalManager"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "parties", ["BalanceSheetDate", "HoldingPartyReference", "PartyReference"], name: "index_parties_primary_key", using: :btree

  create_table "questions", force: :cascade do |t|
    t.integer  "version"
    t.text     "question"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "answer_type"
  end

  create_table "rulesiis", force: :cascade do |t|
    t.decimal  "number"
    t.decimal  "priority"
    t.string   "RuleType"
    t.string   "rule"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "company_id"
  end

  add_index "rulesiis", ["company_id"], name: "index_rulesiis_on_company_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role"
    t.integer  "company_id"
    t.integer  "month_id"
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["month_id"], name: "index_users_on_month_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "acontracts", "aparties"
  add_foreign_key "acontracts", "companies"
  add_foreign_key "acontracts", "months"
  add_foreign_key "acontracts", "parties"
  add_foreign_key "allocations", "grupo_analises"
  add_foreign_key "amitigants", "acontracts"
  add_foreign_key "aparties", "companies"
  add_foreign_key "aparties", "grupo_analises"
  add_foreign_key "aparties", "months"
  add_foreign_key "aparties", "users"
  add_foreign_key "contracts", "parties"
  add_foreign_key "grupo_analises", "users"
  add_foreign_key "months", "companies"
  add_foreign_key "rulesiis", "companies"
  add_foreign_key "users", "companies"
  add_foreign_key "users", "months"
end
