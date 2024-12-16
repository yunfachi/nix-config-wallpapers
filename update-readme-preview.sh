newContent=$(nix eval .#markdown-preview --raw)

filePath="./README.md"
fileContent=$(cat "$filePath")

startMarker="<!-- AUTO UPDATE START -->"
endMarker="<!-- AUTO UPDATE END -->"

updatedContent=$(printf "%s" "$fileContent" | \
  awk -v start="$startMarker" -v end="$endMarker" -v newContent="$newContent" '
    BEGIN {foundStart=0; foundEnd=0}
    {
      if (!foundStart) {
        print $0
        if ($0 ~ start) {
          foundStart=1
          print newContent
        }
        next
      }
      if (foundStart && !foundEnd) {
        if ($0 ~ end) {
          foundEnd=1
          print end
        }
        next
      }
      if (foundEnd) {
        print $0
      }
    }
  ')

echo "$updatedContent" > "$filePath"

