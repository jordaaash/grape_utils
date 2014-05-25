require 'grape_utils/gem_version'

module GrapeUtils
  # Returns the version of the currently loaded GrapeUtils as a <tt>Gem::Version</tt>
  def self.version
    gem_version
  end
end
