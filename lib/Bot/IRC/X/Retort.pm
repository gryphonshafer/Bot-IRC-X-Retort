package Bot::IRC::X::Retort;
# ABSTRACT: Bot::IRC plugin for bot-retorting to key words

use strict;
use warnings;

# VERSION

sub init {
    my ($bot) = @_;
    $bot->load('Store');

    $bot->hook(
        {
            to_me => 1,
            text  => qr/^retort\s+(?<term>\([^\)]+\)|\S+)\s+with\s+(?<retort>.+)/i,
        },
        sub {
            my ( $bot, $in, $m ) = @_;

            my %retorts = %{ $bot->store->get('retorts') || {} };
            push( @{ $retorts{ lc( $m->{term} ) } }, $m->{retort} );
            $bot->store->set( 'retorts' => \%retorts );

            $bot->reply_to('OK.');
        },
    );

    $bot->hook(
        {
            to_me => 1,
            text  => qr/^retort\s+(?<term>\([^\)]+\)|\S+)\s+clear\b/i,
        },
        sub {
            my ( $bot, $in, $m ) = @_;

            my %retorts = %{ $bot->store->get('retorts') || {} };
            delete $retorts{ lc( $m->{term} ) };
            $bot->store->set( 'retorts' => \%retorts );

            $bot->reply_to('OK.');
        },
    );

    $bot->hook(
        {
            command => 'PRIVMSG',
        },
        sub {
            my ( $bot, $in ) = @_;

            my %retorts = %{ $bot->store->get('retorts') || {} };
            my @terms   =
                map { $_->[0] } sort { $a->[1] <=> $b->[1] } map { [ $_, rand ] }
                grep { $in->{text} =~ /\b$_\b/i } keys %retorts;

            if (@terms) {
                my @retorts = @{ $retorts{ $terms[ rand() * @terms ] } };
                $bot->reply( $retorts[ rand() * @retorts ] ) if (@retorts);
            }
        },
    );

    $bot->helps( retort =>
        'Retort with statements. ' .
        'Usage: retort <term> with <retort string>; retort <term> clear.',
    );
}

1;
__END__
=pod

=begin :badges

=for markdown
[![Build Status](https://travis-ci.org/gryphonshafer/Bot-IRC-X-Retort.svg)](https://travis-ci.org/gryphonshafer/Bot-IRC-X-Retort)
[![Coverage Status](https://coveralls.io/repos/gryphonshafer/Bot-IRC-X-Retort/badge.png)](https://coveralls.io/r/gryphonshafer/Bot-IRC-X-Retort)

=end :badges

=head1 SYNOPSIS

    use Bot::IRC;

    Bot::IRC->new(
        connect => { server => 'irc.perl.org' },
        plugins => ['Retort'],
    )->run;

=head1 DESCRIPTION

This L<Bot::IRC> plugin is for bot-retorting to key words.

    retort <term> with <retort string>
    retort <term> clear

=head1 SEE ALSO

You can look for additional information at:

=for :list
* L<Bot::IRC>
* L<GitHub|https://github.com/gryphonshafer/Bot-IRC-X-Retort>
* L<CPAN|http://search.cpan.org/dist/Bot-IRC-X-Retort>
* L<MetaCPAN|https://metacpan.org/pod/Bot::IRC::X::Retort>
* L<AnnoCPAN|http://annocpan.org/dist/Bot-IRC-X-Retort>
* L<Travis CI|https://travis-ci.org/gryphonshafer/Bot-IRC-X-Retort>
* L<Coveralls|https://coveralls.io/r/gryphonshafer/Bot-IRC-X-Retort>
* L<CPANTS|http://cpants.cpanauthors.org/dist/Bot-IRC-X-Retort>
* L<CPAN Testers|http://www.cpantesters.org/distro/T/Bot-IRC-X-Retort.html>

=for Pod::Coverage init

=cut
