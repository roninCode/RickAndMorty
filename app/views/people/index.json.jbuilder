json.array! @people.each do |person|
  json.id person.id
  json.name person.name
  json.age person.age
  json.hobbies person.hobbies
end