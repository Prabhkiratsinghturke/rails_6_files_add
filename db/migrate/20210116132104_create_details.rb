class CreateDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :details do |t|
      t.string :name
      t.string :email
      t.boolean :terms_and_conditions, default: false

      t.timestamps
    end
  end
end
