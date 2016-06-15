module Enom
  module EmailInfo

    def email_forwarding
      Client.request("Command" => "GetForwarding", "SLD" => sld, "TLD" => tld)["interface_response"]["eforward"] || []
    end

    def email_forwarding?
      Client.request("Command" => "GetForwarding", "SLD" => sld, "TLD" => tld)["interface_response"]["DomainServices"]["EmailForwarding"] == "True"
    end

  end
end
