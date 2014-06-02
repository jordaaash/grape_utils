require 'set'

module GrapeUtils
  module Validators
    class SetValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        value = params[attr_name]
        if value.nil? || !value.subset?(option.to_set)
          param = @scope.full_name(attr_name)
          raise Grape::Exceptions::Validation, param: param, message: 'invalid'
        end
      end

      def option
        @option.is_a?(Proc) ? @option.call : @option
      end
    end
  end
end
