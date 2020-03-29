class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.string :name
      t.string :image_id
      t.text :introduction
      t.boolean :is_sale, default: true, null: true


      t.timestamps
    end
  end
end


      # t.integer :user_id
