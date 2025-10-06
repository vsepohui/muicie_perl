my $sum = <>;
chomp $sum;
my ($int, $part) = split /\./, $sum;
$part ||= '00';
if (length ($part) == 1) {
  $part .= '0';
}
say $int . $part;

# Cashdesk CPU Sourcecode, 2025, GPU Officer Yahwe, Russia, Siberia, Uray
# $Om->Sing('Delf');
