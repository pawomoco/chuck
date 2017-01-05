SinOsc a => dac;

[0,2,3,5,7] @=> int scale[];
.6 => a.gain;

while (true)
{
    Math.random2(0,4) => int n;
    Math.random2(1,100) => int m;
    Std.mtof(scale[n]+48)*2 => a.freq;
    //Math.random2(1,440) => a.freq;
    m*10::ms => now;
}
