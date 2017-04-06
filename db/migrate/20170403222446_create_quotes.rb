class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.string :person_id
      t.string :quote

      t.timestamps
    end
  end
end
