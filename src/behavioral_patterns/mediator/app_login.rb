#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅
require 'tk'
require_relative 'colleague_button'
require_relative 'colleague_radio_button'
require_relative 'colleague_text_field'
require_relative 'mediator'

# ˄

class AppLogin < Mediator
  # ˅

  # ˄

  public
  def initialize

    @val = nil

    @radio_login = nil

    @radio_guest = nil

    @text_username = nil

    @text_password = nil

    @button_ok = nil

    @button_cancel = nil

    @root = TkRoot.new

    # ˅
    @root.title = "Mediator Example"

    create_colleagues
    set_mediators

    colleague_changed

    @root.mainloop
    # ˄
  end

  # Change enable/disable of the Colleagues when notified from the Mediators.
  public
  def colleague_changed
    # ˅
    if @button_ok.is_pressed or @button_cancel.is_pressed
      @root.destroy
    else
      if @radio_guest.is_selected     # Guest mode
        @text_username.set_activation(false)
        @text_password.set_activation(false)
        @button_ok.set_activation(true)
      else                            # Login mode
        @text_username.set_activation(true)
        @text_password.set_activation(true)

        # Judge whether the changed Colleage is enabled or disabled
        if @text_username.is_empty == false and @text_password.is_empty == false
          @button_ok.set_activation(true)
        else
          @button_ok.set_activation(false)
        end
      end
    end
    # ˄
  end

  public
  def create_colleagues
    # ˅
    radio_button_frame = TkFrame.new(@root)
    radio_button_frame.pack("anchor" => "w")

    @val = TkVariable.new(0)

    radio_button_guest = TkRadiobutton.new(radio_button_frame)
    radio_button_guest.text = "Guest"
    radio_button_guest.variable = @val
    radio_button_guest.value = 0
    radio_button_guest.grid("row" => 0, "column" => 0)
    @radio_guest = ColleagueRadioButton.new(radio_button_guest)

    radio_button_login = TkRadiobutton.new(radio_button_frame)
    radio_button_login.text = "Login"
    radio_button_login.variable = @val
    radio_button_login.value = 1
    radio_button_login.grid("row" => 0, "column" => 1)
    @radio_login = ColleagueRadioButton.new(radio_button_login)

    text_field_frame = TkFrame.new(@root)
    text_field_frame.pack

    label_username = TkLabel.new(text_field_frame)
    label_username.text = "Username:"
    label_username.grid("row" => 0, "column" => 0)

    label_password = TkLabel.new(text_field_frame)
    label_password.text = "Password:"
    label_password.grid("row" => 1, "column" => 0)

    text_username = TkEntry.new(text_field_frame)
    text_username.width = 20
    text_username.grid("row" => 0, "column" => 1)
    @text_username = ColleagueTextField.new(text_username)

    text_password = TkEntry.new(text_field_frame)
    text_password.width = 20
    text_password.show = "*"
    text_password.grid("row" => 1, "column" => 1)
    @text_password = ColleagueTextField.new(text_password)

    button_frame = TkFrame.new(@root)
    button_frame.pack("anchor" => "e")

    button_ok = TkButton.new(button_frame)
    button_ok.text = "OK"
    button_ok.grid("row" => 0, "column" => 0)
    @button_ok = ColleagueButton.new(button_ok)

    button_cancel = TkButton.new(button_frame)
    button_cancel.text = "Cancel"
    button_cancel.grid("row" => 0, "column" => 1)
    @button_cancel = ColleagueButton.new(button_cancel)
    # ˄
  end

  # Set mediators
  private
  def set_mediators
    # ˅
    @radio_login.mediator = self
    @radio_guest.mediator = self
    @text_username.mediator = self
    @text_password.mediator = self
    @button_ok.mediator = self
    @button_cancel.mediator = self
    # ˄
  end

  # ˅

  # ˄
end

# ˅

# ˄
