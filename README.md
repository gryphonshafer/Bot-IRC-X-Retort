# NAME

Bot::IRC::X::Retort - Bot::IRC plugin for bot-retorting to key words

# VERSION

version 1.01

[![Build Status](https://travis-ci.org/gryphonshafer/Bot-IRC-X-Retort.svg)](https://travis-ci.org/gryphonshafer/Bot-IRC-X-Retort)
[![Coverage Status](https://coveralls.io/repos/gryphonshafer/Bot-IRC-X-Retort/badge.png)](https://coveralls.io/r/gryphonshafer/Bot-IRC-X-Retort)

# SYNOPSIS

    use Bot::IRC;

    Bot::IRC->new(
        connect => { server => 'irc.perl.org' },
        plugins => ['Retort'],
    )->run;

# DESCRIPTION

This [Bot::IRC](https://metacpan.org/pod/Bot::IRC) plugin is for bot-retorting to key words.

    retort <term> with <retort string>
    retort <term> clear

# SEE ALSO

You can look for additional information at:

- [Bot::IRC](https://metacpan.org/pod/Bot::IRC)
- [GitHub](https://github.com/gryphonshafer/Bot-IRC-X-Retort)
- [CPAN](http://search.cpan.org/dist/Bot-IRC-X-Retort)
- [MetaCPAN](https://metacpan.org/pod/Bot::IRC::X::Retort)
- [AnnoCPAN](http://annocpan.org/dist/Bot-IRC-X-Retort)
- [Travis CI](https://travis-ci.org/gryphonshafer/Bot-IRC-X-Retort)
- [Coveralls](https://coveralls.io/r/gryphonshafer/Bot-IRC-X-Retort)
- [CPANTS](http://cpants.cpanauthors.org/dist/Bot-IRC-X-Retort)
- [CPAN Testers](http://www.cpantesters.org/distro/T/Bot-IRC-X-Retort.html)

# AUTHOR

Gryphon Shafer <gryphon@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2016 by Gryphon Shafer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
