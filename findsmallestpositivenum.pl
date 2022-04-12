## Call this sub and pass the whole unsorted array to find out the smallest positive number not present in the input array.
sub find_smallest_positive_num { 
    my @numbers = @_; 
    my @sorted_nums = sort { $a <=> $b} @numbers; 
    foreach my $i (0 .. (@sorted_nums-1)) { 
        my $num = $sorted_num[$i]; 
        next if $num < 0; 
        my $next_num = $sorted_num[$i+1]; 
        return $next_num if(($num+1) != $next_num); 
    }
}
