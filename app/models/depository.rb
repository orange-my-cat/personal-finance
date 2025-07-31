class Depository < ApplicationRecord
  include Accountable

  SUBTYPES = {
    "current" => { short: "Current", long: "Current" },
    "savings" => { short: "Savings", long: "Savings" },
    "fd" => { short: "Deposit", long: "Fixed Deposit" }
    # "hsa" => { short: "HSA", long: "Health Savings Account" },
    # "cd" => { short: "CD", long: "Certificate of Deposit" },
    # "money_market" => { short: "MM", long: "Money Market" }
  }.freeze

  class << self
    def display_name
      "Cash"
    end

    def color
      "#875BF7"
    end

    def classification
      "asset"
    end

    def icon
      "landmark"
    end
  end
end
