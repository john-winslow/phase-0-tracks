world = {
	'Africa' => {
			'Population' => 1216130000,
			'Largest Countries' => {
				'Nigeria' => 125750356,
				'Egypt' => 76117421,
				'Ethiopia' => 71336571,
				'Congo' => 58317930,
				'South Africa' => 4448470
			},
			'Exports' => [
				'palm oil', 
				'gold', 
				'oil', 
				'cocoa', 
				'timber'
			]
		},
	'Antarctica' => {
			'Population' => 4490
		},
	'Asia' => {
			'Population' => 4436224000,
			'Largest Countries' => {
				'China' => 1313180218,
				'India' => 1100000000,
				'Indonesia' => 232998000,
				'Pakistan' => 158352000,
				'Bangladesh' => 148384000
			},
			'Exports' => [
				'cars', 
				'car parts', 
				'computer accessories', 
				'industrial machinery'
			]
		},
	'Europe' => {
			'Population' => 738849000,
			'Largest Countries' => {
				'Russia' => 142098141,
				'Germany' => 82562004,
				'France' => 64641279,
				'United Kingdom' => 63843856,
				'Italy' => 61142221
			},
			'Exports' => [
				'machinery', 
				'cars', 
				'aircraft', 
				'plastics', 
				'pharmaceuticals'
			]
		},
	'North America' => {
			'Population' => 579024000,
			'Largest Countries' => {
				'United States' => 325127634,
				'Mexico' => 123799215,
				'Canada' => 35871283,
				'Guatemala' => 16255094,
				'Cuba' => 11248783
			},
			'Exports' => [
				'oil', 
				'pharmaceuticals', 
				'cars', 
				'household goods', 
				'computer accessories'
			]
		},
	'South America' => {
			'Population' => 422535000,
			'Largest Countries' => {
				'Brazil' => 204519000,
				'Colombia' => 48549000,
				'Argentina' => 43132000,
				'Peru' => 31153000,
				'Venezuela' => 30620000
			},
			'Exports' => [
				'fruit', 
				'timber', 
				'coffee', 
				'granite'
			]
		},
	'Oceania' => {
			'Population' => 39901000,
			'Largest Countries' => {
				'Australia' => 23792000,
				'Papua New Guinea' => 8219000,
				'New Zealand' => 4579000,
				'Fiji' => 867000,
				'Solomon Islands' => 587000
			},
			'Exports' => [
				'iron ore', 
				'gold', 
				'coal', 
				'meat', 
				'wool'
			]
		}
}

# print 5 largest countries in Africa and their populations
puts "The 5 largest countries in Africa, by population:"
p world['Africa']['Largest Countries']

# print population of Brazil
puts "The population of Brazil is:"
p world['South America']['Largest Countries']['Brazil']

# print the top export from North America
puts "North America's biggest export is:"
p world['North America']['Exports'][0]



