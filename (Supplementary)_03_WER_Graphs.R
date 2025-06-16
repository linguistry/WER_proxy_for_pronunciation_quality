# Import Data

df <- read.csv("(Supplementary)_03_input_Data_Pronunciation_WER.csv")


# Descriptive Statistics
summary(df)


# 2x2 histograms

## Set up the plotting area to a 2x2 grid
par(mfrow = c(2, 2))

### 1. Comprehensibility
hist(df$Comprehensibility_Fair_Avg,
     main = "Comprehensibility",
     xlab = "Score",
     xlim = c(0, 10), 
     ylim = c(0, 80), 
     col = "darkgrey",
     border = "white")

### 2. Accentedness
hist(df$Accentedness_Fair_Avg,
     main = "Accentedness",
     xlab = "Score",
     xlim = c(0, 10),
     ylim = c(0, 80), 
     col = "darkgrey",
     border = "white")

### 3. Azure_Pronunciation
hist(df$Azure_Pronunciation,
     main = "Azure Pronunciation",
     xlab = "Score",
     xlim = c(0, 100),
     ylim = c(0, 80), 
     col = "darkgrey",
     border = "white")

### 4. Kaldi_GOP
hist(df$Kaldi_GOP,
     main = "Kaldi's GOP",
     xlab = "Score",
     xlim = c(0, 100),
     ylim = c(0, 80), 
     col = "darkgrey",
     border = "white")


# WER 
## Set up the plotting area to a 2x3 grid
par(mfrow = c(2, 3))

### 1. Kaldi Vosk 
hist(df$WER_vosk.model.small.en.us.0.15,
     main = "Kaldi with Vosk",
     xlab = "WER",
     xlim = c(0, 3),
     ylim = c(0,150),
     col = "darkgrey",
     border = "white")

### 2. Wav2vec 2.0
hist(df$WER_Wav2vec2,
     main = "Wav2vec 2.0",
     xlab = "WER",
     xlim = c(0, 3),
     ylim = c(0,150),
     col = "darkgrey",
     border = "white")

### 3. HuBERT
hist(df$WER_HuBERT,
     main = "HuBERT",
     xlab = "WER",
     xlim = c(0, 3),
     ylim = c(0,150),
     col = "darkgrey",
     border = "white")

### 4. Whisper Base
hist(df$WER_Base.En, 
     main = "Whisper Base",
     xlab = "WER",
     xlim = c(0, 3),
     ylim = c(0,150),
     col = "darkgrey",
     border = "white")

### 5. Whisper Large-v3
hist(df$WER_Large.v3.EN,
     main = "Whisper Large-v3",
     xlab = "WER",
     xlim = c(0, 3),
     ylim = c(0,150),
     col = "darkgrey",
     border = "white")

### 6. Azure Pronunciation Assessment
hist(df$WER_Azure,
     main = "Azure Pronunciation Assessment",
     xlab = "WER",
     xlim = c(0, 3),
     ylim = c(0,150),
     col = "darkgrey",
     border = "white")

#End.