# HREF Preview

<dl>
  <dt>Homepage</dt><dd><a href="https://github.com/sporkmonger/href-preview">https://github.com/sporkmonger/href-preview</a></dd>
  <dt>Author</dt><dd><a href="mailto:bob@sporkmonger.com">Bob Aman</a></dd>
  <dt>Copyright</dt><dd>Copyright © 2014 Bob Aman</dd>
  <dt>License</dt><dd>Apache 2.0</dd>
</dl>

# Description

A comprehensive library for efficiently previewing links.

# Features

Capable of detecting:
* OpenGraph metadata
* Twitter metadata
* Microdata metadata
* Assorted microformat metadata
* RDFa metadata
* rel="canonical" links

# Example Usage

    require 'href_preview'
    p = HRefPreview.open('http://nyti.ms/1c1zNtX')
    p.title
    # => "A Successor to Sagan Reboots ‘Cosmos’"
    p.description
    # =>
    p.article_html
    p.article_text
    p.published
    p.canonical_uri

# Install

* gem install href-preview
