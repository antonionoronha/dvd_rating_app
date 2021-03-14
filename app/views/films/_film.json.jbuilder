json.extract! film, :id, :name, :launch_year, :sinopse, :director, :rating, :created_at, :updated_at
json.url film_url(film, format: :json)
