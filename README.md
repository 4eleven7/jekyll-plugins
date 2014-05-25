Various Jekyll Plugins
========
If you don't have a *_plugins* folder within your site, you'll need to create one. Place each of the *.rb* files within the *_plugins* folder to get started.

# Date Tools
DateTools simplifies date formatting.

## Installation
1. Install "facets"  
`gem install facets`

2. Place **date_tools.rb** in the *_plugins* folder, within your site. Create this folder if it doesn't exist.

## Usage
22nd May 2014  
`{{ page.date | pretty_date }}`

Thursday 22nd May 2014	
`{{ page.date | pretty_longdate }}`
	
Thursday	
`{{ page.date | pretty_longday }}`

Thu	 
`{{ page.date | pretty_shortday }}`

22nd	
`{{ page.date | pretty_day }}`


# Indentation
Indentation helps you keep your source code nicely formatted. When writing HTML, you tend to keep tags nested nicely in levels.  
But moving these files to a templating language, such as for us in Jekyll, often causes the nesting to become inconsistent.
Indentation fixes this, by allowing you to specify an indentation level on an include/tag.
## Installation
Place **indent_markup.rb** in the *_plugins* folder, within your site. Create this folder if it doesn't exist.

## Usage	
There are two convince methods, `indent_tab` and `indent_space`, depending on your indenting preferences.  
In this example, we indent by 1 tab ("		").  
`{{ content | indent_tab: 1 }}`

Or we can indent by 1 space (" ").  
`{{ content | indent_space: 1 }}`

The default indentation is 1 tab ("		"), however we can customise this and use a line break ("<br/>") or 4 spaces ("    ")  
`{{ content | indent: 2, "<br>" %}`

By default, the first line is ignored.  
This is because usually the tag has been indented to the correct level, and the content will inherit that level. However if this isn't the case, you can set `ignoreFirstLine` to `false`.  
`{{ content | indent: 2, "		", false }}`

# Whitespace
Source control, such as GIT, will complain if you don't have a new line at the end of your file. With Jekyll this can cause an unnecessary blank line in your source code.  
*clean_markup.rb* adds a few methods to remove whitespace.

## Installation
Place **clean_markup.rb** in the *_plugins* folder, within your site. Create this folder if it doesn't exist.

## Usage	
Remove leading whitespace " test " becomes "test "  
`{{ content | trim_leading_whitespace }}`

Remove trailing whitespace " test " becomes " test"  
`{{ content | trim_trailing_whitespace }}`

Remove leading and trailing whitespace " test " becomes "test"  
`{{ content | trim_whitespace }}`