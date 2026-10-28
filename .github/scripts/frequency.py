import sys
from collections import Counter

def count_vowels(file_path):
    try:
        with open(file_path, "r", encoding="utf-8") as f:
            text = f.read().lower()
            
        vowels_found = [char for char in text if char in "aeiou"]
        counts = Counter(vowels_found)
        
        return {
            'a': counts['a'],
            'e': counts['e'],
            'i': counts['i'],
            'o': counts['o'],
            'u': counts['u']
        }
    except FileNotFoundError:
        print(f"Error: File '{file_path}' not found.", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python frequency.py <file_path>", file=sys.stderr)
        sys.exit(1)
        
    target_file = sys.argv[1]
    result = count_vowels(target_file)
    
    if result:
        print(f"a: {result['a']}")
        print(f"e: {result['e']}")
        print(f"i: {result['i']}")
        print(f"o: {result['o']}")
        print(f"u: {result['u']}")
