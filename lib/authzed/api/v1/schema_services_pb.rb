# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: authzed/api/v1/schema.proto for package 'authzed.api.v1'

require 'grpc'
require 'authzed/api/v1/schema_pb'

module Authzed
  module Api
    module V1
      module SchemaService
        # SchemaService implements operations on a Permissions System's Schema.
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'authzed.api.v1.SchemaService'

          # Read returns the current Object Definitions for a Permissions System.
          #
          # Errors include:
          # - INVALID_ARGUMENT: a provided value has failed to semantically validate
          # - NOT_FOUND: no schema has been defined
          rpc :ReadSchema, ::Authzed::Api::V1::ReadSchemaRequest, ::Authzed::Api::V1::ReadSchemaResponse
          # Write overwrites the current Object Definitions for a Permissions System.
          rpc :WriteSchema, ::Authzed::Api::V1::WriteSchemaRequest, ::Authzed::Api::V1::WriteSchemaResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
