SinOsc a => Pan2 p => dac;
//TriOsc b => dac;

.3=> a.gain;
//.5 => b.gain;

[233,261,293,311,349,392,415] @=> int x[];
[25,50,75,100] @=> int y[];
[0,2,4,6,7,9,11] @=> int maj[];

while(true){
    
    Math.random2(0,6) => int n;
    Std.mtof(maj[n]+48)*2 => a.freq;
    //x[n/2] => b.freq;
    Math.random2(0,3) => int m; 
    
    y[m]*10::ms=>now;
    //m*1000::ms=>now;
    <<< x[n], n,y[m],m>>>;
}


/*
4 => int value;

while (value > 0){
    Math.random2(0,6) => int n;
    x[n]*2 => a.freq;
    Math.random2(0,3) => int m;
    -1=>p.pan;
    <<< y[m] >>>; 
    if (y[m] == 100){
        m*100::ms=>now;
        4 => value;
    }
    else if(y[m] == 25){
        m*100::ms=>now;
        3 => value;
    }
    else if(y[m] == 50){
        m*100::ms=>now;
        2 => value;
    }
    else{
        m*100::ms=>now;
        1=>value;
    }
        
}
*/