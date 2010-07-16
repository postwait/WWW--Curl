package WWW::Curl::Easy;

use strict;
use warnings;
use Carp;

our $VERSION = '4.12';

use WWW::Curl ();
use Exporter  ();

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

our @EXPORT = qw(
);

$WWW::Curl::Easy::headers = "";
$WWW::Curl::Easy::content = "";

sub const_string {
	my ($self, $constant) = @_;
	return constant($constant,0);
}

sub AUTOLOAD {
    our $AUTOLOAD;
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.

    ( my $constname = $AUTOLOAD ) =~ s/.*:://;
    my $value = constant( $constname, 0 );
    if($!) {
        croak("Undefined subroutine &$AUTOLOAD called");
    }
    return $value;
}

1;

__END__

Copyright (C) 2000-2005,2008 Daniel Stenberg, Cris Bailiff,
Sebastian Riedel, et al.
 
You may opt to use, copy, modify, merge, publish, distribute and/or sell
copies of the Software, and permit persons to whom the Software is furnished
to do so, under the terms of the MPL or the MIT/X-derivate licenses. You may
pick one of these licenses.
