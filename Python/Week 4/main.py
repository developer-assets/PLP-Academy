class Person:
  # setting default values to prevent error if no values are passed
  def __init__(self, name = 'Guest', age = 18, gender = 'male'):
    self.name = name
    self.age = age
    self.gender = gender

  def introduce(self):
    print(f"I am {self.name}. I am a {self.gender}. I am {self.age} years old.")

you = Person("Patrick Obama", 12, "male")

you.introduce()