module Spree
  module RoleDecorator
    def self.prepended(base)
      base.singleton_class.prepend(ClassMethods)
    end

    module ClassMethods
      def affiliate
        find_or_create_by(name: :affiliate)
      end
    end
  end
end

Spree::Role.prepend Spree::RoleDecorator
