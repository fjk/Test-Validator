#!/usr/bin/env perl;
use v5.30;
use Test::More qw(no_plan);

use Test::Exception; 

use_ok( 'Test::Validator' );

ok ( scalar Test::Validator::validate('0..2') == 3, 
     'ok valid string produces correct number of elements');

note ("starting test of forbidden characters in the string form");

dies_ok {
	{ Range::Validator::validate('xxx_invalidstring_xxx') }
} "expected to die with invalid character";


