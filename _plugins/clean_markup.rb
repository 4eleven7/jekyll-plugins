module Jekyll
  module CleanMarkup
    # Trims leading and trailing whitespace " test " becomes "test"
    def trim_whitespace(content)
      content.strip
    end
    
    # Trims leading whitespace " test " becomes "test "
    def trim_leading_whitespace(content)
      content.lstrip
    end
    
    # Trims trailing whitespace " test " becomes " test"
    def trim_trailing_whitespace(content)
      content.rstrip
    end
  end
end

Liquid::Template.register_filter(Jekyll::CleanMarkup)
