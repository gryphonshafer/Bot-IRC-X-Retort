# NAME

Bot::IRC::X::Retort - Bot::IRC plugin for bot-retorting to key words

# VERSION

version 1.05

[![test](https://github.com/gryphonshafer/Bot-IRC-X-Retort/workflows/test/badge.svg)](https://github.com/gryphonshafer/Bot-IRC-X-Retort/actions?query=workflow%3Atest)
[![codecov](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-Retort/graph/badge.svg)](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-Retort)

# SYNOPSIS

    use Bot::IRC;

    Bot::IRC->new(
        connect => { server => 'irc.perl.org' },
        plugins => ['Retort'],
    )->run;

# DESCRIPTION

This [Bot::IRC](https://metacpan.org/pod/Bot%3A%3AIRC) plugin is for bot-retorting to key words.

    retort <term> with <retort string>
    retort <term> clear

# SEE ALSO

You can look for additional information at:

- [Bot::IRC](https://metacpan.org/pod/Bot%3A%3AIRC)
- [GitHub](https://github.com/gryphonshafer/Bot-IRC-X-Retort)
- [MetaCPAN](https://metacpan.org/pod/Bot::IRC::X::Retort)
- [GitHub Actions](https://github.com/gryphonshafer/Bot-IRC-X-Retort/actions)
- [Codecov](https://codecov.io/gh/gryphonshafer/Bot-IRC-X-Retort)
- [CPANTS](http://cpants.cpanauthors.org/dist/Bot-IRC-X-Retort)
- [CPAN Testers](http://www.cpantesters.org/distro/T/Bot-IRC-X-Retort.html)

# AUTHOR

Gryphon Shafer <gryphon@cpan.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2016-2050 by Gryphon Shafer.

This is free software, licensed under:

    The Artistic License 2.0 (GPL Compatible)
