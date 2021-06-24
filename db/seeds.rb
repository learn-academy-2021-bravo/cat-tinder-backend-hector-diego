beers = [
  {
    brand: "Heineken",
    brew: "Ale",
    country: "Netherlands"
  },
  {
    brand: "Pacifico",
    brew: "pilsner",
    country: "Mexico"
  },
  {
    brand: "Coors Light",
    brew: "light lager",
    country: "United States"
  }
]

beers.each do |attributes|
  Beer.create attributes
  puts "creating beer #{attributes}"
end