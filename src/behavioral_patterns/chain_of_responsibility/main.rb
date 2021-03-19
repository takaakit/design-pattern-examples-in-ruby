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
amelia = SpecialSupporter.new("Amelia", 6)
joseph = LimitedSupporter.new("Joseph", 5)

# Make a chain.
emily.set_next(william).set_next(amelia).set_next(joseph)

# Various troubles occurred.
for i in 0..9
  emily.support(Trouble.new(i))
end
