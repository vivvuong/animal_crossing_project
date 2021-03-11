class CreatePersonalities < ActiveRecord::Migration[6.1]
  def change
    create_table :personalities do |t|
      t.string :personality

      t.timestamps
    end
  end
end
