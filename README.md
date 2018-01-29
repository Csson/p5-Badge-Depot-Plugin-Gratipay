# NAME

Badge::Depot::Plugin::Gratipay - Gratipay plugin for Badge::Depot (deprecated)

<div>
    <p>
    <img src="https://img.shields.io/badge/perl-5.10.1+-blue.svg" alt="Requires Perl 5.10.1+" />
    <a href="https://travis-ci.org/Csson/p5-Badge-Depot-Plugin-Gratipay"><img src="https://api.travis-ci.org/Csson/p5-Badge-Depot-Plugin-Gratipay.svg?branch=master" alt="Travis status" /></a>
    <a href="http://cpants.cpanauthors.org/release/CSSON/Badge-Depot-Plugin-Gratipay-0.0103"><img src="http://badgedepot.code301.com/badge/kwalitee/CSSON/Badge-Depot-Plugin-Gratipay/0.0103" alt="Distribution kwalitee" /></a>
    <a href="http://matrix.cpantesters.org/?dist=Badge-Depot-Plugin-Gratipay%200.0103"><img src="http://badgedepot.code301.com/badge/cpantesters/Badge-Depot-Plugin-Gratipay/0.0103" alt="CPAN Testers result" /></a>
    <img src="https://img.shields.io/badge/coverage-96.7%-yellow.svg" alt="coverage 96.7%" />
    </p>
</div>

# VERSION

Version 0.0103, released 2018-01-29.

# SYNOPSIS

    use Badge::Depot::Plugin::Gratipay;

    my $badge = Badge::Depot::Plugin::Gratipay->new(user => 'my_name');

    print $badge->to_html;
    # prints '<a href="https://gratipay.com/my_name"><img src="https://img.shields.io/my_name.svg" /></a>'

# STATUS

Deprecated. Since [Gratipay](https://gratipay.com) has shut down this distribution has no purpose.

# DESCRIPTION

Create a [Gratipay](https://gratipay.com) badge for a Gratipay user.

This class consumes the [Badge::Depot](https://metacpan.org/pod/Badge::Depot) role.

# ATTRIBUTES

## user

The Gratipay user name.

## custom\_image\_url

By default, this module shows an image from [shields.io](https://shields.io). Use this attribute to override that with a custom url. Use a `%s` placeholder where the user name should be inserted.

# SEE ALSO

- [Badge::Depot](https://metacpan.org/pod/Badge::Depot)
- [Task::Badge::Depot](https://metacpan.org/pod/Task::Badge::Depot)

# SOURCE

[https://github.com/Csson/p5-Badge-Depot-Plugin-Gratipay](https://github.com/Csson/p5-Badge-Depot-Plugin-Gratipay)

# HOMEPAGE

[https://metacpan.org/release/Badge-Depot-Plugin-Gratipay](https://metacpan.org/release/Badge-Depot-Plugin-Gratipay)

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2016 by Erik Carlsson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
