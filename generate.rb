require 'yaml'

ARGV.each{ |file|
  data = YAML.load_file(file)

  data['committees'].each{ |c|

    print %{\\begin{minipage}[t]{.3\\textwidth}\\raggedright
    {\\bf #{c['role'].gsub(/&/, /\\&/.source)}:}
\\end{minipage}
\\hspace{2mm}
\\begin{minipage}[t]{.7\\textwidth}
}

    c['people'].each{ |p|
      print "    #{p['name']}"

      if not p['affiliation'].nil?
        print " \\emph{(#{p['affiliation'].gsub(/&/, /\\&/.source)})}"
      end
      print "\\\\\n"
    }

    print %{\\end{minipage}

}

  }
}
