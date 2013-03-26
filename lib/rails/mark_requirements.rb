require 'rails/mark_requirements/version'

module Rails
  module MarkRequirements

    # Allow the developer to be lazy and auto-extend the class methods, which
    # is required for the instance method to work anyway
    def self.included(klass) # :nodoc:
      klass.extend ClassMethods
    end

    module ClassMethods
      # :call-seq:
      # Klass.mark_required? :attribute
      #
      # does field_for(object.attribute) require 'a presence'

      def mark_required?(attribute)
        validation_classes = self.validators_on(attribute).map(&:class)
        ret = false
        ret = true if validation_classes.include?(ActiveModel::Validations::PresenceValidator)
        ret
      end
    end # /class_methods

    # :call-seq:
    # mark_required? :attribute
    #
    # does field_for(object.attribute) require 'a presence'

    def mark_required?(attribute)
      self.class.mark_required?(attribute)
    end

  end
end
