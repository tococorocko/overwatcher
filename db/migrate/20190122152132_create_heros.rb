class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :portrait
      t.string :background
      t.string :link

      t.timestamps
    end
  end
end
