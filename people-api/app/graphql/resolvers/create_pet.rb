class Resolvers::CreatePet < GraphQL::Function
  argument :name, !types.String
  argument :person_id, !types.ID

  type Types::PetType

  def call(_obj, args, _ctx)
    Pet.create!(name: args[:name], person_id: args[:person_id])
  end
end