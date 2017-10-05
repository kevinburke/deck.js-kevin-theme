#!/usr/bin/env observr

dirname = File.dirname(__FILE__)
watch( 'scss/(.*)\.scss' )  {|md| cmd = "sass --style compressed #{File.join(dirname, md[0])} > #{File.join(dirname, "css", md[1] + ".css")}"; puts cmd; system(cmd) }
