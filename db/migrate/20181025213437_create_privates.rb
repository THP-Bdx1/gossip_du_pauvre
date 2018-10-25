class CreatePrivates < ActiveRecord::Migration[5.2]
  def change
    create_table :privates do |t|
      t.belongs_to :user, index: true
      t.text :content
      t.timestamps
    end
  end
end
