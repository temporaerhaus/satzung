use strict;
use warnings;

use 5.26.1;

my $changelog = `git log --date=format:'%d/%m/%Y' --pretty=format:"%ad;%s" satzung.md`;
my @changes = split(/\n/, $changelog);

my $output = "\\begin{description}\n";
foreach my $change (@changes) {
  chomp($change);
  my ($date, $subject) = split(/;/, $change);
  chomp($date);
  chomp($subject);
  $output .= "\\item[$date: ] $subject \n";
}
$output .= "\\end{description}\n";
say $output;
