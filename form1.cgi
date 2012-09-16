#!/usr/bin/perl -T
use strict;
use warnings;

use CGI qw(-debug :standard);

print header;

print start_html('FORM Sample');
print h1({-align => 'center'}, 'FORM Sample');
print hr;

print h2('Form');
print startform(
    -method => 'POST',
    -action => 'form1.cgi'
);

print h3('Name:');
print blockquote(textfield('myname'));

print h3('Sex:');
print blockquote(
    radio_group(
        -name => 'mysex',
        -values => [ 'Male', 'Female' ],
        -default => 'Male',
        -linebreak => 'true',
    )
);

print h3('Language');
print blockquote(
    checkbox_group(
        -name => 'mylang',
        -values => ['C', 'C++', 'Perl', 'Java', 'Others'],
        -default => ['C', 'C++'],
        -linebreak => '',
    )
);

print h3('Comemnt:');
print blockquote(
    textarea(
        -name => 'mycomment',
        -rows => '5',
        -columns => '40'
    )
);
print br;
print submit(-value => 'Send');
print reset;
print endform;

print hr;
print h2('Result');
foreach my $key (param) {
    print strong($key);
    print ' = ';
    foreach my $value (param($key)) {
        print '[', strong($value), ']';
    }
    print br;
}

print end_html;