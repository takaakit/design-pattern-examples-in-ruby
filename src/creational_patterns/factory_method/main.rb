#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'id_card/credit_card_factory'

# Factory to make ID cards.

factory = CreditCardFactory.new()

jackson_card = factory.create("Jacson")
jackson_card.use

sophia_card = factory.create("Sophia")
sophia_card.use

olivia_card = factory.create("Olivia")
olivia_card.use
