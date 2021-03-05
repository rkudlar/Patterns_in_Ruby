require 'singleton'

class Klass
  include Singleton
  attr_accessor :value

  def initialize(i=0)
    @value = i
  end
  def increment
    @value += 1
  end
end

a, b = Klass.instance, Klass.instance
puts a == b
puts a.object_id == b.object_id
