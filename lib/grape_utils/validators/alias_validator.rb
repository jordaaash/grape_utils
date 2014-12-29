module GrapeUtils
  module Validators
    class AliasValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        value = params[@option]
        unless value.nil?
          params[attr_name] = value
        end
      end
    end
  end
end
