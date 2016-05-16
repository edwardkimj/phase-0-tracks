class Puppy
  characteristics = {
    "Eyelash length" => "varies",
    "Friendly" => "yes",
    "Eye count" => 8,
    "Name" => "varies",
    "Color" => "varies"
  }
  behavior = [
    "lick",
    "catch",
    "jump",
    "run"
  ]
end

puppy1 = Puppy.new
puppy1.characteristics("Eyelash Length")
