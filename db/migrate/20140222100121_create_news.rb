class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :content
      t.string :url
      t.date :date

      t.timestamps
    end
  end
end
