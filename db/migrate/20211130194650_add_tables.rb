class AddTables < ActiveRecord::Migration[6.1]
  def change
    create_table :injuries do |t|
      t.string :body_part
      t.date   :injury_date
      t.boolean   :broken
      t.integer :severity
      t.date    :recovery_date
      t.references :races
    end

    create_table :races do |t|
      t.date :date
      t.string :name
      t.integer :time
      t.integer :finish_place
    end

  end
end
