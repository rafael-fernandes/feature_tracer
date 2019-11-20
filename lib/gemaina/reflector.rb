module Reflect
  class Reflector
    def reflect(klass, method, attributes, args)
      @instance = Object.const_get(klass).new(attributes)
      @instance.send(method, *args)
    end
  end
end