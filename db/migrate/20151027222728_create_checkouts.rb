class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :book, index: true, foreign_key: true
      t.datetime :returned_at

      t.timestamps null: false
    end
  end
end
