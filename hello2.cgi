#!/usr/bin/perl -T
use strict;
use warnings;
use CGI;

my $cgi = new CGI;
print $cgi->header;
print $cgi->start_html('Hello');
print $cgi->h1('This is hello.cgi');
print $cgi->end_html;