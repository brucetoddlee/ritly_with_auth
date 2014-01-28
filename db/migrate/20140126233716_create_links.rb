class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :input_link
      t.string :output_code
      t.integer :count

      t.timestamps
    end
  end
end
