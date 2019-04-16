class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :priorities
      t.string :gratitude
      t.string :accomplishments
      t.string :improvements
      t.date :date
      t.string :img_url, default: 'https://images.pexels.com/photos/1985169/pexels-photo-1985169.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
      t.belongs_to :user, default: 1

      t.timestamps
    end
  end
end
