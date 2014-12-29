use strict;

my $rh_data = {};
while (<>) {
    chomp;
    if ( /order id:\s+(\d+)\s+sku id:\s+(\d+)/ ) {
        $rh_data->{$2}++;
    }
}

foreach my $i ( sort { $a <=> $b } keys %{$rh_data} ) {
    print join("\t", $i, $rh_data->{$i}),"\n";
}
