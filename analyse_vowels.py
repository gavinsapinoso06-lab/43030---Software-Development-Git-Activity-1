import os

def count_vowels():
    file_path = "data.txt"
    if not os.path.exists(file_path):
        print("Error: data.txt not found.")
        return None

    vowels = {'A': 0, 'E': 0, 'I': 0, 'O': 0, 'U': 0}
    
    with open(file_path, "r", encoding="utf-8") as f:
        text = f.read()
        for char in text:
            upper_char = char.upper()
            if upper_char in vowels:
                vowels[upper_char] += 1
        
    return vowels

if __name__ == "__main__":
    results = count_vowels()
    if results:
        print(f"A: {results['A']}")
        print(f"E: {results['E']}")
        print(f"I: {results['I']}")
        print(f"O: {results['O']}")
        print(f"U: {results['U']}")
