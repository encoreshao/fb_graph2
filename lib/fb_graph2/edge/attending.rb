module FbGraph2
  class Edge
    module Attending
      def attending(params = {})
        users = self.edge :attending, params
        users.collect! do |user|
          User.new(user[:id], user).authenticate self.access_token
        end
      end
    end
  end
end