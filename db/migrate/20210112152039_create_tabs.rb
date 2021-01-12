class CreateTabs < ActiveRecord::Migration[6.0]
  def change
    create_table :tabs do |t|
      t.string :name
      t.text :description
      t.string :slug
      t.references :organisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
