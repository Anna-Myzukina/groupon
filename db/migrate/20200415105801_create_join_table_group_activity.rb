class CreateJoinTableGroupActivity < ActiveRecord::Migration[5.1]
  def change
    create_join_table :groups, :activities do |t|
      # t.index [:group_id, :activity_id]
      # t.index [:activity_id, :group_id]
    end
  end
end
