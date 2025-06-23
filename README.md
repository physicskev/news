# News Research Repository

This repository contains news research, summaries, and analysis on various topics of interest.

## Structure

```
news/
├── summary/          # Processed summaries and analysis
├── raw_data/         # Raw search results and source data
├── audio/            # MP3 audio files generated from summaries
├── convert_to_audio.sh # Text-to-speech conversion script
└── README.md         # This file
```

## File Naming Convention

Files are named with timestamps for easy chronological organization:
- Format: `topic_type_YYYYMMDD_HHMMSS.md`
- Example: `b2_bomber_summary_20250622_235343.md`
- Audio: `b2_bomber_summary_20250622_235343.mp3`

## Current Research

### B-2 Bomber USA (June 22, 2025 - 23:53:43)
- **Summary**: `summary/b2_bomber_summary_20250622_235343.md`
- **Raw Data**: `raw_data/b2_bomber_raw_20250622_235343.md`
- **Audio**: `audio/b2_bomber_summary_20250622_235343.mp3` (5.9M)
- **Search Query**: "b2 bomber usa"
- **Sources**: 10 articles analyzed
- **Focus**: Recent Iran nuclear facility operations and stealth bomber capabilities

### James Webb Space Telescope (June 22, 2025 - 23:58:16)
- **Summary**: `summary/jwst_summary_20250622_235816.md`
- **Raw Data**: `raw_data/jwst_raw_20250622_235816.md`
- **Audio**: `audio/jwst_summary_20250622_235816.mp3` (8.5M)
- **Search Query**: "james webb space telescope"
- **Sources**: 10 articles analyzed
- **Focus**: Revolutionary astronomical discoveries and infrared space observatory capabilities

### Quantum Mechanics (June 22, 2025 - 23:58:16)
- **Summary**: `summary/quantum_mechanics_summary_20250622_235816.md`
- **Raw Data**: `raw_data/quantum_mechanics_raw_20250622_235816.md`
- **Audio**: `audio/quantum_mechanics_summary_20250622_235816.mp3` (11M)
- **Search Query**: "quantum mechanics"
- **Sources**: 10 articles analyzed
- **Focus**: Fundamental physics theory and modern technological applications

## Audio Conversion

### Text-to-Speech Features
- **Automated Conversion**: Run `./convert_to_audio.sh` to generate MP3 files
- **Technology Stack**: PANDOC (markdown to text) + MIMIC (text-to-speech)
- **Voice**: SLT voice for natural-sounding audio
- **Format**: MP3 files optimized for research review
- **Source**: Converts summary files only (not raw data)

### Requirements
```bash
# Install required tools
brew install pandoc
brew install mimic
```

### Usage
```bash
# Convert all summaries to audio
./convert_to_audio.sh

# Audio files will be created in the audio/ directory
```

## Usage

1. **Raw Data**: Contains unprocessed search results with metadata
2. **Summary**: Contains analyzed and synthesized information
3. **Audio**: MP3 files for listening to research summaries
4. **Timestamps**: Allow tracking of information currency and research progression

## Research Methodology

- Web search using DuckDuckGo
- Multiple source verification
- Timestamp-based organization
- Separation of raw data and analysis
- Comprehensive analysis of 10 sources per topic
- Text-to-speech conversion for accessibility

## Topics Covered

- **Military Technology**: B-2 Stealth Bombers
- **Space Science**: James Webb Space Telescope
- **Fundamental Physics**: Quantum Mechanics

---

*Repository created for systematic news research and analysis with multimedia accessibility.*
