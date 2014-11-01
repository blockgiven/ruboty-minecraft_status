require "ruboty/minecraft_status/actions/minecraft_status"

module Ruboty
  module Handlers
    class MinecraftStatus < Base
      on /minecraft status minecraft_status/, name: 'minecraft_status', description: 'TODO: write your description'

      def minecraft_status(message)
        Ruboty::MinecraftStatus::Actions::MinecraftStatus.new(message).call
      end
    end
  end
end
