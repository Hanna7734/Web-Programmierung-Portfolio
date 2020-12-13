json.extract! artikel, :id, :artikelname, :preis, :verkaeufer, :anzahl, :marke, :artikelnummer, :beschreibung, :created_at, :updated_at
json.url artikel_url(artikel, format: :json)
