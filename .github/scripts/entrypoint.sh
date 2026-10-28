set -e

echo "Starting vowel frequency container entrypoint..."

TARGET_FILE="${FILE:-data.txt}"
GITHUB_USER="${GITHUB_USER:-Unknown}"

echo "Analyzing file: $TARGET_FILE for user: $GITHUB_USER"

FREQ_RESULT=$(python3 /app/.github/scripts/frequency.py "$TARGET_FILE")
sh /app/.github/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"

echo "Container execution completed successfully."
