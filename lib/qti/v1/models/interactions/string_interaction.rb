module Qti
  module V1
    module Models
      module Interactions
        class StringInteraction < BaseInteraction
          # This will know if a class matches
          def self.matches(node)
            return false unless node.xpath('.//xmlns:other').present?
            matches = node.xpath('.//xmlns:render_fib')
            return false if matches.empty?
            new(matches.first)
          end

          def initialize(node)
            @node = node
          end

          private

          def rcardinality
            @rcardinality ||= @node.at_xpath('.//xmlns:response_str/@rcardinality').value
          end
        end
      end
    end
  end
end
