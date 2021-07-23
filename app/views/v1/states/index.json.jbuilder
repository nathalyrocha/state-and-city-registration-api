json.states @states do |state|
  json.id state.id
  json.name state.name
  json.abbreviation state.abbreviation

  json.cities state.cities do |city|
    json.id city.id
    json.name city.name
  end
end