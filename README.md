# NAME

Badge::Depot::Plugin::Gratipay - Gratipay plugin for Badge::Depot

# VERSION

Version 0.0001, released 2015-02-28.

# SYNOPSIS

    use Badge::Depot::Plugin::Gratipay;

    my $badge = Badge::Depot::Plugin::Gratipay->new(user => 'my_name');

    print $badge->to_html;
    # prints '<a href="https://gratipay.com/my_name"><img src="https://img.shields.io/my_name.svg" /></a>'

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

# HOMEPAGE

[https://metacpan.org/release/Badge-Depot-Plugin-Gratipay](https://metacpan.org/release/Badge-Depot-Plugin-Gratipay)

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Erik Carlsson <info@code301.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
