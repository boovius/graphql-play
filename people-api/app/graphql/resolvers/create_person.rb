class Resolvers::CreatePerson < GraphQL::Function
  argument :name, !types.String
  argument :surname, !types.String

  type Types::PersonType

  def call(_obj, args, _ctx)
    Person.create!(name: args[:name], surname: args[:surname])
  end
end