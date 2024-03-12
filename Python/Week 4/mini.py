import json
import os
import difflib

# Set the encoding used by the print function to 'utf-8'
os.environ['PYTHONIOENCODING'] = 'utf-8'

def load_json_to_dict(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        data_dict = json.load(file)
    return data_dict

word_dict = load_json_to_dict('data.json')

def get_word_definition(word):
    word = word.lower()

    # Check if the word is in the dictionary
    if word in word_dict:
        return word_dict[word]

    # Return spelling suggestions using difflib
    suggestions = difflib.get_close_matches(word, word_dict.keys(), n=5, cutoff=0.5)
    if suggestions:
        return f"Did you mean: {', '.join(suggestions)}?"

    # Return a message if no suggestions are found
    return f"No definition found for '{word}' and no spelling suggestions available."

user_word = input("Enter a word: ").lower()
print(get_word_definition(user_word))