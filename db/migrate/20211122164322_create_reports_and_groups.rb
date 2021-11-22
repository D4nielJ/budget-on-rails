class CreateReportsAndGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :reports_groups, id: false do |t|
      t.belongs_to :report
      t.belongs_to :group

      t.timestamps
    end
  end
end
