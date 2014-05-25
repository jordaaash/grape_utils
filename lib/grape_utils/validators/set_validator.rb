require 'set'

module GrapeUtils
  module Validators
    class SetValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        option = @option.is_a?(Proc) ? @option.call : @option
        unless params[attr_name].subset?(option.to_set)
          raise Grape::Exceptions::Validation,
                param: @scope.full_name(attr_name), message: 'invalid'
        end
      end
    end
  end
end
