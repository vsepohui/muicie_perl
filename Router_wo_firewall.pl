# Router [without_firewall]
# Normalize signals in 32 Channels 

use 5.022;

my (@list, @out); 
my $norm;
for (1..32) {
  $s = <>;  # Read one channels: integers separated by spaces
  chomp $s; # Chomp endline
  @list = split /\s/, $s;           # Split by space separator
  $norm = scalar (@list) . '.0';    # $norm - number of signal in channel
  if ($norm) {                      # If got Signals in Channel
     @out = map {$_ / $norm} @list; # Normalize all signals by $norm - count of signals in channel
    say join " ", @out;             # Output Channell
  } else { 
    say '';                         # If no signals in Channel
  }
}

# GPU Officer Trunaev, Yahwe.
