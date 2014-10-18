require 'hashed_struct/version'

class HashedStruct < Struct

  # def initialize(*arguments)
  #   klass = super
  #   klass.class_eval do

  #     def initialize(options={})
  #       super(*options.values_at(*self.class.members))
  #     end

  #   end
  # end
  # Struct.new(:name,:age) do; def initialize(options); super(*options.values_at(*self.class.members));end;end
end
