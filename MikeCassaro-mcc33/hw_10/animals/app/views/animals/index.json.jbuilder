json.array!(@animals) do |animal|
  json.extract! animal, :id, :name, :animal_type, :available, :age, :image
  json.url animal_url(animal, format: :json)
end
