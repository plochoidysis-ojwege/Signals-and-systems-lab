# Study of signals and systems

## Lab Objectives

 The objectives of this lab are:
- Understanding and plotting specific signals: signum, rectangular, triangular, sinc, impulse, step, square, discrete exponential, and discrete cosine.
- Using subplots to analyze the relationship between frequencies for discrete cosine and exponential signals.
- Calculating inner products of signals and using them to compute energy and power, comparing hand calculations with code results.
- Stating and verifying the Cauchy-Schwarz inequality.
- Classifying systems based on linearity, time-invariance, causality, and stability.
- Performing advanced signal operations and analyze their properties.
  
  ## Results
  ### Plots
  ---
 ***Plots for Specific Signals***
 
 - C.T signals
 
 The following are the plots after running the codes for the continuous-time
 signals

![ Plots for Specific Signals-C.T signals](https://github.com/plochoidysis-ojwege/Signals-and-systems-lab/blob/main/Signals%20and%20systems%20lab%201/Results/Plots/Plot%20of%20%20CT%20signals.png)

 - D.T signals
   
The following are the plots after running the codes for the discrete-time signals.
 
![ Plots for Specific Signals-D.T signals](https://github.com/plochoidysis-ojwege/Signals-and-systems-lab/blob/main/Signals%20and%20systems%20lab%201/Results/Plots/Plot%20of%20DT%20signals.png)

---
***Frequency Analysis Using Subplots***

 - Cosine signals
   
Comparing two discrete cosine signals with k = 2 and l = 8, the plots appear identical. Due to the periodic nature of discrete signals, l = 8 is equivalent to k = −2. This demonstrates frequency symmetry in the discrete domain. k +l =N ⇒ 2+8=10 verifying DFT symmetry properties


![ Frequency Analysis Using Subplots-Cosine signals](https://github.com/plochoidysis-ojwege/Signals-and-systems-lab/blob/main/Signals%20and%20systems%20lab%201/Results/Plots/Plot%20of%20cosine%20signals.png)

 - Real parts of exponential signals


Similar to the cosine signals, the discrete exponential signals with k+l = N show that they represent the same frequency but with different phase shifts, indicating mirrored frequencies

![ Frequency Analysis Using Subplots-Real parts of exponential signals](https://github.com/plochoidysis-ojwege/Signals-and-systems-lab/blob/main/Signals%20and%20systems%20lab%201/Results/Plots/Plot%20of%20exponential%20signals.png)

---
***Hand calculations***

These are the calculations by hand - https://github.com/plochoidysis-ojwege/Signals-and-systems-lab/blob/main/Signals%20and%20systems%20lab%201/Results/calculations%20by%20hand/hands.pdf

---
***The codes***

Further , the code results mostly matched the hand calculations, with negligable differences(floating-point precision in MATLAB gave a very small residual) .Here are the codes :
https://github.com/plochoidysis-ojwege/Signals-and-systems-lab/tree/main/Signals%20and%20systems%20lab%201/Results/matlab%20codes

---
## For more comprehensive overview, the lab report has it all: [Signals_and_systems_Lab_1.pdf](https://github.com/plochoidysis-ojwege/Signals-and-systems-lab/blob/main/Signals%20and%20systems%20lab%201/The%20Lab%20Report/Signals_and_systems_Lab_1.pdf) 
