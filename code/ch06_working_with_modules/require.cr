# current folder:
# START: p1
require "./fileA"
# I am from fileA.cr in the current folder
# OR (if present): fileA.cr in subfolder fileA
require "./dirA/fileA"
# I am from fileA.cr in dirA
require "./dirA/dirB"
# I am from dirB.cr in dirA
# OR: I am from dirB.cr in dirB in dirA
# END: p1

# parent folder:
# START: p2
require "../fileA"
# I am from fileA.cr in the parent folder
require "../dirA/fileA"
# I am from fileA.cr in dirA in the parent folder
# END: p2

# nested form:
# START: p3
require "./dirA/dirB/fileB"
# I am from fileB.cr in dirB in dirA
# END: p3

# forms using wildcard *:
# START: p4
require "./dirA/*"
# I am from fileA2.cr in dirA
# I am from fileA3.cr in dirA
# END: p4

# forms using wildcard **:
# START: p5
require "./dirA/**"
# I am from fileC1.cr in dirC in dirA
# I am from fileC2.cr in dirC in dirA
# END: p5

# require path:
# START: p6
require "file"
# END: p6
