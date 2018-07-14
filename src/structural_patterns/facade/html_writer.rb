#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# ˅

# ˄

class HtmlWriter
  # ˅
  
  # ˄

  public
  def initialize(html_file_name)

    @writer = File.open(html_file_name, "w")

    # ˅
    
    # ˄
  end

  # Write a title
  public
  def heading(title)
    # ˅
    @writer.write("<html>")
    @writer.write("<head><title>" + title + "</title></head>")
    @writer.write("<body>\n")
    @writer.write("<h1>" + title + "</h1>\n")
    # ˄
  end

  # Write a paragraph
  public
  def paragraph(message)
    # ˅
    @writer.write("<p>" + message + "</p>\n")
    # ˄
  end

  # Write a link
  public
  def anchor(url, text)
    # ˅
    paragraph("<a href=\"" + url + "\">" + text + "</a>")
    # ˄
  end

  # Write a mail address
  public
  def mailto(mail_address, user_name)
    # ˅
    anchor("mailto:" + mail_address, user_name)
    # ˄
  end

  public
  def close
    # ˅
    @writer.write("</body>")
    @writer.write("</html>\n")
    @writer.close
    # ˄
  end

  # ˅
  
  # ˄
end

# ˅

# ˄
