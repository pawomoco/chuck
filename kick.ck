SndBuf a => dac;

me.dir() => string path;
<<<path>>>;
"audio/kick_01.wav"=>string file;

path + file => file;

<<<file>>>;

file => a.read;
while(true){
    Math.random2f(.5,1)=>a.gain;
    Math.random2f(.2,1)=>a.rate;
    0=>a.pos;
    1000::ms=>now;
}