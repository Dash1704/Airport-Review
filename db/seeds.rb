# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

airlines = Airline.create([
  {
    name: "United Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/United-Airlines.png"
  },
  {
    name: "Southwest",
    image_url: "https://open-flights.s3.amazonaws.com/Southwest-Airlines.png"
  }
])

reviews = Review.create([
  {
    title: "Fantastic Airline",
    description: "I had a lovely time",
    score: 5,
    airline: airlines.first
  },
  {
    title: "Mediocre",
    description: "Not good, not bad",
    score: 3,
    airline: airlines.first
  }
])