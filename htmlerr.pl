use strict;
use warnings;

my $name = 'hyuki';
my $mail = 'hyuki@hyuki.com';

my $html = <<"EOD";
<!DOCTYPE HTML>
<html lang="ja-JP">
<head>
	<meta charset="UTF-8">
	<title>$nameのホームページ</title>
</head>
<body>
<h1 id="heading">$nameのホームページ</h1>
<p>$nameのホームページへようこそ</p>
<p>ぜひメールをくださいね。
	アドレスは<a href="mailto:$mail">$mail</a>です。</p>
</body>
</html>
EOD

print "$html";