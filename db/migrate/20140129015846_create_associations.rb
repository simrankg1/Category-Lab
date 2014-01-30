class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.string :product
      t.string :belongs_to
      t.string :category
      t.string :belongs_to

      t.timestamps
    end
  end
end
