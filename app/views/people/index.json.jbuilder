json.array!(@people) do |person|
  json.extract! person, :id, :birthday
  json.url person_url(person, format: :json)
end
