VOWEL_COUNTS=$(python3 analyze_vowels.py)
CONTRIBUTOR="${GITHUB_ACTOR:-Unknown}"
TIMESTAMP=$(date -u +"%Y-%m-%d %H:%M:%S UTC")
echo "" >> README.md
echo "### Automated Vowel Analysis Report" >> README.md
echo "- **Contributor:** $CONTRIBUTOR" >> README.md
echo "- **Timestamp:** $TIMESTAMP" >> README.md
echo "- **Results:**" >> README.md
echo "\`\`\`" >> README.md
echo "$VOWEL_COUNTS" >> README.md
echo "\`\`\`" >> README.md

echo "README updated successfully."
