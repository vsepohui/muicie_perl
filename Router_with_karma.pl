# Router [with_karma]
# Normalize signals in 32 Channels 

use 5.022;

my (@list, @out); 
my $norm;
for (1..32) {
  $s = <>;  # Read one channels: integers separated by spaces
  chomp $s; # Chomp endline
  @list = split /\s/, $s;         # Split by space separator
  $norm = scalar (@list) . '.0';  # $norm - number of signal in channel
  if ($norm) {                    # If got Signals in Channel
	                              # Pass signal only with Good Karma,
	                              # mormalize all signals by $norm 
	                              # - it's count of signals in channel
     @out = map {$_ / $norm} grep {karma ($_) >= 0} @list; 
    say join " ", @out;           # Output Channell
  } else { 
    say '';                       # If no signals in Channel
  }
}

# GPU Officer Trunaev, Yahwe.
