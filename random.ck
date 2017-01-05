<<< "hello motherfucker" >>>;

SinOsc o => dac;
TriOsc f => dac;

1 => float vol;
vol => o.gain;
1 => f.gain;
//float freq => o.freq;
while (true){
    Math.random2f (30,900) => o.freq;
    .1::second => now;
    
    Math.random2f (30,400) => f.freq;
    .5::second => now;
}