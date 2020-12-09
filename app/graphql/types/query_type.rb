module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator" do
      argument :name, String, required: true
    end
    def test_field(name:)
      "Hello #{name}!"
    end

    field :author, Types::AuthorType, null: true, description: "One Author" do
      argument :id, ID, required: true
    end

    def author(id:)
      Author.where(id: id).first
    end

    field :authors, [Types::AuthorType], null: false

    def authors
        Author.all
    end

    field :authors_by_yob, [Types::AuthorType], null: false, description: "Authors by Year of Birth" do
      argument :yob, Int, required: true
    end

    def authors_by_yob(yob:)
      Author.where(yob: yob)
    end
  end
end
