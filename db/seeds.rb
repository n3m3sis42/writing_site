Character.create({
  first_name: "Devin",
  last_name: "Renton",
  birth_date: "September 9",
  height_feet: 6,
  height_inches: 2,
  weight: 175,
  eye_color: "amber",
  hair_color: "dark brown",
  skin_color: "light brown"
})

Character.create({
  first_name: "Jasper",
  middle_name: "Levi",
  last_name: "Callahan",
  goes_by: "Jazz",
  birth_date: "August 10",
  height_feet: 5,
  height_inches: 6,
  weight: 165,
  eye_color: "blue",
  hair_color: "dark blonde",
  skin_color: "white"
})

Character.create({
  first_name: "Calla",
  last_name: "Page",
  birth_date: "November 9",
  height_feet: 5,
  height_inches: 10,
  weight: 140,
  eye_color: "dark brown",
  hair_color: "black",
  skin_color: "dark brown"
})

Character.create({
  first_name: "Weston",
  last_name: "Jansen",
  goes_by: "Wes",
  birth_date: "March 11",
  height_feet: 6,
  height_inches: 3,
  weight: 160,
  eye_color: "black",
  hair_color: "bleached blonde",
  skin_color: "dark brown"
})

Character.create({
  first_name: "Aidan",
  last_name: "Ellis",
  height_feet: 6,
  height_inches: 1,
  weight: 215,
  eye_color: "blue",
  hair_color: "blonde",
  skin_color: "light brown"
})

Character.create({
  first_name: "Kalen",
  last_name: "Murdock",
  height_feet: 5,
  height_inches: 11,
  eye_color: "blue",
  hair_color: "blonde",
  skin_color: "light brown"
})

Character.create({
  first_name: "General",
  last_name: "Murdock",
  eye_color: "blue",
  hair_color: "blonde",
  skin_color: "light brown"
})

Character.create({
  first_name: "Bing",
  last_name: "Jansen",
  height_feet: 6,
  height_inches: 2,
  weight: 178,
  eye_color: "black",
  hair_color: "black",
  skin_color: "dark brown"
})

Character.create({
  first_name: "Amelia",
  last_name: "Samson",
  eye_color: "dark brown",
  hair_color: "black",
  skin_color: "dark brown"
})

Character.create({
  first_name: "Randall",
  last_name: "Barrett",
  eye_color: "medium brown",
  hair_color: "dark brown",
  skin_color: "medium brown"
})

Arc.create({
  title: "Temp title: War stuff",
  arc_number: 1
})

Arc.create({
  title: "Temp title: Protags are drunk on their own power",
  arc_number: 2
})

Arc.create({
  title: "Temp title: Resistance stuff",
  arc_number: 3
})

Scene.create({
  name: "Prologue",
  description: "Amelia being recruited to help with Jansen’s plan",
  notes: "How is Amelia recruited? Not sure yet, but probably because she was in the Home with Seven (current headcanon is she's not-Calla from the one story on the rooftop) and stated asking questions about him when he disappeared. There's a good chance she asked Larkin these questions and he sensed that she might be a potential Adept and offered her a way out.",
  scene_number: 1,
  arc_id: 1
})

Scene.create({
  name: "Devin's Introduction",
  description: "Rewrite of the scene where Devin and Kalen meet, this time in Devin's POV",
  notes: "Since this scene takes place at a Majerian military dinner/gala/whatever, Ellis and Murdock are also likely introduced, and the reader will get a good feel for Majerian worldbuilding and a hint at Devin's sarcastic nature (along with the adversarial relationship between Ellis and Murdock).

  Wes may or may not be introduced before/after Devin is at the event, and there may be Supplemental Emails between Devin and Jazz.",
  scene_number: 2,
  arc_id: 1
})

Scene.create({
  name: "Pretty Buttons",
  description: "Devin being drunk on his power",
  notes: "Current theory is that he's torturing Randall to get information about what really happened to Eric, possibly in order to help him break a block with using his abilities (the mindreading ones?!). Randall may or may not have the information Devin is looking for, and Devin Goes Too Far and is more than likely going to regret it later",
  arc_id: 2
})

Scene.create({
  name: "Devin's Death Scene",
  description: "Does what it says on the tin",
  notes: "Probably still takes place after the Big Damn Hero stuff and ends in the Jansens' orange groves. Devin chooses to die under the tree where Jazz was buried, and Jansen is more than likely buried nearby as well. Poor Wes... (I need to look up the real notes for this scene and add them, lol).",
  arc_id: 3
})

# setting up a character/scene association for testing purposes
pb = Scene.find_by(name: "Pretty Buttons")
devin = Character.find_by(first_name: "Devin")
randall = Character.find_by(first_name: "Randall")
pb.characters << devin
pb.characters << randall
pb.save
