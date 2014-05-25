module GrapeUtils
  module Validators
    class IfValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        unless @option.call(params[attr_name], params, attr_name)
          name = @scope.full_name(attr_name)
          raise Grape::Exceptions::Validation,
                param: name, message: 'invalid'
        end
      end
    end
  end
end
