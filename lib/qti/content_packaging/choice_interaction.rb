module Qti
  module ContentPackaging
    class ChoiceInteraction < Dry::Struct
      constructor_type :schema

      attribute :prompt, Types::Strict::String
      attribute :shuffle, Types::Strict::Bool.default(false)
      attribute :maxChoices, Types::Coercible::Int
      attribute :choices, Types::Strict::Array.member(ContentPackaging::SimpleChoice)
    end
  end
end
