class CreateComidas < ActiveRecord::Migration[7.0]
  def change
    create_table :comidas do |t|
      t.string :type
      t.float :qtd

      t.timestamps
    end
  end
end
