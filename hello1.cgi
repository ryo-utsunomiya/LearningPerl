#!/usr/bin/perl -T
use strict;
use warnings;

use CGI qw(:standard);
print header;
print start_html('Hello');
print h1('This is hello.cgi');
print end_html;