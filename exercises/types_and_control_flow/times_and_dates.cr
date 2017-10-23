puts Time.now # => 2017-05-29 11:42:13 +0200
t = Time.new(2002, 10, 31, 2, 2, 2, 999, Time::Kind::Local)
p t                # => 2002-10-31 02:02:02 +0100
puts t.millisecond # => 999
puts t.day_of_week # => Thursday

time = Time.new(2016, 2, 15, 10, 20, 30)
time.year    # => 2016
time.month   # => 2
time.day     # => 15
time.hour    # => 10
time.minute  # => 20
time.second  # => 30
time.monday? # => true

# Creating a time instance with a date only
Time.new(2016, 2, 15) # => 2016-02-15 00:00:00

# Specifying a time
Time.new(2016, 2, 15, 10, 20, 30) # => 2016-02-15 10:20:30 UTC

# Formatting
time = Time.new(2015, 10, 12)
time.to_s("%Y-%m-%d") # => "2015-10-12"

# Time::Span
Time.new(2015, 10, 10) - 5.days # => 2015-10-05 00:00:00

# Time calculation returns a Time::Span instance
span = Time.new(2015, 10, 10) - Time.new(2015, 9, 10)
span.days          # => 30
span.total_hours   # => 720
span.total_minutes # => 43200

# Calculation between Time::Span instances
span_a = Time::Span.new(3, 0, 0)
span_b = Time::Span.new(2, 0, 0)
span = span_a - span_b
span       # => 01:00:00
span.class # => Time::Span
span.hours # => 1

# Epoch
puts Time.epoch(628232400)
t = Time.new(1989, 11, 28, 5, 0, 0) #  1989-11-28 05:00:00 UTC
puts t.epoch                        # => 628228800
puts t.epoch_ms                     # => 628228800000

# Time formatting
puts Time.parse("2012-11-01 22:08:12", "%F %T")   # => 2012-11-01 22:08:12
puts Time.parse("Fri Oct 31 23:00:24 2014", "%c") # => 2014-10-31 23:00:24
puts Time.parse("20150624", "%Y%m%d")             # => 2015-06-24 00:00:00
