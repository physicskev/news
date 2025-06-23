#!/bin/bash

# News Research Text-to-Speech Converter
# Converts markdown summaries to MP3 audio files using pandoc and mimic

# Check if required tools are installed
if ! command -v pandoc &> /dev/null; then
    echo "Error: pandoc is not installed. Please install it first."
    echo "Install with: brew install pandoc"
    exit 1
fi

if ! command -v mimic &> /dev/null; then
    echo "Error: mimic is not installed. Please install it first."
    echo "Install with: brew install mimic"
    exit 1
fi

# Create audio output directory
mkdir -p audio

echo "🎙️  News Research Audio Converter"
echo "=================================="

# Function to convert markdown to MP3
convert_to_audio() {
    local input_file=$1
    local output_file=$2
    local topic_name=$3
    
    echo "📄 Converting: $topic_name"
    echo "   Input:  $input_file"
    echo "   Output: $output_file"
    
    # Convert markdown to plain text using pandoc
    if pandoc "$input_file" -t plain -o temp.txt; then
        # Convert text to MP3 using mimic with slt voice (more natural)
        if mimic -voice slt -f temp.txt -o "$output_file" 2>/dev/null; then
            echo "✅ Successfully converted $topic_name"
            # Get file size for confirmation
            file_size=$(ls -lh "$output_file" | awk '{print $5}')
            echo "   Audio file size: $file_size"
        else
            echo "❌ Error converting $topic_name to audio"
        fi
        # Clean up temporary file
        rm -f temp.txt
    else
        echo "❌ Error converting $topic_name to text"
    fi
    echo ""
}

# Convert all summary files to audio
echo "🔍 Processing summary files..."
echo ""

# Process each summary file
if [ -d "summary" ]; then
    for md_file in summary/*.md; do
        if [ -f "$md_file" ]; then
            # Extract topic name from filename
            filename=$(basename "$md_file" .md)
            topic_name=$(echo "$filename" | sed 's/_summary_.*//g' | tr '_' ' ' | sed 's/\b\w/\U&/g')
            
            # Create output filename
            output_file="audio/${filename}.mp3"
            
            # Convert to audio
            convert_to_audio "$md_file" "$output_file" "$topic_name"
        fi
    done
else
    echo "❌ Summary directory not found!"
    exit 1
fi

# Display results
echo "📊 Conversion Summary"
echo "===================="
audio_count=$(find audio -name "*.mp3" -type f | wc -l)
echo "Total audio files created: $audio_count"

if [ $audio_count -gt 0 ]; then
    echo ""
    echo "🎧 Generated Audio Files:"
    ls -lh audio/*.mp3 | awk '{print "   " $9 " (" $5 ")"}'
    
    echo ""
    echo "🎯 Usage Tips:"
    echo "   • Audio files are in MP3 format"
    echo "   • Use any media player to listen"
    echo "   • Files are optimized for research review"
    echo "   • Generated from summary files only (not raw data)"
fi

echo ""
echo "✨ Audio conversion complete!" 