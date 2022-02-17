# Ruby 2.x deserialization RCE Gadget Chain Generator

After running into problems with a different Ruby version on my machine, I
created this script and Dockerfile so that generating Ruby deserialization
payloads becomes an automated piece of cake.

Just run `run_me.sh`, which will build, run, and remove a docker image that
generates the specified payload on the fly!

All credit to [Luke Jahnke from elttam](https://www.elttam.com/blog/ruby-deserialization/),
who made this gadget chain. I just modified the script a bit and created this
wrapper for easy access.
