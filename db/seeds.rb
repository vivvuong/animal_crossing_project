require "csv"

Villager.delete_all
Animal.delete_all
Gender.delete_all
Hobby.delete_all
Personality.delete_all

filename = Rails.root.join("db/villagers.csv")

puts "Loading in Villagers from #{filename}."

csv_data = File.read(filename)

villagers = CSV.parse(csv_data, headers: true, encoding: "utf-8")

villagers.each do |v|
    animal = Animal.find_or_create_by(animal: v["Animal"])
    gender = Gender.find_or_create_by(gender: v["Gender"])
    hobby = Hobby.find_or_create_by(hobby: v["Hobby"])
    personality = Personality.find_or_create_by(personality: v["Personality"])

    if animal && gender && hobby && personality && animal.valid? && gender.valid? && hobby.valid? && personality.valid?
        # ADD VILLAGERS
        Villager.create(
            name: v["Name"], 
            icon_image: v["Icon_Image"], 
            photo_image: v["Photo_Image"], 
            house_image: v["House_Image"], 
            animal: animal, 
            gender: gender, 
            personality: personality, 
            hobby: hobby, 
            birthday: v["Birthday"], 
            catchphrase: v["Catchphrase"], 
            favorite_song: v["Favorite_Song"], 
            favorite_saying: v["Favorite_Saying"]        
        )
    else
        # ERROR MESSAGE
        puts "Invalid Villager: #{v["Name"]}."
    end
end

puts "Created #{Villager.count} villagers."
puts "Created #{Animal.count} animals."
puts "Created #{Gender.count} genders."
puts "Created #{Hobby.count} hobbies."
puts "Created #{Personality.count} personality."



