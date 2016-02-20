use strict;

use POSIX;

my $MAX = 2000000;

sub trueSieve {
    my @sieve = [];
    my $sum = 0;

    foreach my $i (2..$MAX) {
        $sieve[$i] = 1;
    }

    foreach my $i (2..ceil(sqrt($MAX))) {
        foreach my $j ($i+1..$MAX) {
            if ($j % $i == 0) {
                $sieve[$j] = 0;
            }
        }
    }

    foreach my $i (2..$MAX) {
        if ($sieve[$i]) {
            $sum += $i;
        }
    }
    return $sum
}
# I hate you... (right but crazy slow)

sub partialSieve {
    my @sieve = [];
    my $sum = 0;

    foreach my $i (2..$MAX) {
        push(@sieve, $i);
    }

    foreach my $i (2..ceil(sqrt($MAX))+1) {
        for (my $j = 0; $j < $#sieve; $j++) {
            if ($j >= $#sieve) {

                last;
            }
            if ($sieve[$j] % $i == 0 && $sieve[$j] != $i) {
                splice @sieve, $j, 1;
            }
        }
    }

    foreach my $i (@sieve) {
        $sum += $i;
    }

    return $sum;
}
# Omigosh I hate you too... (right but still crazy slow)

sub naive {
    my $sum = 0;

    sub isPrime {
        my $n = shift(@_);
        if ($n == 2) {
            return 1;
        }
        foreach my $i (2..ceil(sqrt($n))) {
            if ($n % $i == 0) {
                return 0;
            }
        }
        return 1;
    }

    foreach my $i (2..$MAX) {
        if (isPrime($i)) {
            $sum += $i;
        }
    }

    return $sum;
}
# Wait, no, I'm sorry, It's PERL that I hate.  Yes, it is Perl that is wrong.

print naive();
