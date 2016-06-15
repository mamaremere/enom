module Enom
  module EmailInfo

    def email_forwarding
      unless defined?(@email_forwarding)
        response = Client.request("Command" => "GetForwarding", "SLD" => sld, "TLD" => tld)["interface_response"]
        @email_forwarding = response["eforward"]
      end
      @email_forwarding
    end

    def email_forwarding?
      Client.request("Command" => "GetForwarding", "SLD" => sld, "TLD" => tld)["interface_response"]["DomainServices"]["EmailForwarding"] == "True"
    end

  end
end
