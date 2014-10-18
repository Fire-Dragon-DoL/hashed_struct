require 'hashed_struct/version'

# Can't inherit from Struct because it expect Binding as context (!)
class HashedStruct

  def initialize(*fields)
    Struct.new(*fields).tap do |klass|
      klass.class_eval do
        def initialize(options={})
          binding.pry
          super(*options.values_at(*self.class.members))
        end
      end
    end
  end

end
