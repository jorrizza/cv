#!/usr/bin/env ruby

require 'bundler/setup'
require 'redcarpet'
require 'nokogiri'

include Redcarpet

class CV <  Render::HTML
  [:doc_header, :doc_footer].each do |m|
    define_method m do
      IO.read("#{m}.html")
    end
  end

  def postprocess(html)
    Nokogiri::HTML(html).to_html
  end
end

renderer = Markdown.new(CV, autolink: true)

exit 1 unless ARGV[0]
puts renderer.render(IO.read(ARGV[0]))
