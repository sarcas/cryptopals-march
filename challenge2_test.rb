require_relative 'challenge1_test'

class Challenge2Test < Challenge1Test
  def test_challenge2
    s1 = '1c0111001f010100061a024b53535009181c'
    s2 = '686974207468652062756c6c277320657965'
    expected_result = '746865206b696420646f6e277420706c6179'

    assert_equal expected_result, equal_buffer_xor(s1,s2)
  end

  def equal_buffer_xor(buffer1, buffer2)
    b1 = hex_string_to_byte(buffer1)
    b2 = hex_string_to_byte(buffer2)

    b1.map.with_index { |byte, index| byte ^ b2[index] }.map {|c| c.to_s(16)}.join
  end

  def hex_string_to_byte(hex_string)
    hex_string.scan(/../).map { |c| c.to_i(16)}
  end
end
