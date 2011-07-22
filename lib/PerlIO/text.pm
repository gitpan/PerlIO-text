package PerlIO::text;
BEGIN {
  $PerlIO::text::VERSION = '0.003';
}
use 5.008;
use strict;
use warnings;

use XSLoader;

XSLoader::load(__PACKAGE__, __PACKAGE__->VERSION);

1;



=pod

=head1 NAME

PerlIO::text - Open a text file portably

=head1 VERSION

version 0.003

=head1 SYNOPSIS

 open my $fh, '<:text(UTF-16LE)', $filename;

=head1 DESCRIPTION

This module provides a textual pseudo-layer. Instead of pushing itself, it pushes the right layers for that platform to open text files in the specified encoding.

=head1 SYNTAX

This modules does not have to be loaded explicitly, it will be loaded automatically by using it in an open mode.  The module has the following general syntax: C<<:text(charset)>>. C<charset> is mandatory and without it this module will give an error. Any character set known to L<Encode> may be given as an argument.

=head1 AUTHOR

Leon Timmermans <leont@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Leon Timmermans.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

#ABSTRACT: Open a text file portably

