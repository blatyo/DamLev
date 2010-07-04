# DamLev

DamLev implements the [Damerau–Levenshtein distance algorithm][1]. It is an algorithm that measures the distance between two strings taking into account deletions, insertions, substitutions, and transpositions. It's written in pure ruby.

[1]: http://en.wikipedia.org/wiki/Damerau%E2%80%93Levenshtein_distance

## Get it!

    gem install dam_lev

## Use it!

    require 'dam_lev'
    
    DamLev.distance("DamLev", "DamLev")  # => 0
    DamLev.distance("DamLev", "Damev")   # => 1 # deletion
    DamLev.distance("DamLev", "DamLiev") # => 1 # insertion
    DamLev.distance("DamLev", "Dam7ev")  # => 1 # substitution
    DamLev.distance("DamLev", "DameLv")  # => 2 # transposition

## Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2010 Allen Madsen. See LICENSE for details.
