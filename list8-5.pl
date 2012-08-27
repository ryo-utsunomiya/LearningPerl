use strict;
use warnings;

my $text = <<'EOD';
From: hyuki@hyuki.com
To: tomura@hyuki.com
Subject: 元気ですか

こんにちは、結城浩<hyuki@hyuki.com>です。
先日、佐藤華子さん(sato-hanako@hyuki.com)と、
mamoru.takahashi@hyuki.comさんからメールをもらいました。
EOD

my @mail = ($text =~ /[\w\.-]+@[\w\.-]+/g);
print join(', ', @mail), "\n";