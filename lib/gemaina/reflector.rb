module Reflect
  class Reflector
    def reflect(klass, method, attributes, args)
      if attributes.nil?
        @instance = Object.const_get(klass).new
      else
        @instance = Object.const_get(klass).new(attributes)
      end
      @instance.send(method, *args)
    end
  end
end