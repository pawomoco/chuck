SinOsc a => dac;

1 => a.gain;
for (0=>int i; i<5000; i++){
    i => a.freq;
    <<< i >>>;
    1::ms => now;
}