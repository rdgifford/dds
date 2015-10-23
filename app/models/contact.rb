# Simple model to handle validation
class Contact
  include ActiveModel::Validations
  attr_accessor :phone
end
