require 'aquarium'
include Aquarium::Aspects

# Load Rails constants
Rails.application.eager_load!

# Get Rails models and controllers classes
controllers = ApplicationController.subclasses
models = ApplicationRecord.subclasses

puts "Aspects initialized"

Aspect.new(:around,
           calls_to: :all_methods,
           for_types: models + controllers,
           method_options: :exclude_ancestor_methods) do |jp, obj, *args|
  begin
    names = "#{jp.target_type.name}##{jp.method_name}"
    p obj
    p "Entering: #{names}: args = #{args.inspect}"
    file_name = "#{Rails.root}/tmp/#{jp.target_type.name}.rb"
    file = File.new file_name, 'a'
    string_to_write = "{class: #{jp.target_type.name}, method: :#{jp.method_name}, args: #{args.inspect}}"
    unless File.open(file_name).lines.any?{|line| line.include?(string_to_write)}
      file.puts string_to_write
    end
    
    jp.proceed
  ensure
    p "Leaving:  #{names}: args = #{args.inspect}"
    file.close
  end
end
