require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'


class Kid
  # extend keyword for class methods
  extend MetaDancing

# include keyword to get the methods of the Dance module
  include Dance

  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
