require 'aquarium'
include Aquarium::Aspects

puts "Aquarium aspect tracing initialized"
Aspect.new :around, :calls_to => :all_methods,
           :for_types => [Post],
           :method_options => :exclude_ancestor_methods do |jp, obj, *args|

  
  begin
    names = "#{jp.target_type.name}##{jp.method_name}"
    p "Entering: #{names}: args = #{args.inspect}"

    file = File.new "#{Rails.root}/tmp/aspects.txt", 'a'
    file.puts "#{jp.target_type.name}, #{jp.method_name}, #{args.inspect}"
    
    jp.proceed
  ensure
    p "Leaving:  #{names}: args = #{args.inspect}"
    file.close
  end
end
