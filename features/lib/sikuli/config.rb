# Config variables for the Sikuli driver
#
module Sikuli
  class Config
    class << self

      # Public: the Boolean representing whether or not to perform a 1 second
      # highlight when an image is matched through Searchable#find,
      # Searchable#find_all. Defaults to false.
      attr_accessor :highlight_on_find

      # Public: the absolute file path where Sikuli will look for images when
      # a just a filename is passed to a search or click method
      #
      # Returns the String representation of the path
      def image_path
        java.lang.System.getProperty("SIKULI_IMAGE_PATH")
      end

      # Public: the setter for the absolute file path where Sikuli will search
      # for images with given a filename as an image
      #
      # Examples
      #
      #  Sikuli::Config.image_path = "/Users/clemley/sikuli/images/"
      #
      # Returns nothing
      def image_path=(path)
        java.lang.System.setProperty("SIKULI_IMAGE_PATH", path)
      end

      # Public: turns stdout logging on and off for the Sikuli java classes.
      # Defaults to true.
      #
      # Examples
      #
      #  Sikuli::Config.logging = false
      #
      # Returns nothing
      def logging=(boolean)
        return unless [TrueClass, FalseClass].include? boolean.class
        org.sikuli.script::Settings.InfoLogs = boolean
        org.sikuli.script::Settings.ActionLogs = boolean
        org.sikuli.script::Settings.DebugLogs = boolean
      end

      # Public: convienence method for grouping the setting of config
      # variables
      #
      # Examples
      #
      #   Sikuli::Config.run do |config|
      #     config.logging = true
      #     config.image_path = "/User/clemley/images"
      #     config.highlight_on_find = true
      #   end
      #
      # Returns nothing
      def run(*args)
        if block_given?
          yield self
        end
      end

    end
  end
end