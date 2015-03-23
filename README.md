m4s2
====

Static Site Generator

Description
-----------

This is no more than a makefile, a shell script and a some templates
that can be used for building a very basic static website.

Usage
-----

Clone this repository, modify the layout (in `tmpl/layout.html`),
and write your articles in the `notes` directory. Run `make` and
check the resulting HTML files in the `public` directory.

The tool expects the pages in `notes` to have a `<h1>` header,
and it extracts its value to populate the `<title>` tag in the
layout template.
