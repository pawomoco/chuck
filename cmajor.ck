SinOsc a => dac;
//TriOsc b => dac;

1 => a.gain;
//.5 => b.gain;

[246,261,293,329,349,392,440] @=> int x[];
[25,5,75,100] @=> int y[];

while(true){
    
    Math.random2(0,6) => int n;
    x[n] => a.freq;
    //x[n/2] => b.freq;
    Math.random2(0,3) => int m;
    m*100::ms=>now;
    //m*1000::ms=>now;
    <<< x[n], n,y[m],m>>>;
}