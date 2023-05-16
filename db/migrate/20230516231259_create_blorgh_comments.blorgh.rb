# This migration comes from blorgh (originally 20230516114913)
class CreateBlorghComments < ActiveRecord::Migration[6.0]
  def change
    create_table :blorgh_comments do |t|
      t.references :article, null: false, foreign_key: { to_table: :blorgh_articles }
      t.text :body

      t.timestamps
    end
  end
end
