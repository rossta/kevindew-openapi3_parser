# frozen_string_literal: true

require "openapi3_parser/nodes/external_documentation"
require "openapi3_parser/node_factory/object"

module Openapi3Parser
  module NodeFactories
    class ExternalDocumentation
      include NodeFactory::Object

      allow_extensions

      field "description", input_type: String
      field "url", required: true, input_type: String

      private

      def build_object(data, context)
        Nodes::ExternalDocumentation.new(data, context)
      end
    end
  end
end