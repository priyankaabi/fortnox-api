require "set"
require "dotenv"
require "fortnox/api/version"
require "fortnox/api/customer"

Dotenv.load

module Fortnox
  module API

    class << self
      extend Forwardable
      delegate [ :new, :get_access_token ] => Fortnox::API::Base
    end

  end
end
