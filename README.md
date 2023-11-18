# Digital Signal Processing Filters and Effects in MATLAB

### Author

Andrei Divinagracia - 301360608

MATLAB DAW is a project for MSE491, Summer 2022, Digital Signal Processing developed by
Andrei Divinagracia (std# 301360608). It contains analog and digital filter desings in
MATLAB which can be applied to Stereo and Mono .wav inputs.

## Installation

Unzip the project_1_submission.zip containing: DSP_project_1.mlapp, README.txt, 
reverbIR.wav, and sample audio snippets.

## Usage

1. The user is able to input a stereo or mono audio input file and the GUI app will function properly

2. There are 2 main categories when picking a filter, filter design and filter type. 
2a.The user is freely able to choose what kind of filter they want to use from choice of
- Butterworth (Analog)
- Chebyshev (Analog)
- Moving Average (Digital)
- Windowed Sinc (Digital)
- Chebyshev (Digital)
2b. Filter Type: Lowpass, high pass, band pass, and band stop

3. User input is limited to a slider so that invalid inputs will is not possible

3. Parameters like window size and window type will only apply to Digital 
controllers, Analog controllers will not be affected

4. Minimized File Control and Filter control user inputs for UX

5. The user is able to save the new file into a .wav into their computer

## Limitations
1. There is no real-time aspect to this app

2.  When using Band Pass and Band Stop Filters, there is no check when the slider 
goes over the lower and upper cutoff frequencies. When they do, the filter type 
goes from a bandpass to a bad (low magnitude) band stop filter, and vice versa

3. No Checks for the frequency limitations means that the user is not sure what they
will listen to or what frequencies make sense. So when the filter is applied, the sound
may be a high pitched screech or a low thum that is inaudible depending on the cutoff 
frequencies used.

4. Non-square window type crashes for bandpass and band stop configurations