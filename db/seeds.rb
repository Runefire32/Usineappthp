require 'faker'

#DELETE ALL
ActiveRecord::Base.connection.execute("DELETE FROM SQLITE_SEQUENCE")
Assembly.delete_all
Part.delete_all
AssemblyPart.delete_all


10.times do |assembly|
assembly = Assembly.create(name: Faker::Device.manufacturer)
end

15.times do |part|
part = Part.create(part_number: Faker::Device.model_name)
end

20.times do 
assempart = AssemblyPart.create(part_id: rand(1..Part.count), assembly_id: rand(1..Assembly.count))
end