class ApiConnector
  attr_accessor: :title, :description, :url

  def test_method
    puts "testing class call"
  end

# Everything in here will run when you set new instance
  def initialize(title: title, description: description, url: url = "google.com")
    @title = title
    @description = description
    @url = url
    secret_method
  end

  def testing_initializers
    puts @title
    puts @description
    puts @url
  end

  private
    def secret_method
      puts "A secret message from inside the parent class"
    end
end

api = ApiConnector.new(title: "My Title", description: "My cool description", url: "yahoo.com")

# api.test_method
api.testing_initializers

# Inheritence
class SmsConnector
  attr_accessor: :title, :description, :url

  def initialize(title: title, description: description, url: url = "google.com")
    @title = title
    @description = description
    @url = url
  end

  def send_sms
    puts @title
    puts @description
    puts @url
  end
end

class MailerConnector
  attr_accessor: :title, :description, :url

  def initialize(title: title, description: description, url: url = "google.com")
    @title = title
    @description = description
    @url = url
  end

  def send_mail
    puts @title
    puts @description
    puts @url
  end
end


# Can do this instead with < to inherit from another class
class SmsConnector < ApiConnector
  def send_sms
    puts "Sending sms..."
  end
end

class PhoneConnector < ApiConnector
  # The Super takes in 1st method from parent class api_logger first
  # Then it will run the second one inside this class
  def api_logger
    super
    put "Phone Call API connection starting..."
  end

  def send_phone_call
    puts "Sending phone call..."
  end
end

class MailConnector < ApiConnector
  def send_email
    puts "Sending email..."
  end
end

sms = SmsConnector.new(title: title, description: description, url: url = "google.com")
phone = PhoneConnector.new(title: title, description: description, url: url = "google.com")
email = MailConnector.new(title: title, description: description, url: url = "google.com")

sms.send_sms
phone.send_phone_call

# private methods are methods when they should not be used outside of the class
# There is also "protected" method, but it is rarely used

# Polymorphism and Super
class ApiConnector
  attr_accessor: :title, :description, :url

# Everything in here will run when you set new instance
  def initialize(title: title, description: description, url: url = "google.com")
    @title = title
    @description = description
    @url = url
    secret_method
  end

  def api_logger
    puts "API Connector starting..."
  end

  private
    def secret_method
      puts "A secret message from inside the parent class"
    end
end

phone.api_logger
