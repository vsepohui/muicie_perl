// CODE BY GPU OFFICER YAHWE, SUN BASSLINE

Impulse i => dac; // => WvOut w;
.5 => i.gain;


;
//("foo.wav",  IO.INT24) => w.wavFilename; 


now => time t;
now => time st;
dur dt;
0 => float d;
0 => float d2;
0 => int step;


while( step < 1000)
{
	now => t;
    t - st => dt;
    dt / 1::second => d; 
    d * 440 => d;	
    0 => float r;
    if (d == 0) {
		0 => r;
    } else {
		d - step => d;
		<<<d>>>;
		
		if (d >= 1) {
			step + 1 => step;
		}
		
		if (Math.floor(step / 2.0) == step / 2.0) {
			<<<"+">>>;
			Math.sqrt(1-d*d) => r;
		} else {
			<<<"-">>>;
			-1 * Math.sqrt(1-d*d) => r;
		}
    }
    
	r => i.next;
    
	0.0001::second => now;
}



