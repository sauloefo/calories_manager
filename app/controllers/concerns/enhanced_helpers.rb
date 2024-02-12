module EnhancedHelpers extend ActiveSupport::Concern
  module ClassMethods

    ##
    # Redefines `helper_attr` method to call `attr_accessor` for each argument that
    # is not already a method of the class
    def helper_attr(*args)
      args
        .reject { respond_to? _1 }
        .each { attr_accessor _1 }
      super *args
    end
  end
end
