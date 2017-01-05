SinOsc a => dac;

[0,4,7,12] @=> int maj[];
[0,3,7,12,0,3,7,12] @=> int min[];
0=>int i;
0=>int count;
0=>int s;
.5=>a.gain;

while (true)
    {
        <<<"times",count,"degree",count>>>;
        for(0=>count; count<3;count++)
            {
                if(count==0)
                {
                    for(0=>i;i<4;i++)
                    {
                        Std.mtof(maj[i]+48)*2=>a.freq;
                        1=>a.gain;
                        .25::second=>now;
                    }
                }
                else if(count==1)
                {
                    for(0=>i;i<4;i++)
                    {
                        Std.mtof(maj[i]+50)*2=>a.freq;
                        1=>a.gain;
                        .25::second=>now;
                    }
                }
                else
                {
                    for(0=>i;i<8;i++)
                    {
                        Std.mtof(min[i]+52)*2=>a.freq;
                        1=>a.gain;
                        .25::second=>now;
                    }
                }
            }
        }