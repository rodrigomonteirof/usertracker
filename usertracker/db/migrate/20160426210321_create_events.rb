class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :url
      t.belongs_to :user

      t.timestamps
    end
  end
end
