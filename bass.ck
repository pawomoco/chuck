TriOsc a => dac;
//TriOsc b => dac;

.4 => a.gain;
//.5 => b.gain;

[233,261,293,311,349,392,415] @=> int x[];
[0,2,4,6,7,9,11] @=> int maj[];
[25,50,75,100] @=> int y[];

while(true){
    Math.random2(0,6) => int n;
    Std.mtof(maj[n]+48) => a.freq;
    //x[n/2] => b.freq;
    Math.random2(0,3) => int m; 
    m*500::ms=>now;
    //m*1000::ms=>now;
    <<< x[n], n,y[m],m>>>;
}
