 SinOsc a => dac;

[0,4,7,12] @=> int maj[];
[0,3,7,12] @=> int min[];
0=>int i;
0=>int count;
0=>int s;

while (true)
    {
        Math.random2(0,2)=>count;
        Math.random2(1,3)=>s;
        <<<"times",s,"degree",count>>>;
        for(0=>int j; j<s;j++)
            {
                if(count==0)
                {
                    for(0=>i;i<4;i++)
                    {
                        Std.mtof(maj[i]+48)*2=>a.freq;
                        1=>a.gain;
                        .3::second=>now;
                    }
                }
                else if(count==1)
                {
                    for(0=>i;i<4;i++)
                    {
                        Std.mtof(maj[i]+50)*2=>a.freq;
                        1=>a.gain;
                        .3::second=>now;
                    }
                }
                else
                {
                    for(0=>i;i<4;i++)
                    {
                        Std.mtof(min[i]+52)*2=>a.freq;
                        1=>a.gain;
                        .3::second=>now;
                    }
                }
            }
        }