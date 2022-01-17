class CreateContextTables < ActiveRecord::Migration[7.0]
  def change
    create_table :context_tables do |t|
      t.string :word
      t.string :message

      t.timestamps
    end
  end
end
