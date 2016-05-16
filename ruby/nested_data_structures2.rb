basketball = {
  lakers: {
    coach: 'Luke Walton',
    bench_info: {
      total_seats: 10,
      seats_available: 4
    },
    starters: [
      "Kobe Bryant",
      "Julius Randal",
      "D' Angelo Russell",
      "Louis Williams",
      "Jordan Clarkson"
    ]
  },
  thunders: {
    coach: 'Billy Donovan',
    bench_info: {
      total_seats: 12,
      seats_available: 5
    },
    starters: [
      "Kevin Durant",
      "Russell Westbrook",
      "Steven Adams",
      "Nick Collison",
      "Randy Foye"
    ]
  },
  warriors: {
    coach: 'Steve Kerr',
    bench_info: {
      total_seats: 8,
      seats_available: 3
    },
    starters: [
      "Stephen Curry",
      "Klay Thompson",
      "Harrion Barnes",
      "Draymond Green"
    ]
  }
}

p basketball[:lakers][:coach]

p basketball[:thunders][:starters]

p basketball[:warriors][:starters][0]

p basketball[:warriors][:starters].push("Andrew Bogut")
