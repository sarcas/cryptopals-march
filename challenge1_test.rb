require "minitest/autorun"

class Challenge1Test < Minitest::Test

  def test_hex2base64
    assert_equal "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t", hex2base64("49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d")
  end

  def hex2base64(hex_string)
    require "base64" 

    Base64.strict_encode64(hex_string_to_utf8(hex_string))
  end

  def hex_string_to_utf8(hex_string)
    hex_string.scan(/../).map { |c| c.to_i(16).chr}.join
  end
end


