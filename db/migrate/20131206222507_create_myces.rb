class CreateMyces < ActiveRecord::Migration
  def change
    create_table :myces do |t|
      t.string :title

      t.timestamps
    end
  end
end
