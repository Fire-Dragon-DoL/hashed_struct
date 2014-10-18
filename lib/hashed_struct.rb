require 'hashed_struct/version'

class HashedStruct

  def self.new(*fields)
    Struct.new(*fields) do
      def initialize(options={})
        super(*options.values_at(*self.class.members))
      end
    end
  end

end