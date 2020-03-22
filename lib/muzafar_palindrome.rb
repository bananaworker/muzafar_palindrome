require "muzafar_palindrome/version"

module MuzafarPalindrome

    # Returns true for a palindrome. False otherwise
    def palindrome?
      if processed_content.strip.empty?
        false
      else
        processed_content == processed_content.reverse
      end
    end

    # Keeps the below functions private
    private

      # Processes content for a palindrome detection.
      def processed_content
        to_s.scan(/[a-z\d]/i).join.downcase
      end
end

# Creating a module with functionality
class String
  include MuzafarPalindrome
end

class Integer
  include MuzafarPalindrome
end
