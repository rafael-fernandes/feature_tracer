class UnitTestGenerator < Rails::Generators::Base
  def create_unit_tests
    require 'json'
    require 'gemaina/reflector'
    class_name = args[0]
    file_name = class_name.downcase
    puts "criando testes unitarios para #{class_name}..."
    is_controller = /.*Controller$/.match?(class_name)
    class_type = "model"
    if is_controller
      class_type = "controller"
    end
    template = %Q{require 'rails_helper'

RSpec.describe #{class_name}, :type => :#{class_type} do
  it "is valid with valid attributes" do
    expect(#{class_name}.new).to be_valid
  end
end
}
    File.readlines("#{Rails.root}/tmp/#{class_name}.rb").each do |line|
      json_string = JSON.parse(line.strip)
      puts "Reflecting..."
      reflector = Reflect::Reflector.new
      puts reflector.reflect(json_string["klass"], json_string["method"], json_string["current_state"], json_string["args"])
    end

    create_file "spec/models/#{file_name}_spec.rb", template

    puts "Testes criados."
  end
end