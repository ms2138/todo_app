Time::DATE_FORMATS[:month_day_and_year_time] = '%B %e, %Y %I:%M:%S %p'
Time::DATE_FORMATS[:short_ordinal] = lambda { |time| time.strftime("%B #{time.day.ordinalize}") }