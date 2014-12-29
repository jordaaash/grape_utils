require 'grape'
require 'grape_utils/version'

module GrapeUtils
  module Validators
    autoload :AliasValidator,    'grape_utils/validators/alias_validator'
    autoload :AssignValidator,   'grape_utils/validators/assign_validator'
    autoload :ClampValidator,    'grape_utils/validators/clamp_validator'
    autoload :ConvertValidator,  'grape_utils/validators/convert_validator'
    autoload :DateValidator,     'grape_utils/validators/date_validator'
    autoload :DateTimeValidator, 'grape_utils/validators/date_time_validator'
    autoload :IfValidator,       'grape_utils/validators/if_validator'
    autoload :SetValidator,      'grape_utils/validators/set_validator'
    autoload :SizeValidator,     'grape_utils/validators/size_validator'
    autoload :SplitValidator,    'grape_utils/validators/split_validator'
    autoload :TimeValidator,     'grape_utils/validators/time_validator'
    autoload :UnlessValidator,   'grape_utils/validators/unless_validator'
  end
end
