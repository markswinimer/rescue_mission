class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :details, null: false
      t.belongs_to :question, null: false

      t.timestamps
    end
  end
end
