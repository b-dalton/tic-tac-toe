class Player
    def initialize(user_interface)
        @user_interface = user_interface
    end

    def get_move
        @user_interface.get_user_input
    end
end