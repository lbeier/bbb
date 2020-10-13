class BrazilianBakeriesSchema < GraphQL::Schema
  mutation(Types::MutationType) ## This menas all mutatons should go to MutationType
  query(Types::QueryType) ## This means all queries should go to QueryType

  # Opt in to the new runtime (default in future graphql-ruby versions)
  use GraphQL::Execution::Interpreter
  use GraphQL::Analysis::AST

  # Add built-in connections for pagination
  use GraphQL::Pagination::Connections
end
