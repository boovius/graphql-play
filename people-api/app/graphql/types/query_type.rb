Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"
  field :pets do
    type types[Types::PetType]
    resolve -> (obj, args, ctx) {
      Pet.all
    }
  end
  field :people do
    type types[Types::PersonType]
    argument :id, types.ID
    argument :name, types.String
    resolve -> (obj, args, ctx) {
      if args.any?
        Person.where(args.to_h)
      else
        Person.all
      end
    }
  end
end
