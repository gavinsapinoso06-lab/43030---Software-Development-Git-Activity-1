FREQ_RESULT="$1"
GITHUB_USER="$2"
TIMESTAMP=$(date -u +"%Y-%m-%d %H:%M:%S UTC")

echo -e "\n### Vowel Frequency Analysis Report" >> README.md
echo -e "- **Contributor:** $GITHUB_USER" >> README.md
echo -e "- **Timestamp:** $TIMESTAMP" >> README.md
echo -e "- **Results:**" >> README.md
echo -e "\`\`\`" >> README.md
echo -e "$FREQ_RESULT" >> README.md
echo -e "\`\`\`" >> README.md

echo "README updated successfully."
