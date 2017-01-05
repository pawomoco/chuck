SinOsc a => dac;

[0,3,7,12] @=> int g[];

while (true){
    for(0=>int i;i<4;i++){
        Std.mtof(g[i]+48)*2=>a.freq;
        1=>a.gain;
        .3::second=>now;
    }
}