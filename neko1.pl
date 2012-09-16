#!/usr/bin/perl -T
use strict;
use wanings;
use Jcode;
use CGI qw(:standard);

my $kanjicode = 'Shift_JIS';

print header(-charset => 'Shift_JIS');
print start_html('猫語・赤ちゃん語変換CGI');
print h1({-align => 'center'}, '猫語・赤ちゃん語変換CGI');
print hr;

if (param('mycmd') eq 'convert') {
    &do_convert;
} else {
    &do_form;
}
exit(0);

sub do_form {
    print startform(
        -method => 'POST',
        -action => 'neko1.cgi'
    );
    
    print h3('選んでください');
    print blockquote(
        radio_group(
            -name => 'mytype',
            -values => ['猫語','赤ちゃん語'],
            -default => '猫語',
            -linebreak => 'true',
        )
    )
    
    print h3('文章を入力してください:');
    print blockquote(
        textarea(
            -name => 'mymsg',
            -rows => '5',
            -columns => '40'
        )
    );
    print br;
    print submit(-value => '変換');
    print reset;
    print hidden(
        -name => 'mycmd',
        -value => 'convert'
    );
    print endform;
    print end_html;
}

sub do_convert {
    my $msg = param('mymsg');
    Jcode::convert(\$msg, $kanjicode);
    print h2('もとの文章');
    print blockquote(pre($msg));
    print h2('変換後の文章');
    my $result;
    if ($param('mytype') eq '猫語') {
        $result = &nekoize($msg);
    } else {
        $result = &akatyanize($msg);
    }
    print blockquote(pre($result));
    print hr;
    print ul(
        li(
            a(
                { href => url() },
                'もう一度'
            )
        )
    );
    print end_html;
}

sub nekoize {
    my ($s) = @_;
    $s =~ s/な/にゃ/g;
    return $s;
}

sub akatyanize {
    my ($s) = @_;
    $s =~ s/さ/ちゃ/g;
    return $s;
}