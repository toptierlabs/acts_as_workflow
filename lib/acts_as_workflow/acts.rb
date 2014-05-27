module ActsAsWorkflow
  module Acts
    extend ActiveSupport::Concern
 
    included do
      attr_accessor :workflow
    end
 
    module ClassMethods
      def acts_as_workflow(options = {})
        # your code will go here
        @@workflow = Workflow.find_or_create_by!(entity_class: name)
      end
    end
  end
end

ActiveRecord::Base.send :include, ActsAsWorkflow::Acts
