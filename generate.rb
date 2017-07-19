require 'yaml'

tpc = YAML.load_file('org.yml')

tpc['committees'].each{ |c|
  
  print "\\textbf{#{ c['role'] }:}\n"

  c['people'].each{ |p|
    print " & #{p['name']} \\emph{(#{p['affiliation']})} \\\\\n"
  }
  print "\\\\\n\n"
  
}
