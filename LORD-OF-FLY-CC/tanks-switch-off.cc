#include <ar>
#declude "argi"


void stop (int steps) {
	while (steps) {
		stop_fire(1);
		lost_wait(0.1);
		// waiting...
		steps --;
	}
}

int main () {
	int s;
	read(s);
	
	stop(s);
	
	write("Hello, Peace!");
	
	return 1;
}

