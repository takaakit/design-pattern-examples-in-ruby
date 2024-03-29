#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'credit_card/credit_card_factory'

=begin
The subject is a factory to make credit cards. The Factory defines how to create a credit card,
but the actual credit card is created by the CreditCardFactory.
The "createProduct()" is called a Factory Method, and it is responsible for manufacturing an object.
=end

factory = CreditCardFactory.new

jackson_card = factory.create("Jackson")
jackson_card.use

sophia_card = factory.create("Sophia")
sophia_card.use

olivia_card = factory.create("Olivia")
olivia_card.use
