class CreateSpendenWeihnachtsmarkts < ActiveRecord::Migration[6.0]
  def change
    create_table :spenden_weihnachtsmarkts do |t|
      t.string :vorname
      t.string :nachname
      t.string :iban
      t.decimal :summe

      t.timestamps
    end
  end
end
