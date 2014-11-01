require "ruboty/minecraft_status/actions/minecraft_status"

module Ruboty
  module Handlers
    class MinecraftStatus < Base
      on /minecraft status (?<address>.*)/, name: 'minecraft_status', description: 'check minecraft server status'

      def minecraft_status(message)
        Ruboty::MinecraftStatus::Actions::MinecraftStatus.new(message).call
      end
    end
  end
end
