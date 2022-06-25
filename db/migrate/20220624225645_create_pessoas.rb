class CreatePessoas < ActiveRecord::Migration[7.0]
  def change
    create_table :pessoas do |t|
      t.string :name
      t.integer :age
      t.string :adress
      t.integer :cpf

      t.timestamps
    end
  end
end
