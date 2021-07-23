json.cities @cities do |city|
  json.id city.id
  json.name city.name
  json.state do
    json.id city.state.id
    json.name city.state.name
  end
end