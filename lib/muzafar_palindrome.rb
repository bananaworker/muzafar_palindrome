require "muzafar_palindrome/version"

# Creating a module with functionality
class String

    # Returns true for a palindrome. False otherwise
    def palindrome?
      processed_content == processed_content.reverse
    end

    # Keeps the below functions private
    private

      # Processes content for a palindrome detection.
      def processed_content
        scan(/[a-z]/i).join.downcase
      end
end
