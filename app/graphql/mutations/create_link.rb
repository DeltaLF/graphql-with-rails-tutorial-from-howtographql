module Mutations
    class CreateLink < BaseMutation
        # args passed to resolve method
        argument :description, String, required: true
        argument :url, String, required: true

        # return Type form the mutation
        type Types::LinkType

        def resolve(description: nil, url: nil)
            Link.create!(
                description: description,
                url: url
            )
        end
    end
end