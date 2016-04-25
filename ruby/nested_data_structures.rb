classroom = {
  english: {
    topic: 'grammar',
    seat_info: {
      total_seats: 30,
      seats_available: 4
    },
    supplies: [
      "pens",
      "paper",
      "books"
    ]
  },
  math: {
    topic: 'calculus',
    seat_info: {
      total_seats: 32,
      seats_available: 5
    },
    supplies: [
      "calculator",
      "pencil",
      "ruler"
    ]
  },
  history: {
    topic: 'US History',
    seat_info: {
      total_seats: 25,
      seats_available: 10
    },
    supplies: [
      "paper",
      "books",
      "notebook"
    ]
  }
}

p classroom[:english][:topic]

p classroom[:math][:supplies]

p classroom[:math][:supplies][0]

p classroom[:history][:supplies].push("pens")
