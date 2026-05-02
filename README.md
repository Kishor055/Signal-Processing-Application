# 🎧 Signal Processing Application – Adaptive Noise Reduction

## 📌 Overview
This project demonstrates a **Digital Signal Processing (DSP)** application for **noise reduction in audio signals** using MATLAB.  

The system implements an **Adaptive LMS (Least Mean Squares) Filter** to remove additive noise while preserving the integrity of the original signal.

Signal processing techniques like filtering, spectral analysis, and adaptive algorithms are widely used in real-world systems such as audio enhancement, communication systems, and biomedical signal processing :contentReference[oaicite:0]{index=0}.

---

## 🚀 Features
- Additive White Gaussian Noise (AWGN) simulation  
- Adaptive noise cancellation using LMS algorithm  
- Signal-to-Noise Ratio (SNR) performance evaluation  
- Time-domain waveform visualization  
- Spectrogram analysis  
- Audio input/output processing  

---

## 🧠 System Architecture

### 🔷 Block Diagram

```

```
    Clean Signal (d[n])
            │
            ▼
       (+) Summation ◄─────────────── Noise n[n]
            │
            ▼
    Noisy Signal x[n]
            │
            ▼
    ┌─────────────────────┐
    │  Adaptive Filter    │
    │     (LMS)           │
    └─────────────────────┘
            │
            ▼
    Estimated Noise ŷ[n]
            │
            ▼
       (-) Subtraction
            │
            ▼
    Output Signal e[n]
```

(Filtered / Noise Reduced Signal)

```

---

## ⚙️ Methodology

1. **Input Audio Signal**
   - Load clean audio signal (speech/music)

2. **Noise Addition**
   - Add AWGN to simulate real-world noise:
```

x[n] = d[n] + n[n]

```

3. **Adaptive Filtering**
- Apply LMS algorithm:
```

w(n+1) = w(n) + μ · e(n) · x(n)

```

4. **Noise Cancellation**
- Subtract estimated noise:
```

e[n] = x[n] - ŷ[n]

```

5. **Performance Evaluation**
- Compute SNR improvement

---

## 📊 Results

- Achieved approximately **70% noise reduction**
- Improved Signal-to-Noise Ratio (SNR)
- Preserved signal quality with minimal distortion

---

## 🛠️ Tools & Technologies

- MATLAB  
- DSP System Toolbox  
- Signal Processing Techniques  
- Adaptive Filtering (LMS Algorithm)  

---

## 📂 Project Structure

```

Signal-Processing-Application/
│
├── main.m
├── src/
│   ├── addAWGNNoise.m
│   ├── adaptiveNoiseCancellation.m
│   ├── computeMetrics.m
│   └── visualizeResults.m
│
├── input/
│   └── input_audio.wav
│
└── output/
└── filtered_audio.wav

````

---

## ▶️ How to Run

1. Open MATLAB  
2. Place input audio in `/input` folder  
3. Run:
```matlab
main
````

4. Output will be saved in `/output` folder

---

## 📈 Applications

* Noise-cancelling headphones 🎧
* Speech enhancement systems
* Biomedical signal processing (ECG/EEG)
* Wireless communication systems
* Audio restoration

---

## 🔮 Future Improvements

* Implement **Normalized LMS (NLMS)**
* Add **Wiener filtering comparison**
* Real-time processing using microphone input
* GUI using MATLAB App Designer

---

## 👨‍💻 Author

**Kishor**

* Digital Signal Processing Enthusiast
* MATLAB & Python Developer

---

## 📜 License

This project is open-source and available under the MIT License.

---

## ⭐ Acknowledgment

This project is inspired by fundamental concepts of **Digital Signal Processing and adaptive filtering techniques** widely used in modern engineering applications.

---


