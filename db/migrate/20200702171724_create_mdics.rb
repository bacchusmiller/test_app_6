class CreateMdics < ActiveRecord::Migration[6.0]
  def change
    create_table :mdics do |t|
      t.string :sTitle
      t.integer :iLeft_id
      t.integer :iRight_id
      t.integer :iCost
      t.string :sClassification
      t.string :sClass1
      t.string :sClass2
      t.string :sClass3
      t.string :sConjugation
      t.string :sConjugation_type
      t.string :sOriginal
      t.string :sPronunciation1
      t.string :sPronunciation2

      t.timestamps
    end
    add_index :mdics, :sTitle
  end
end
