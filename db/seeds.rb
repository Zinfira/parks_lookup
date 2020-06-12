class Seed

  def self.begin
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    20.times do |i|
      park = Park.create!(
        name: Faker::Address.street_name,
        location: Faker::Address.state,
        content: Faker::Lorem.sentence
      )
      puts "Park #{i}: #{park.name} Park is located in '#{park.location}'."
    end
  end
end

Seed.begin
