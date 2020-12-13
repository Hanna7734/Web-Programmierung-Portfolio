class CreateArtikels < ActiveRecord::Migration[6.0]
  def change
    create_table :artikels do |t|
      t.string :artikelname
      t.decimal :preis
      t.string :verkaeufer
      t.integer :anzahl
      t.string :marke
      t.string :artikelnummer
      t.text :beschreibung

      t.timestamps
    end
  end
end
