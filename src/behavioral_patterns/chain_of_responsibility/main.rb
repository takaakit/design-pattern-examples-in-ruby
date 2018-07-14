#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'lazy_supporter'
require_relative 'moody_supporter'
require_relative 'special_supporter'
require_relative 'limited_supporter'
require_relative 'trouble'

# Someone handles a trouble.

emily = LazySupporter.new("Emily")
william = MoodySupporter.new("William")
amelia = SpecialSupporter.new("Amelia", 153)
michael = LimitedSupporter.new("Michael", 340)
joseph = LimitedSupporter.new("Joseph", 250)
lily = LimitedSupporter.new("Lily", 350)

# Make a chain.
emily.set_next(william).set_next(amelia).set_next(michael).set_next(joseph).set_next(lily)

# Various troubles occurred.
0.step(500, 17) do |n|
  emily.support(Trouble.new(n))
end
