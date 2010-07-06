use utf8;

use strict;
use warnings;

use Test::More;

eval "use Test::Spelling";
plan skip_all => "Test::Spelling required for spell checking"
    if $@;

my @stopwords;
for (<DATA>) {
    chomp;
    push @stopwords, $_
        unless /\A (?: \# | \s* \z)/msx;    # skip comments, whitespace
}

add_stopwords(@stopwords);
set_spell_cmd('aspell list -l en');

# This prevents a weird segfault from the aspell command - see
# https://bugs.launchpad.net/ubuntu/+source/aspell/+bug/71322
local $ENV{LC_ALL} = 'en_US';
all_pod_files_spelling_ok();

__DATA__
Anno
BCE
CLDR
CPAN
DateTime
DateTimes
Datetime
Datetimes
EEEE
EEEEE
Formatters
GGGG
GGGGG
IEEE
LLL
LLLL
LLLLL
Liang's
MMM
MMMM
MMMMM
Measham's
POSIX
PayPal
QQQ
QQQQ
Rata
SU
Storable
TZ
Tsai
UTC
VVVV
ZZZZ
afterwards
bian
ccc
cccc
ccccc
conformant
datetime
datetime's
datetimes
dian
eee
eeee
eeeee
fallback
formatter
hh
iCal
ji
na
ni
nitty
other's
proleptic
qqq
qqqq
uu
vvvv
yy
yyyy
yyyyy
zzzz
mutiplication
IEEE
Flávio
Glock
Rata
Rolsky
Soibelmann
