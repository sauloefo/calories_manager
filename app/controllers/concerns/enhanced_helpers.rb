module EnhancedHelpers extend ActiveSupport::Concern
  module ClassMethods

    ##
    # Redefines `helper_attr` method to call `attr_accessor` for each argument that
    # is not already a method of the class
    def helper_attr(*args)
      args \
        .select{|arg| !self.respond_to? arg} \
        .each { |arg| attr_accessor arg }
      super *args
    end
  end
end
