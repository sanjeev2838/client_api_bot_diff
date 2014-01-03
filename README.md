# DiffbotRubyApiClient

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'diffbot_ruby_api_client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install diffbot_ruby_api_client

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


-----------------------------------------

Diffbot API Ruby Client Library
Job Description

The job is to write a simple client for the Diffbot API in the Ruby language.

The code should be written in idiomatic Ruby to make it super simple for Ruby developers to both use and understand. All public methods should be well documented and any inputs, outputs, and exception handling.

You will have some flexibility in designing the most natural Diffbot API interface for Ruby, but at minimum it should have a method that makes the network call to Diffbot with the url and returns back a JSON object.  The documentation for the Diffbot APIs is available here: http://diffbot.com/products.  Here is a suggested method signature for the basic call.

JSONObject diffbot(url, token="...", api="analyze", fields=[], version=2)

You may use external libraries, particularly a JSON implementation might be useful.  You might be able to find a json package  here: json.org

Deliverable
A zip file containing:
1. Full source code for your library, with public functions documented with description of what it does and parameters, return values, and exceptions described.
2. INSTALL file with step-by-step instructions on how to install your library in a Ruby project, with links to download any dependencies your projects needs.
3. README file showing example usage of how to call your library from Ruby code.

When applying for this job, send an example of calling the Diffbot Article API from Ruby, so we can evaluate the quality of your code.  From the applicants, we will select the best candidate to write the official Diffbot Ruby client.  The goal is for the library to be open sourced and if you do a good job you could be the long-term maintainer of the library.
