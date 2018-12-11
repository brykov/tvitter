class CreateTvits < ActiveRecord::Migration[5.2]
  def change
    create_table :tvits do |t|
      t.text :status
      t.integer :user_id

      t.timestamps
    end
  end
end
