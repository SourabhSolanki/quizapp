class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.belongs_to :user
      t.belongs_to :quiz
      t.timestamps
    end
  end
end
