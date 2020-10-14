module TestGenerator
  module Method
    include TestGenerator::Utils

    def method_specs(line)
      klass, method_name, args, attrs, response = destruct(line)

      "describe '##{method_name}' do\n\tend"
    end
  end
end
