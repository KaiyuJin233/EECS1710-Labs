import processing.sound.*;

Amplitude amplitude;
AudioIn in;
FFT fft;
int specSize = 512;
float sampleRate = 44100;
float[] spectrum = new float[specSize];
int band = 0;
float amp = 0;
float freq = 0;

void setupSound() {
  amplitude = new Amplitude(this);
  fft = new FFT(this, specSize);
  in = new AudioIn(this, 0);
  in.start();
  amplitude.input(in);
  fft.input(in);
}


void updateSound() {
  amp = getAmp();
  
  freq = getFreq();
}

float getFreq() {
  fft.analyze(spectrum);
  
  band = 0;
  
  for(int i = 0; i < spectrum.length; i++) {   
    if (spectrum[i] > spectrum[band]) band = i;
  }
  
  return band * 0.5 * sampleRate / (float) specSize;
}

float getAmp() {
  return amplitude.analyze();
}
