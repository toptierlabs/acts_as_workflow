require 'acts_as_workflow'
require 'rails'

module ActsAsWorkflow
  class Railtie < Rails::Railtie
    railtie_name :acts_as_workflow
  end
end
