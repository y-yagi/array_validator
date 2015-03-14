require "active_model/validator"

class ActiveModel::EachValidator
  def validate(record)
    attributes.each do |attribute|
      value = record.read_attribute_for_validation(attribute)
      next if (value.nil? && options[:allow_nil]) || (value.blank? && options[:allow_blank])
      if value.instance_of?(Array)
        value.each { |v| validate_each(record, attribute, v) }
      else
        validate_each(record, attribute, value)
      end
    end
  end
end
