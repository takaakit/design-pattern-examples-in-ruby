#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'lazy_supporter'
require_relative 'moody_supporter'
require_relative 'special_supporter'
require_relative 'limited_supporter'
require_relative 'trouble'

=begin
A trouble is turned around among supporters, and the trouble will be handled by the supporter who can handle it.
There are four types of supporters below:
* LazySupporter doesn't handle any trouble
* MoodySupporter handles odd ID troubles
* SpecialSupporter handles a trouble of the target ID.
* LimitedSupporter handles troubles below the limit ID.
=end

emily = LazySupporter.new("Emily")
william = MoodySupporter.new("William")
amelia = SpecialSupporter.new("Amelia", 6)
joseph = LimitedSupporter.new("Joseph", 5)

# Make a chain.
emily.set_next(william).set_next(amelia).set_next(joseph)

# Various troubles occurred.
10.times do |i|
  emily.support(Trouble.new(i))
end
