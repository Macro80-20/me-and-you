require_relative '../config/environment.rb'
CLI.new
# Introdcution  : Runs our logo , runs our image , asks for Users name , asks for Users gender
CLI.introduction

CLI.questions
CLI.show_matches
# CLI.go_back
CLI.confirm_match
CLI.bye
