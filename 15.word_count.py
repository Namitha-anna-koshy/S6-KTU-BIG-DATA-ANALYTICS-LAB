#Count the number of words in a sentence using MapReduce

def map(text):
    words=text.split()
    return [1 for word in words if word.isalpha()]
def reduce(mapped_data):
    return sum(mapped_data)
def map_reduce(text):
    mapped_data=map(text)
    return reduce(mapped_data)

text=input("Enter a text : ")
word_count=map_reduce(text)
print("The word count is : ",word_count)

#Count occurence of a word using mapreduce
def map(text, target_word):
    words = text.lower().split()
    return [1 for word in words if word == target_word.lower()]

def reduce(mapped_data):
    return sum(mapped_data)

def map_reduce(text, target_word):
    mapped_data = map(text, target_word)
    return reduce(mapped_data)

# Get input from user
text = input("Enter a sentence: ")
word = input("Enter the word to count: ")

count = map_reduce(text, word)
print(f"The word '{word}' appears {count} time(s).")
