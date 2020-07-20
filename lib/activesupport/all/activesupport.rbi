# typed: strong

module ActiveSupport
  sig { params(kind: Symbol, blk: T.proc.bind(T.untyped).void).void }
  def self.on_load(kind, &blk); end
end

class Object
  sig { params(duck: T.any(String, Symbol)).returns(T::Boolean) }
  def acts_like?(duck); end

  sig {returns(T::Boolean)}
  def blank?; end

  sig { returns(T.self_type) }
  def deep_dup; end

  sig { returns(TrueClass) }
  def duplicable?; end

  sig { params(another_object: Object).returns(T::Boolean) }
  def in?(another_object); end

  sig { returns(T::Hash[String, T.untyped]) }
  def instance_values; end

  sig { returns(T::Array[String]) }
  def instance_variable_names; end

  sig { returns(T.nilable(T.self_type)) }
  def presence; end

  sig { returns(T::Boolean) }
  def present?; end

  sig { returns(String) }
  def to_param; end

  sig { params(key: String).returns(String) }
  def to_query(key); end

  sig do
    params(
      method_name: T.any(Symbol, String, NilClass),
      args: T.untyped,
      b: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
    ).returns(T.untyped)
  end
  def try(method_name = nil, *args, &b); end

  sig do
    params(
      method_name: T.any(Symbol, String, NilClass),
      args: T.untyped,
      b: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
    ).returns(T.untyped)
  end
  def try!(method_name = nil, *args, &b); end

  sig do
    params(
      options: T::Hash[T.untyped, T.untyped],
      block: T.nilable(T.proc.returns(T.untyped))
    ).returns(T.untyped)
  end
  def with_options(options, &block); end
end

class FalseClass
  sig { returns(NilClass) }
  def presence; end
end

class Method
  sig { returns(FalseClass) }
  def duplicable?; end
end

class NilClass
  sig { returns(T::Boolean) }
  def duplicable?; end

  sig do
    params(
      method_name: T.any(Symbol, String, NilClass),
      args: T.untyped,
      b: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
    ).returns(NilClass)
  end
  def try(method_name = nil, *args, &b); end

  sig do
    params(
      method_name: T.any(Symbol, String, NilClass),
      args: T.untyped,
      b: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
    ).returns(NilClass)
  end
  def try!(method_name = nil, *args, &b); end
end

class String
  sig { returns(T::Boolean) }
  def acts_like_string?; end

  sig { params(position: T.any(Integer, String, Regexp, T::Range[Integer])).returns(T.nilable(String)) }
  def at(position); end

  sig { returns(T::Boolean) }
  def blank?; end

  sig { params(first_letter: Symbol).returns(String) }
  def camelize(first_letter = :upper); end

  # camelcase is an alias of camelize
  sig { params(first_letter: Symbol).returns(String) }
  def camelcase(first_letter = :upper); end

  sig { returns(String) }
  def classify; end

  sig { returns(Module) }
  def constantize; end

  sig { returns(String) }
  def dasherize; end

  sig { returns(String) }
  def deconstantize; end

  sig { returns(String) }
  def demodulize; end

  # ends_with? is an alias of the core method 'end_with?'
  sig { params(arg0: String).returns(T::Boolean) }
  def ends_with?(*arg0); end

  sig { params(string: String).returns(T::Boolean) }
  def exclude?(string); end

  sig { params(limit: Integer).returns(String) }
  def first(limit = 1); end

  sig { params(separate_class_name_and_id_with_underscore: T::Boolean).returns(String) }
  def foreign_key(separate_class_name_and_id_with_underscore = true); end

  sig { params(position: Integer).returns(String) }
  def from(position); end

  sig { returns(T.untyped) }
  def html_safe; end

  sig { params(capitalize: T::Boolean, keep_id_suffix: T::Boolean).returns(String) }
  def humanize(capitalize: true, keep_id_suffix: false); end

  # returns Time in the case zone is passed nil and ActiveSupport::TimeWithZone otherwise
  sig { params(zone: T.nilable(T.any(String, ActiveSupport::TimeZone))).returns(T.any(ActiveSupport::TimeWithZone, Time)) }
  def in_time_zone(zone = ::Time.zone); end

  sig { params(amount: Integer, indent_string: T.nilable(String), indent_empty_lines: T::Boolean).returns(T.nilable(String)) }
  def indent!(amount, indent_string = nil, indent_empty_lines = false); end

  sig { params(amount: Integer, indent_string: T.nilable(String), indent_empty_lines: T::Boolean).returns(T.nilable(String)) }
  def indent(amount, indent_string = nil, indent_empty_lines = false); end

  sig { returns(ActiveSupport::StringInquirer) }
  def inquiry; end

  sig { returns(T::Boolean) }
  def is_utf8?; end

  sig { params(limit: Integer).returns(String) }
  def last(limit = 1); end

  sig { returns(ActiveSupport::Multibyte::Chars) }
  def mb_chars; end

  sig { params(separator: String, preserve_case: T::Boolean).returns(String) }
  def parameterize(separator: "-", preserve_case: false); end

  sig { params(count: T.nilable(Integer), locale: Symbol).returns(String) }
  def pluralize(count = nil, locale = :en); end

  sig { params(patterns: T.untyped).returns(T.untyped) }
  def remove!(*patterns); end

  sig { params(patterns: T.untyped).returns(T.untyped) }
  def remove(*patterns); end

  sig { returns(T.untyped) }
  def safe_constantize; end

  sig { params(locale: Symbol).returns(String) }
  def singularize(locale = :en); end

  sig { returns(String) }
  def squish!; end

  sig { returns(String) }
  def squish; end

  # starts_with? is an alias of the core method 'start_with?''
  sig { params(arg0: String).returns(T::Boolean) }
  def starts_with?(*arg0); end

  sig { returns(String) }
  def strip_heredoc; end

  sig { returns(String) }
  def tableize; end

  sig { params(keep_id_suffix: T::Boolean).returns(String) }
  def titleize(keep_id_suffix: false); end

  # titlecase is an alias of titleize
  sig { params(keep_id_suffix: T::Boolean).returns(String) }
  def titlecase(keep_id_suffix: false); end

  sig { params(position: Integer).returns(String) }
  def to(position); end

  sig { returns(Date) }
  def to_date; end

  sig { returns(DateTime) }
  def to_datetime; end

  sig { params(form: Symbol).returns(Time) }
  def to_time(form = :local); end

  sig { params(truncate_at: Integer, separator: T.nilable(T.any(String, Regexp)), omission: String).returns(String) }
  def truncate(truncate_at, separator: nil, omission: "..."); end

  sig { params(words_count: Integer, separator: T.nilable(T.any(String, Regexp)), omission: String).returns(String) }
  def truncate_words(words_count, separator: nil, omission: "..."); end

  sig { returns(String) }
  def underscore; end

  sig { returns(String) }
  def upcase_first; end
end

class Array
  sig { returns(T::Boolean) }
  def blank?; end

  sig { returns(T::Array[T.untyped]) }
  def deep_dup; end

  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def extract_options!; end

  sig { returns(T.nilable(Elem)) }
  def fifth; end

  sig { returns(T.nilable(Elem)) }
  def forty_two; end

  sig { returns(T.nilable(Elem)) }
  def fourth; end

  sig { params(position: Integer).returns(T::Array[T.untyped]) }
  def from(position); end

  sig { params(number: Integer, fill_with: T.untyped).returns(T.untyped) }
  def in_groups(number, fill_with = nil); end

  sig { params(number: Integer, fill_with: T.untyped).returns(T.untyped) }
  def in_groups_of(number, fill_with = nil); end

  sig { returns(T.untyped) }
  def inquiry; end

  sig { returns(T.nilable(Elem)) }
  def second; end

  sig { returns(T.nilable(Elem)) }
  def second_to_last; end

  sig do
    params(
      value: T.untyped,
      blk: T.proc.params(arg0: Elem).void
    ).returns(T::Array[Elem])
  end
  def split(value = nil, &blk); end

  sig { returns(T.nilable(Elem)) }
  def third; end

  sig { returns(T.nilable(Elem)) }
  def third_to_last; end

  sig { params(position: Integer).returns(T::Array[T.untyped]) }
  def to(position); end

  # to_default_s is an alias of the core method 'to_s'
  sig {returns(String)}
  def to_default_s; end

  sig { params(format: Symbol).returns(String) }
  def to_formatted_s(format = :default); end

  sig { returns(String) }
  def to_param; end

  sig { params(key: String).returns(String) }
  def to_query(key); end

  sig do
    params(
      words_connector: String,
      two_words_connector: String,
      last_word_connector: String,
      locale: T.nilable(Symbol)
    ).returns(String)
  end
  def to_sentence(words_connector: ", ", two_words_connector: " and ", last_word_connector: ", and ", locale: nil); end

  sig { params(options: T.untyped).returns(T.untyped) }
  def to_xml(options = nil); end

  sig { params(elements: T.untyped).returns(T.untyped) }
  def without(*elements); end
end

module ActiveSupport::NumberHelper
  sig do
    params(
      number: T.any(Integer, Float, String),
      locale: Symbol,
      precision: T.nilable(Integer),
      unit: String,
      separator: String,
      delimiter: String,
      format: String,
      negative_format: String
    ).returns(String)
  end
  def number_to_currency(number, locale: :en, precision: 2, unit: "$", separator: ".", delimiter: ",", format: "%u%n", negative_format: "-%u%n"); end

  sig do
    params(
      number: T.any(Integer, Float, String),
      locale: Symbol,
      delimiter: String,
      separator: String,
      delimiter_pattern: T.nilable(Regexp)
    ).returns(String)
  end
  def number_to_delimited(number, locale: :en, delimiter: ",", separator: ".", delimiter_pattern: nil); end

  sig do
    params(
      number: T.any(Integer, Float, String),
      locale: Symbol,
      precision: T.nilable(Integer),
      significant: T::Boolean,
      separator: String,
      delimiter: String,
      strip_insignificant_zeros: T::Boolean,
      units: T.any(T::Hash[T.untyped, T.untyped], String, Symbol),
      format: String
    ).returns(String)
  end
  def number_to_human(number, locale: :en, precision: 3, significant: true, separator: ".", delimiter: "", strip_insignificant_zeros: true, units: {}, format: "%n %u"); end

  sig do
    params(
      number: T.any(Integer, Float, String),
      locale: Symbol,
      precision: T.nilable(Integer),
      significant: T::Boolean,
      separator: String,
      delimiter: String,
      strip_insignificant_zeros: T::Boolean
    ).returns(String)
  end
  def number_to_human_size(number, locale: :en, precision: 3, significant: true, separator: ".", delimiter: "", strip_insignificant_zeros: true); end

  sig do
    params(
      number: T.any(Integer, Float, String),
      locale: Symbol,
      precision: T.nilable(Integer),
      significant: T::Boolean,
      separator: String,
      delimiter: String,
      strip_insignificant_zeros: T::Boolean,
      format: String
    ).returns(String)
  end
  def number_to_percentage(number, locale: :en, precision: 3, significant: false, separator: ".", delimiter: "", strip_insignificant_zeros: false, format: "%n%"); end

  sig do
    params(
      number: T.any(Integer, Float, String),
      area_code: T::Boolean,
      delimiter: String,
      extension: T.nilable(Integer),
      country_code: T.nilable(Integer),
      pattern: T.nilable(Regexp)
    ).returns(String)
  end
  def number_to_phone(number, area_code: false, delimiter: "-", extension: nil, country_code: nil, pattern: nil); end

  sig do
    params(
      number: T.any(Integer, Float, String),
      locale: Symbol,
      precision: T.nilable(Integer),
      significant: T::Boolean,
      separator: String,
      delimiter: String,
      strip_insignificant_zeros: T::Boolean
    ).returns(String)
  end
  def number_to_rounded(number, locale: :en, precision: 3, significant: false, separator: ".", delimiter: "", strip_insignificant_zeros: false); end
end

module ActiveSupport::Inflector
  sig do
    params(
      term: String,
      uppercase_first_letter: T::Boolean
    ).returns(String)
  end
  def camelize(term, uppercase_first_letter = true); end

  sig { params(table_name: String).returns(String) }
  def classify(table_name); end

  sig { params(camel_cased_word: String).returns(T.untyped) }
  def constantize(camel_cased_word); end

  sig { params(underscored_word: String).returns(String) }
  def dasherize(underscored_word); end

  sig { params(path: String).returns(String) }
  def deconstantize(path); end

  sig { params(path: String).returns(String) }
  def demodulize(path); end

  sig do
    params(
      class_name: String,
      separate_class_name_and_id_with_underscore: T::Boolean
    ).returns(String)
  end
  def foreign_key(class_name, separate_class_name_and_id_with_underscore = true); end

  sig do
    params(
      lower_case_and_underscored_word: String,
      capitalize: T::Boolean,
      keep_id_suffix: T::Boolean
    ).returns(String)
  end
  def humanize(lower_case_and_underscored_word, capitalize: true, keep_id_suffix: false); end

  sig { params(locale: Symbol, blk: T.untyped).returns(T.untyped) }
  def inflections(locale = :en, &blk); end

  sig { params(number: Integer).returns(String) }
  def ordinal(number); end

  sig { params(number: Integer).returns(String) }
  def ordinalize(number); end

  sig do
    params(
      string: String,
      separator: String,
      preserve_case: T::Boolean,
      locale: Symbol
    ).returns(String)
  end
  def parameterize(string, separator: '-', preserve_case: false, locale: nil); end

  sig { params(word: String, locale: Symbol).returns(String) }
  def pluralize(word, locale = :en); end

  sig { params(camel_cased_word: String).returns(T.untyped) }
  def safe_constantize(camel_cased_word); end

  sig { params(word: String, locale: Symbol).returns(String) }
  def singularize(word, locale = :en); end

  sig { params(class_name: String).returns(String) }
  def tableize(class_name); end

  sig { params(word: String, keep_id_suffix: T::Boolean).returns(String) }
  def titleize(word, keep_id_suffix: false); end

  sig { params(string: String, replacement: String, locale: Symbol).returns(String) }
  def transliterate(string, replacement = '?', locale: nil); end

  sig { params(camel_cased_word: String).returns(String) }
  def underscore(camel_cased_word); end

  sig { params(string: String).returns(String) }
  def upcase_first(string); end
end

# defines some of the methods at https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/core_ext/time/calculations.rb
# these get added to Time, but are available on TimeWithZone thanks to https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/time_with_zone.rb#L520
# this is not a complete definition!
class ActiveSupport::TimeWithZone
  sig { returns(ActiveSupport::TimeWithZone) }
  def midnight; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def beginning_of_day; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_midnight; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_beginning_of_day; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def middle_of_day; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def midday; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def noon; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_midday; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_noon; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_middle_of_day; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def end_of_day; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_end_of_day; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def end_of_year; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_end_of_year; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def beginning_of_year; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_beginning_of_year; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def end_of_month; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_end_of_month; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def beginning_of_month; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_beginning_of_month; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def end_of_hour; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_end_of_hour; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def beginning_of_hour; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_beginning_of_hour; end

  # Returns a `Time` instance that represents the time in `time_zone`.
  sig { returns(Time) }
  def time; end

  # Returns a `Time` instance of the simultaneous time in the UTC timezone.
  sig { returns(Time) }
  def utc; end

  # Returns the underlying TZInfo::TimezonePeriod.
  sig { returns(TZInfo::TimezonePeriod) }
  def period; end

  # Returns the simultaneous time in `Time.zone`, or the specified zone.
  sig { params(new_zone: T.untyped).returns(Time) }
  def in_time_zone(new_zone = ::Time.zone); end

  # Returns a `Time` instance of the simultaneous time in the system timezone.
  sig { params(utc_offset: T.untyped).returns(Time) }
  def localtime(utc_offset = nil); end

  ### The following methods are generated dynamically and call to the corresponding Time methods.

  sig { returns(Integer) }
  def year; end

  sig { returns(Integer) }
  def mon; end

  sig { returns(Integer) }
  def month; end

  sig { returns(Integer) }
  def day; end

  sig { returns(Integer) }
  def mday; end

  sig { returns(Integer) }
  def wday; end

  sig { returns(Integer) }
  def yday; end

  sig { returns(Integer) }
  def hour; end

  sig { returns(Integer) }
  def min; end

  sig { returns(Integer) }
  def sec; end

  sig { returns(Numeric) }
  def usec; end

  sig { returns(Numeric) }
  def nsec; end

  ### End dynamically-generated methods

  # Returns true if the current time is within Daylight Savings Time for the
  # specified time zone.
  #
  # ```ruby
  # Time.zone = 'Eastern Time (US & Canada)'    # => 'Eastern Time (US & Canada)'
  # Time.zone.parse("2012-5-30").dst?           # => true
  # Time.zone.parse("2012-11-30").dst?          # => false
  # ```
  sig { returns(T::Boolean) }
  def dst?; end

  # Returns true if the current time zone is set to UTC.
  #
  # ```ruby
  # Time.zone = 'UTC'                           # => 'UTC'
  # Time.zone.now.utc?                          # => true
  # Time.zone = 'Eastern Time (US & Canada)'    # => 'Eastern Time (US & Canada)'
  # Time.zone.now.utc?                          # => false
  # ```
  sig { returns(T::Boolean) }
  def utc?; end

  # Returns the offset from current time to UTC time in seconds.
  sig { returns(Integer) }
  def utc_offset; end

  # Returns a formatted string of the offset from UTC, or an alternative
  # string if the time zone is already UTC.
  #
  # ```ruby
  # Time.zone = 'Eastern Time (US & Canada)'   # => "Eastern Time (US & Canada)"
  # Time.zone.now.formatted_offset(true)       # => "-05:00"
  # Time.zone.now.formatted_offset(false)      # => "-0500"
  # Time.zone = 'UTC'                          # => "UTC"
  # Time.zone.now.formatted_offset(true, "0")  # => "0"
  # ```
  sig { params(colon: T::Boolean, alternate_utc_string: T.untyped).returns(String) }
  def formatted_offset(colon = true, alternate_utc_string = nil); end

  # Returns the time zone abbreviation.
  #
  # ```ruby
  # Time.zone = 'Eastern Time (US & Canada)'   # => "Eastern Time (US & Canada)"
  # Time.zone.now.zone # => "EST"
  # ```
  sig { returns(String) }
  def zone; end

  # Returns a string of the object's date, time, zone, and offset from UTC.
  #
  # ```ruby
  # Time.zone.now.inspect # => "Thu, 04 Dec 2014 11:00:25 EST -05:00"
  # ```
  sig { returns(String) }
  def inspect; end

  # Returns a string of the object's date and time in the ISO 8601 standard
  # format.
  #
  # ```ruby
  # Time.zone.now.xmlschema  # => "2014-12-04T11:02:37-05:00"
  # ```
  sig { params(fraction_digits: Integer).returns(String) }
  def xmlschema(fraction_digits = 0); end

  # Returns a string of the object's date and time in the format used by
  # HTTP requests.
  #
  # ```ruby
  # Time.zone.now.httpdate  # => "Tue, 01 Jan 2013 04:39:43 GMT"
  # ```
  sig { returns(String) }
  def httpdate; end

  # Returns a string of the object's date and time in the RFC 2822 standard
  # format.
  #
  # ```ruby
  # Time.zone.now.rfc2822  # => "Tue, 01 Jan 2013 04:51:39 +0000"
  # ```
  sig { returns(String) }
  def rfc2822; end

  # Returns a string of the object's date and time.
  # Accepts an optional `format`:
  # * `:default` - default value, mimics Ruby Time#to_s format.
  # * `:db` - format outputs time in UTC :db time. See Time#to_formatted_s(:db).
  # * Any key in `Time::DATE_FORMATS` can be used. See active_support/core_ext/time/conversions.rb.
  sig { params(format: Symbol).returns(String) }
  def to_s(format = :default); end

  # Replaces `%Z` directive with +zone before passing to Time#strftime,
  # so that zone information is correct.
  sig { params(format: String).returns(String) }
  def strftime(format); end

  # Returns true if the current object's time is within the specified
  # `min` and `max` time.
  sig { params(min: T.untyped, max: T.untyped).returns(T::Boolean) }
  def between?(min, max); end

  # Returns true if the current object's time is in the past.
  sig { returns(T::Boolean) }
  def past?; end

  # Returns true if the current object's time falls within
  # the current day.
  sig { returns(T::Boolean) }
  def today?; end

  # Returns true if the current object's time is in the future.
  sig { returns(T::Boolean) }
  def future?; end

  # Returns `true` if `other` is equal to current object.
  sig { params(other: T.untyped).returns(T::Boolean) }
  def eql?(other); end

  # Adds an interval of time to the current object's time and returns that
  # value as a new TimeWithZone object.
  #
  # ```ruby
  # Time.zone = 'Eastern Time (US & Canada)' # => 'Eastern Time (US & Canada)'
  # now = Time.zone.now # => Sun, 02 Nov 2014 01:26:28 EDT -04:00
  # now + 1000          # => Sun, 02 Nov 2014 01:43:08 EDT -04:00
  # ```
  #
  # If we're adding a Duration of variable length (i.e., years, months, days),
  # move forward from #time, otherwise move forward from #utc, for accuracy
  # when moving across DST boundaries.
  #
  # For instance, a time + 24.hours will advance exactly 24 hours, while a
  # time + 1.day will advance 23-25 hours, depending on the day.
  #
  # ```ruby
  # now + 24.hours      # => Mon, 03 Nov 2014 00:26:28 EST -05:00
  # now + 1.day         # => Mon, 03 Nov 2014 01:26:28 EST -05:00
  # ```
  sig { params(other: T.untyped).returns(ActiveSupport::TimeWithZone) }
  def +(other); end

  # Subtracts an interval of time and returns a new TimeWithZone object unless
  # the other value `acts_like?` time. Then it will return a Float of the difference
  # between the two times that represents the difference between the current
  # object's time and the `other` time.
  #
  # ```ruby
  # Time.zone = 'Eastern Time (US & Canada)' # => 'Eastern Time (US & Canada)'
  # now = Time.zone.now # => Mon, 03 Nov 2014 00:26:28 EST -05:00
  # now - 1000          # => Mon, 03 Nov 2014 00:09:48 EST -05:00
  # ```
  #
  # If subtracting a Duration of variable length (i.e., years, months, days),
  # move backward from #time, otherwise move backward from #utc, for accuracy
  # when moving across DST boundaries.
  #
  # For instance, a time - 24.hours will go subtract exactly 24 hours, while a
  # time - 1.day will subtract 23-25 hours, depending on the day.
  #
  # ```ruby
  # now - 24.hours      # => Sun, 02 Nov 2014 01:26:28 EDT -04:00
  # now - 1.day         # => Sun, 02 Nov 2014 00:26:28 EDT -04:00
  # ```
  #
  # If both the TimeWithZone object and the other value act like Time, a Float
  # will be returned.
  #
  # ```ruby
  # Time.zone.now - 1.day.ago # => 86399.999967
  # ```
  sig { params(other: T.untyped).returns(T.any(ActiveSupport::TimeWithZone, Float)) }
  def -(other); end

  # Subtracts an interval of time from the current object's time and returns
  # the result as a new TimeWithZone object.
  #
  # ```ruby
  # Time.zone = 'Eastern Time (US & Canada)' # => 'Eastern Time (US & Canada)'
  # now = Time.zone.now # => Mon, 03 Nov 2014 00:26:28 EST -05:00
  # now.ago(1000)       # => Mon, 03 Nov 2014 00:09:48 EST -05:00
  # ```
  #
  # If we're subtracting a Duration of variable length (i.e., years, months,
  # days), move backward from #time, otherwise move backward from #utc, for
  # accuracy when moving across DST boundaries.
  #
  # For instance, `time.ago(24.hours)` will move back exactly 24 hours,
  # while `time.ago(1.day)` will move back 23-25 hours, depending on
  # the day.
  #
  # ```ruby
  # now.ago(24.hours)   # => Sun, 02 Nov 2014 01:26:28 EDT -04:00
  # now.ago(1.day)      # => Sun, 02 Nov 2014 00:26:28 EDT -04:00
  # ```
  sig { params(other: T.any(Numeric, ActiveSupport::Duration)).returns(ActiveSupport::TimeWithZone) }
  def ago(other); end

  # Returns Array of parts of Time in sequence of
  # [seconds, minutes, hours, day, month, year, weekday, yearday, dst?, zone].
  #
  # ```ruby
  # now = Time.zone.now     # => Tue, 18 Aug 2015 02:29:27 UTC +00:00
  # now.to_a                # => [27, 29, 2, 18, 8, 2015, 2, 230, false, "UTC"]
  # ```
  sig { returns([Integer, Integer, Integer, Integer, Integer, Integer, Integer, Integer, T::Boolean, String]) }
  def to_a; end

  # Returns the object's date and time as a floating point number of seconds
  # since the Epoch (January 1, 1970 00:00 UTC).
  #
  # ```ruby
  # Time.zone.now.to_f # => 1417709320.285418
  # ```
  sig { returns(Float) }
  def to_f; end

  # Returns the object's date and time as an integer number of seconds
  # since the Epoch (January 1, 1970 00:00 UTC).
  #
  # ```ruby
  # Time.zone.now.to_i # => 1417709320
  # ```
  sig { returns(Integer) }
  def to_i; end

  # Returns the object's date and time as a rational number of seconds
  # since the Epoch (January 1, 1970 00:00 UTC).
  #
  # ```ruby
  # Time.zone.now.to_r # => (708854548642709/500000)
  # ```
  sig { returns(Rational) }
  def to_r; end

  sig { returns(Date) }
  def to_date; end

  # Returns an instance of DateTime with the timezone's UTC offset
  #
  # ```ruby
  # Time.zone.now.to_datetime                         # => Tue, 18 Aug 2015 02:32:20 +0000
  # Time.current.in_time_zone('Hawaii').to_datetime   # => Mon, 17 Aug 2015 16:32:20 -1000
  # ```
  sig { returns(DateTime) }
  def to_datetime; end

  # Returns an instance of `Time`, either with the same UTC offset
  # as `self` or in the local system timezone depending on the setting
  # of `ActiveSupport.to_time_preserves_timezone`.
  sig { returns(Time) }
  def to_time; end

  # Uses Date to provide precise Time calculations for years, months, and days according to the proleptic Gregorian calendar.
  # The result is returned as a new `TimeWithZone` object.
  # The options parameter takes a hash with any of these keys: :years, :months, :weeks, :days, :hours, :minutes, :seconds.
  # If advancing by a value of variable length (i.e., years, weeks, months, days), move forward from `time`, otherwise move forward
  # from utc, for accuracy when moving across DST boundaries.
  sig { params(options: T::Hash[Symbol, T.any(Integer, Float)]).returns(ActiveSupport::TimeWithZone) }
  def advance(options); end
end

# defines some of the methods at https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/core_ext/date
# this is not a complete definition!
class Date
  sig { params(options: T::Hash[Symbol, Integer]).returns(Date) }
  def advance(options); end

  # these are the sigs for Date- in the stdlib
  # https://github.com/sorbet/sorbet/blob/3910f6cfd9935c9b42e2135e32e15ab8a6e5b9be/rbi/stdlib/date.rbi#L373
  # note that if more sigs are added to sorbet you should replicate them here
  # check sorbet master: https://github.com/sorbet/sorbet/blob/master/rbi/stdlib/date.rbi
  sig {params(arg0: Numeric).returns(T.self_type)}
  sig {params(arg0: Date).returns(Rational)}
  # these sigs are added for activesupport users
  sig {params(arg0: ActiveSupport::Duration).returns(T.self_type)}
  def -(arg0); end
end

# defines some of the methods at https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/core_ext/time
# this is not a complete definition!
class Time
  sig { returns(Time) }
  def midnight; end

  sig { returns(Time) }
  def beginning_of_day; end

  sig { params(options: T::Hash[Symbol, Integer]).returns(Time) }
  def advance(options); end

  sig { returns(Time) }
  def at_midnight; end

  sig { returns(Time) }
  def at_beginning_of_day; end

  sig { returns(Time) }
  def middle_of_day; end

  sig { returns(Time) }
  def midday; end

  sig { returns(Time) }
  def noon; end

  sig { returns(Time) }
  def at_midday; end

  sig { returns(Time) }
  def at_noon; end

  sig { returns(Time) }
  def at_middle_of_day; end

  # https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/core_ext/date_and_time/zones.rb
  # returns Time in the case zone is passed nil and ActiveSupport::TimeWithZone otherwise
  sig { params(zone: T.nilable(T.any(String, ActiveSupport::TimeZone))).returns(T.any(ActiveSupport::TimeWithZone, Time)) }
  def in_time_zone(zone = ::Time.zone); end

  # these are the sigs for Time- in the stdlib
  # https://github.com/sorbet/sorbet/blob/c3691753e4ce545e1eb66cbd3e55de67d8879b98/rbi/core/time.rbi#L347
  # note that if more sigs are added to sorbet you should replicate them here
  # check sorbet master: https://github.com/sorbet/sorbet/blob/master/rbi/core/time.rbi#L347
  sig do
    params(
        arg0: Time,
    )
    .returns(Float)
  end
  sig do
    params(
        arg0: Numeric,
    )
    .returns(Time)
  end
  # these sigs are added for activesupport users
  sig { params(arg0: ActiveSupport::Duration).returns(Time) }
  def -(arg0); end

  # Returns the TimeZone for the current request, if this has been set (via Time.zone=).
  # If `Time.zone` has not been set for the current request, returns the TimeZone specified in `config.time_zone`.
  sig { returns(ActiveSupport::TimeZone) }
  def self.zone; end

  # Sets `Time.zone` to a TimeZone object for the current request/thread.
  #
  # This method accepts any of the following:
  #
  # * A Rails TimeZone object.
  # * An identifier for a Rails TimeZone object (e.g., "Eastern Time (US & Canada)", `-5.hours`).
  # * A TZInfo::Timezone object.
  # * An identifier for a TZInfo::Timezone object (e.g., "America/New_York").
  #
  # Here's an example of how you might set `Time.zone` on a per request basis and reset it when the request is done.
  # `current_user.time_zone` just needs to return a string identifying the user's preferred time zone:
  #
  # ```ruby
  # class ApplicationController < ActionController::Base
  #   around_action :set_time_zone
  #
  #   def set_time_zone
  #     if logged_in?
  #       Time.use_zone(current_user.time_zone) { yield }
  #     else
  #       yield
  #     end
  #   end
  # end
  # ```
  sig { params(time_zone: T.any(String, TZInfo::Timezone, ActiveSupport::TimeZone, ActiveSupport::Duration)).void }
  def self.zone=(time_zone); end
end

class ActiveSupport::TimeZone
  # Locate a specific time zone object. If the argument is a string, it
  # is interpreted to mean the name of the timezone to locate. If it is a
  # numeric value it is either the hour offset, or the second offset, of the
  # timezone to find. (The first one with that offset will be returned.)
  # Returns `nil` if no such time zone is known to the system.
  sig { params(arg: T.any(String, Numeric, ActiveSupport::Duration)).returns(T.nilable(ActiveSupport::TimeZone)) }
  def self.[](arg); end

  # Returns an array of all TimeZone objects. There are multiple
  # TimeZone objects per time zone, in many cases, to make it easier
  # for users to find their own time zone.
  sig { returns(T::Array[ActiveSupport::TimeZone]) }
  def self.all; end

  # A convenience method for returning a collection of TimeZone objects
  # for time zones in the USA.
  sig { returns(T::Array[ActiveSupport::TimeZone]) }
  def self.us_zones; end

  # A convenience method for returning a collection of TimeZone objects
  # for time zones in the country specified by its ISO 3166-1 Alpha2 code.
  sig { params(country_code: T.any(String, Symbol)).returns(T::Array[ActiveSupport::TimeZone]) }
  def self.country_zones(country_code); end

  # Returns an ActiveSupport::TimeWithZone instance representing the current
  # time in the time zone represented by `self`.
  #
  # ```ruby
  # Time.zone = 'Hawaii'  # => "Hawaii"
  # Time.zone.now         # => Wed, 23 Jan 2008 20:24:27 HST -10:00
  # ```
  sig { returns(ActiveSupport::TimeWithZone) }
  def now; end

  # Returns the current date in this time zone.
  sig { returns(Date) }
  def today; end

  # Returns the next date in this time zone.
  sig { returns(Date) }
  def tomorrow; end

  # Returns the previous date in this time zone.
  sig { returns(Date) }
  def yesterday; end

  # Method for creating new ActiveSupport::TimeWithZone instance in time zone
  # of `self` from given values.
  #
  # ```ruby
  # Time.zone = 'Hawaii'                    # => "Hawaii"
  # Time.zone.local(2007, 2, 1, 15, 30, 45) # => Thu, 01 Feb 2007 15:30:45 HST -10:00
  # ```
  sig { params(args: T.untyped).returns(ActiveSupport::TimeWithZone) }
  def local(*args); end
end

# defines some of the methods at https://github.com/rails/rails/tree/v6.0.0/activesupport/lib/active_support/core_ext/hash
# this is not a complete definition!
class Hash
  sig { returns(T::Hash[String, T.untyped]) }
  def stringify_keys; end

  sig { returns(T::Hash[String, T.untyped]) }
  def stringify_keys!; end

  sig { returns(T::Hash[String, T.untyped]) }
  def deep_stringify_keys; end

  sig { returns(T::Hash[String, T.untyped]) }
  def deep_stringify_keys!; end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def symbolize_keys; end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def symbolize_keys!; end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def deep_symbolize_keys; end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def deep_symbolize_keys!; end

  # in an ideal world, `arg` would be the type of all keys, the 1st `T.untyped` would be
  # the type of keys your block returns, and the 2nd `T.untyped` would be the type of values
  # that the hash had.
  sig { params(block: T.proc.params(arg: T.untyped).void).returns(T::Hash[T.untyped, T.untyped]) }
  def deep_transform_keys(&block); end

  sig { params(block: T.proc.params(arg: T.untyped).void).returns(T::Hash[T.untyped, T.untyped]) }
  def deep_transform_keys!(&block); end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_options; end
end

class Integer
  # Returns a Duration instance matching the number of months provided.
  #
  # ```ruby
  # 2.months # => 2 months
  # ```
  sig { returns(ActiveSupport::Duration) }
  def months; end

  sig { returns(ActiveSupport::Duration) }
  def month; end

  # Returns a Duration instance matching the number of years provided.
  #
  # ```ruby
  # 2.years # => 2 years
  # ```
  sig { returns(ActiveSupport::Duration) }
  def years; end

  sig { returns(ActiveSupport::Duration) }
  def year; end
end

class Numeric
  sig { returns(ActiveSupport::Duration) }
  def second; end

  sig { returns(ActiveSupport::Duration) }
  def seconds; end

  sig { returns(ActiveSupport::Duration) }
  def minute; end

  sig { returns(ActiveSupport::Duration) }
  def minutes; end

  sig { returns(ActiveSupport::Duration) }
  def hour; end

  sig { returns(ActiveSupport::Duration) }
  def hours; end

  sig { returns(ActiveSupport::Duration) }
  def day; end

  sig { returns(ActiveSupport::Duration) }
  def days; end

  sig { returns(ActiveSupport::Duration) }
  def week; end

  sig { returns(ActiveSupport::Duration) }
  def weeks; end

  sig { returns(ActiveSupport::Duration) }
  def fortnight; end

  sig { returns(ActiveSupport::Duration) }
  def fortnights; end

  sig { returns(T.self_type) }
  def in_milliseconds; end

  KILOBYTE = T.let(1024, Integer)
  MEGABYTE = T.let(KILOBYTE * 1024, Integer)
  GIGABYTE = T.let(MEGABYTE * 1024, Integer)
  TERABYTE = T.let(GIGABYTE * 1024, Integer)
  PETABYTE = T.let(TERABYTE * 1024, Integer)
  EXABYTE  = T.let(PETABYTE * 1024, Integer)

  # Enables the use of byte calculations and declarations, like 45.bytes + 2.6.megabytes
  #
  # ```ruby
  # 2.bytes # => 2
  # ```
  sig { returns(T.self_type) }
  def byte; end

  # Enables the use of byte calculations and declarations, like 45.bytes + 2.6.megabytes
  #
  # ```ruby
  # 2.bytes # => 2
  # ```
  sig { returns(T.self_type) }
  def bytes; end

  # Returns the number of bytes equivalent to the kilobytes provided.
  #
  # ```ruby
  # 2.kilobytes # => 2048
  # ```
  sig { returns(T.self_type) }
  def kilobyte; end

  # Returns the number of bytes equivalent to the kilobytes provided.
  #
  # ```ruby
  # 2.kilobytes # => 2048
  # ```
  sig { returns(T.self_type) }
  def kilobytes; end

  # Returns the number of bytes equivalent to the megabytes provided.
  #
  # ```ruby
  # 2.megabytes # => 2_097_152
  # ```
  sig { returns(T.self_type) }
  def megabyte; end

  # Returns the number of bytes equivalent to the megabytes provided.
  #
  # ```ruby
  # 2.megabytes # => 2_097_152
  # ```
  sig { returns(T.self_type) }
  def megabytes; end

  # Returns the number of bytes equivalent to the gigabytes provided.
  #
  # ```ruby
  # 2.gigabytes # => 2_147_483_648
  # ```
  sig { returns(T.self_type) }
  def gigabyte; end

  # Returns the number of bytes equivalent to the gigabytes provided.
  #
  # ```ruby
  # 2.gigabytes # => 2_147_483_648
  # ```
  sig { returns(T.self_type) }
  def gigabytes; end

  # Returns the number of bytes equivalent to the terabytes provided.
  #
  # ```ruby
  # 2.terabytes # => 2_199_023_255_552
  # ```
  sig { returns(T.self_type) }
  def terabyte; end

  # Returns the number of bytes equivalent to the terabytes provided.
  #
  # ```ruby
  # 2.terabytes # => 2_199_023_255_552
  # ```
  sig { returns(T.self_type) }
  def terabytes; end

  # Returns the number of bytes equivalent to the petabytes provided.
  #
  # ```ruby
  # 2.petabytes # => 2_251_799_813_685_248
  # ```
  sig { returns(T.self_type) }
  def petabyte; end

  # Returns the number of bytes equivalent to the petabytes provided.
  #
  # ```ruby
  # 2.petabytes # => 2_251_799_813_685_248
  # ```
  sig { returns(T.self_type) }
  def petabytes; end

  # Returns the number of bytes equivalent to the exabytes provided.
  #
  # ```ruby
  # 2.exabytes # => 2_305_843_009_213_693_952
  # ```
  sig { returns(T.self_type) }
  def exabyte; end

  # Returns the number of bytes equivalent to the exabytes provided.
  #
  # ```ruby
  # 2.exabytes # => 2_305_843_009_213_693_952
  # ```
  sig { returns(T.self_type) }
  def exabytes; end
end

module Enumerable
  # https://github.com/rails/rails/blob/v5.2.3/activesupport/lib/active_support/core_ext/enumerable.rb#L64..L72
  # the case where a block isn't given isn't handled - that seems like an unlikely case
  sig do
    type_parameters(:key).params(
      block: T.proc.params(o: Enumerable::Elem).returns(T.type_parameter(:key))
    ).returns(
      T::Hash[T.type_parameter(:key), Enumerable::Elem]
    )
  end
  def index_by(&block); end
end

class ActiveSupport::Duration
  # Returns the number of seconds that this Duration represents.
  #
  # ```ruby
  # 1.minute.to_i   # => 60
  # 1.hour.to_i     # => 3600
  # 1.day.to_i      # => 86400
  # ```
  #
  # Note that this conversion makes some assumptions about the
  # duration of some periods, e.g. months are always 1/12 of year
  # and years are 365.2425 days:
  #
  # ```ruby
  # # equivalent to (1.year / 12).to_i
  # 1.month.to_i    # => 2629746
  #
  # # equivalent to 365.2425.days.to_i
  # 1.year.to_i     # => 31556952
  # ```
  #
  # In such cases, Ruby's core
  # [Date](https://ruby-doc.org/stdlib/libdoc/date/rdoc/Date.html) and
  # [Time](https://ruby-doc.org/stdlib/libdoc/time/rdoc/Time.html) should be used for precision
  # date and time arithmetic.
  sig { returns(Integer) }
  def to_i; end

  sig { returns(Float) }
  def to_f; end

  # Returns the amount of seconds a duration covers as a string.
  # For more information check to_i method.
  #
  # ```ruby
  # 1.day.to_s # => "86400"
  # ```
  sig { returns(String) }
  def to_s; end

  # Creates a new Duration from string formatted according to ISO 8601 Duration.
  #
  # See [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601#Durations) for more information.
  # This method allows negative parts to be present in pattern.
  # If invalid string is provided, it will raise `ActiveSupport::Duration::ISO8601Parser::ParsingError`.
  sig { params(iso8601duration: String).returns(ActiveSupport::Duration) }
  def self.parse(iso8601duration); end

  # Creates a new Duration from a seconds value that is converted
  # to the individual parts:
  #
  # ```ruby
  # ActiveSupport::Duration.build(31556952).parts # => {:years=>1}
  # ActiveSupport::Duration.build(2716146).parts  # => {:months=>1, :days=>1}
  # ```
  sig { params(value: Numeric).returns(ActiveSupport::Duration) }
  def self.build(value); end

  # Returns `true` if `other` is also a Duration instance, which has the
  # same parts as this one.
  sig { params(other: T.untyped).returns(T::Boolean) }
  def eql?(other); end

  # Compares one Duration with another or a Numeric to this Duration.
  # Numeric values are treated as seconds.
  sig { params(other: T.any(ActiveSupport::Duration, Numeric)).returns(Integer) }
  def <=>(other); end

  # Adds another Duration or a Numeric to this Duration. Numeric values
  # are treated as seconds.
  sig { params(other: T.any(ActiveSupport::Duration, Numeric)).returns(ActiveSupport::Duration) }
  def +(other); end

  # Subtracts another Duration or a Numeric from this Duration. Numeric
  # values are treated as seconds.
  sig { params(other: T.any(ActiveSupport::Duration, Numeric)).returns(ActiveSupport::Duration) }
  def -(other); end

  # Multiplies this Duration by a Numeric and returns a new Duration.
  sig { params(other: Numeric).returns(ActiveSupport::Duration) }
  def *(other); end

  # Divides this Duration by a Numeric and returns a new Duration.
  sig { params(other: Numeric).returns(ActiveSupport::Duration) }
  def /(other); end

  # Returns the modulo of this Duration by another Duration or Numeric.
  # Numeric values are treated as seconds.
  sig { params(other: T.any(ActiveSupport::Duration, Numeric)).returns(ActiveSupport::Duration) }
  def %(other); end

  # Returns `true` if `other` is also a Duration instance with the
  # same `value`, or if `other == value`.
  sig { params(other: T.untyped).returns(T::Boolean) }
  def ==(other); end

  # Build ISO 8601 Duration string for this duration.
  # The `precision` parameter can be used to limit seconds' precision of duration.
  sig { params(precision: T.nilable(Integer)).returns(String) }
  def iso8601(precision: nil); end

  sig { returns(ActiveSupport::TimeWithZone) }
  def from_now; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def ago; end
end

module Benchmark
  extend T::Sig

  sig { params(block: T.proc.void).returns(Float) }
  def self.ms(&block); end
end
