class CreateWebsites < ActiveRecord::Migration[6.0]
  def change
    create_table :websites do |t|
      t.string :name
      t.string :domain
      t.string :instance_id
      t.string :status

      t.timestamps
    end
  end
end
