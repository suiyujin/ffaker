module Faker
  require 'faker/utils/module_utils'

  extend ModuleUtils

  LETTERS = k('a'..'z')

  def self.numerify(number_string)
    number_string.gsub!(/#/) { rand(10).to_s }
    number_string
  end

  def self.letterify(letter_string)
    letter_string.gsub!(/\?/) { LETTERS.rand }
    letter_string
  end

  def self.bothify(string)
    letterify(numerify(string))
  end

  autoload :Address,     'ffaker/address'
  autoload :Company,     'faker/company'
  autoload :Internet,    'ffaker/internet'
  autoload :Lorem,       'ffaker/lorem'
  autoload :Name,        'ffaker/name'
  autoload :PhoneNumber, 'ffaker/phone_number'
  autoload :VERSION,     'ffaker/version'
end