use diagnostics;
use strict;
use warnings;
use Test::More tests => 2;
BEGIN {
    use_ok('Digest::Haval256')
};

BEGIN {
    open INFILE, "t/file1.test";
    my $haval = new Digest::Haval256;
    $haval->addfile(*INFILE);
    my $digest = $haval->hexdigest();
    close INFILE;
    is("c9c7d8afa159fd9e965cb83ff5ee6f58aeda352c0eff005548153a61551c38ee",
        $digest);
};

