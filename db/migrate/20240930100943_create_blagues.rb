class CreateBlagues < ActiveRecord::Migration[7.1]
  def change
    create_table :blagues do |t|
      t.string :nom
      t.string :contenue
      t.string :auteur

      t.timestamps
    end
  end
end
