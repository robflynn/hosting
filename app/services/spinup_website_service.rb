class SpinupWebsiteService < Micro::Service::Strict
  def call!
    #return Failure { "Reason" }
    return Success()
  end
end