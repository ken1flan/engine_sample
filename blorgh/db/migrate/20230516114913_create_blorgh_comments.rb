class CreateBlorghComments < ActiveRecord::Migration[6.0]
  def change
    create_table :blorgh_comments do |t|
      t.references :article, null: false, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
