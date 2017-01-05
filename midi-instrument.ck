Flute a => Pan2 p => dac;
[0,2,4,6,7,9,11] @=> int maj[]; //what
while (true){
    Math.random2(0,6) => int n;
    Std.mtof(maj[n]+48)*3 => a.freq;
    a.noteOn(0.2);
    Math.random2f(500,1000)::ms=>now;
    1=>p.pan;
}


/*for(0=>int i;i<8;i++){
    Std.mtof(maj[i]+48) => a.freq;
    a.noteOn(0.5);
    .5::second=>now;
}
*/