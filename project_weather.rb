Project = Struct.new(:creator)
Creator = Struct.new(:address)
Address = Struct.new(:country)
Country = Struct.new(:capital)
City = Struct.new(:weather)

def weather_for_project(project)
	project.creator.address.country.capital.weather
end

# passing
city = City.new('cilly')
country = Country.new(city)
address = Address.new(country)
creator = Creator.new(address)
project = Project.new(creator)
p weather_for_project(project)

# not passing
evil_project = Project.new(Creator.new(Address.new(Country.new(nil))))
p weather_for_project(evil_project)
