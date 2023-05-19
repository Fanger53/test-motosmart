class CreateRankings < ActiveRecord::Migration[7.0]
  def change
    create_table :rankings do |t|
      t.date :start_date
      t.date :end_date
      t.float :kilometers
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
