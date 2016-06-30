[![Koara](http://www.koara.io/logo.png)](http://www.koara.io)

[![Build Status](https://img.shields.io/travis/koara/koara-rb-xml.svg)](https://travis-ci.org/koara/koara-rb-xml)
[![Coverage Status](https://img.shields.io/coveralls/koara/koara-rb-xml.svg)](https://coveralls.io/github/koara/koara-rb-xml?branch=master)
[![Gem](https://img.shields.io/gem/v/koara-xml.svg?maxAge=2592000)]()
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/koara/koara-rb-xml/blob/master/LICENSE)

# Koara-rb-xml
[Koara](http://www.koara.io) is a modular lightweight markup language. This project can render the koara AST to Xml in Ruby.
The AST is created by the [core koara parser](https://github.com/koara/koara-rb).

## Getting started
- Gem

  ```bash
  gem install koara-xml
  ```

## Usage
```ruby
require 'koara'
require 'koara/xml'

parser = Koara::Parser.new
result = parser.parse('Hello World!')
renderer = Koara::Xml::XmlRenderer.new
result.accept(renderer)
puts renderer.output
```

## Configuration
You can configure the Renderer:

-  **renderer.declaration_tag(declaration_tag)**
   Default:	`null`
   
   Add an XML Declaration Tag add the top of the generated output.  