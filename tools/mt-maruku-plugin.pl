package MT::Plugins::Maruku;
use vars qw( $MARUKU );

$MARUKU = "/usr/bin/maruku.sh";

use MT;

MT->add_text_filter('Maruku' => {
  label => 'Maruku',
  docs => 'http://maruku.rubyforge.org',
  on_format => \&maruku
});

sub maruku {
	use File::Temp qw/ tempfile tempdir /;
	my $text=shift;
	my $ctx=shift;

	($fh, $filename) = tempfile();
	print $fh  $text;
	close $fh ;

	$fileout = $filename.".out"; 

	@args = (
		$MARUKU, 
		"--html-frag", 
		"-m", "blahtex",
		"-o", $fileout,
		$filename);
    system(@args) == 0
	 or die "system @args failed: $?";
	
	# read entire file
	$result  = "";
	open SLURP, $fileout or die "can't open  $fileout: $!";
	while ($data = <SLURP>) {
		$result = $result . $data;
	}
	close SLURP or die "cannot close  $fileout: $!";

#	 "<h2>maruku</h2>" . $filename . "<br>-----<br>". $text .  "<br>-----<br>" . $result . "<br>-----<br>" ;

	$result;
}
