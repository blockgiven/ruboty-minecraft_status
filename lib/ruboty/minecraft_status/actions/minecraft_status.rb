require 'takumi/server_list_ping'

module Ruboty
  module MinecraftStatus
    module Actions
      class MinecraftStatus < Ruboty::Actions::Base
        def call
          response = Takumi::ServerListPing.ping(message[:address])

          desc     = response.info['description']
          online   = response.info['players']['online']
          max      = response.info['players']['max']
          names    = (response.info['players']['sample'] || []).map {|player|
            player['name']
          }.join(', ')

          message.reply("#{desc} (#{online}/#{max}): #{names}")
        end
      end
    end
  end
end
