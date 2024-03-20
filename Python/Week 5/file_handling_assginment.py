import os

def checkFileExists(file_path):
  if os.path.exists(file_path):
    print(f"News file called {file_path} created successfully.")
  else:
    print("Your file was not created.")


def createFile(file_content, file_path = "my_file.txt"):
  if(file_content == ""):
    file_content = "I am Patrick Obama. \nI am living in 2024 and my lucky numbers are. \n24, 45, 56. \n"

  try:
    with open(file_path, "w") as f:
      f.write(file_content)
      checkFileExists(file_path)

  except PermissionError:
    print(f"Permission error: Unable to create file {file_path}. Please check permissions.")

def readFile(filename = "unknown"):
  if(file_name == "unknown"):
    raise FileNotFoundError
  else:
    try:
      with open(file_name, "r") as f:
        print(f.read())
    
    except FileNotFoundError:
      print(f"File {file_name} not found.")
    
    except PermissionError:
      print(f"Permission error: Unable to read file {file_name}. Please check permissions.")

def appendToFile(file_path = "my_file.txt", file_content = "No content supplied"):
  try:
    with open(file_path, "a") as f:
      f.write(file_content)
      checkFileExists(file_path)
  
  except PermissionError:
    print(f"Permission error: Unable to append to file {file_path}. Please check permissions.")


# execution of main
print("[1]. Create file")
print("[2]. Read file")
print("[3]. Append message to file")
print("\n")

option = input("Select an option: ")
try:
  option = int(option)
  if(option < 1 or option > 3):
    raise ValueError

except:
  print("Invalid option. Please try again.")

else:
  if(option == 1):
    file_name = input("Enter full file name: ")
    file_content = input("Enter file content: ")
    createFile(file_content, file_name)

  elif(option == 2):
    file_name = input("Enter full file name: ")
    readFile(file_name)

  elif(option == 3):
    file_name = input("Enter full file name: ")
    file_content = input("Enter enter additional file content: ")
    appendToFile(file_name, file_content)