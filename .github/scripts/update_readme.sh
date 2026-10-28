CONTRIBUTOR="${1:-${GITHUB_ACTOR:-Unknown}}"
TIMESTAMP=$(date -u +"%Y-%m-%d %H:%M:%S UTC")
VOWEL_COUNTS=$(python3 /app/.github/scripts/frequency.py)
echo "" >> /app/README.md
echo "### Vowel Frequency Analysis Report" >> /app/README.md
echo "- **Contributor:** $CONTRIBUTOR" >> /app/README.md
echo "- **Timestamp:** $TIMESTAMP" >> /app/README.md
echo "- **Results:**" >> /app/README.md
echo "\`\`\`" >> /app/README.md
echo "$VOWEL_COUNTS" >> /app/README.md
echo "\`\`\`" >> /app/README.md

echo "README updated successfully."
