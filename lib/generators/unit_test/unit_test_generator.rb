require 'test_generator'

class UnitTestGenerator < Rails::Generators::NamedBase
  include TestGenerator::TempReader
  include TestGenerator::Association
  include TestGenerator::Validation
  include TestGenerator::Method

  source_root File.expand_path('templates', __dir__)

  def create_unit_test
    @klass = class_name

    lines = read_temp_file(class_name)

    @methods_specs = []
    @validations_specs = []
    @associations_specs = []
    
    # Generate methods specs
    lines.each do |line|
      @methods_specs << method_specs(line)
    end

    # Generate association specs
    associations = associations(class_name.camelize.constantize)

    associations.each do |kind, names|
      @associations_specs << association_specs(kind, names)
    end
    
    @associations_specs = @associations_specs.flatten.uniq.compact

    # Generate validation specs
    validations = validations(class_name.camelize.constantize)

    validations.each do |kind, attrs|
      @validations_specs << validation_specs(kind, attrs)
    end

    @validations_specs = @validations_specs.flatten.uniq.compact

    template "model_spec.rb", Rails.root.join("spec/models/#{class_name.downcase}_spec.rb")
  end
end
