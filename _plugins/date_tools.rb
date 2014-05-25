require 'date'
require 'facets/integer/ordinal'

module Jekyll
  module DateTools
    # Thursday 22nd May 2014
    def pretty_longdate(date)
      "#{date.strftime('%A')} #{date.strftime('%e').to_i.ordinalize} #{date.strftime('%B')} #{date.strftime('%Y')}"
    end

    # 22nd May 2014
    def pretty_date(date)
      "#{date.strftime('%e').to_i.ordinalize} #{date.strftime('%B')} #{date.strftime('%Y')}"
    end

    # Thursday
    def pretty_longday(date)
      "#{date.strftime('%A')}"
    end

    # Thu
    def pretty_shortday(date)
      "#{date.strftime('%a')}"
    end

    # 22nd
    def pretty_day(date)
      "#{date.strftime('%e').to_i.ordinalize}"
    end
  end
end

Liquid::Template.register_filter(Jekyll::DateTools)
