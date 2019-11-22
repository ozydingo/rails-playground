module Types
  class PriceType < BaseObject
    field :amount, Integer, null: false
    field :basis, String, null: false
  end
end
