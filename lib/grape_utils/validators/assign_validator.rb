module GrapeUtils
  module Validators
    class AssignValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        params[attr_name] = @option.is_a?(Proc) \
            ? @option.call(params[attr_name], params, attr_name) : @option
      end
    end
  end
end
