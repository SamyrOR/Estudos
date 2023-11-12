#Time to get time now, but just the time
IO.puts Time.utc_now()
#the ~T sigil creates a Time struct ass well
time = ~T[19:39:31.056226]
IO.puts(time.hour)
IO.puts(time.minute)

#Date, gets only info about the date, not the time
IO.puts Date.utc_today()
#some functions
{:ok, date } = Date.new(2020, 12, 12)
IO.puts Date.day_of_week date
IO.puts Date.leap_year? date

#we have two structures that contain both time and date
#NaiveDateTime but don't have timezone suport
NaiveDateTime.utc_now()
#we can add time
NaiveDateTime.add(~N[2018-10-01 00:00:14], 30)
#DateTime support timezones
#you can get date time from naive
DateTime.from_naive(~N[2016-05-24 13:26:08.003], "Etc/UTC")
#we need to be careful because Elixir only have Etc/UTC timezone
#to work with others zones, we need to instal the tzdata, and config elixir to use as timezone database
config :elixir, :time_zone_database, Tzdata.TimeZoneDatabase

paris_datetime = DateTime.from_naive!(~N[2019-01-01 12:00:00], "Europe/Paris")
{:ok, ny_datetime} = DateTime.shift_zone(paris_datetime, "America/New_York")
