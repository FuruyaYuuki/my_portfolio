class AddUseridToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :admin_id, :integer
    add_column :answers, :question_id, :integer
  end
end
