Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createPerson, function: Resolvers::CreatePerson.new
end