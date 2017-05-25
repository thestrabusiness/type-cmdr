require 'readline'

module TypeCMDR
  class Game
    attr_accessor :input

    def start
      time_start = Time.now
      commands.each do |cmd|
        puts cmd

        get_user_input

         until cmd == input
           get_user_input
         end

        puts 'OK!'
      end
      time_end = Time.now
      time_taken = time_end - time_start
      puts "Good Job! #{time_taken} sec"
    end

    def get_user_input
      @input = user_input
    end

    def user_input
      Readline::readline('> ')
    end

    def commands
      [
          'git branch',
          'git checkout',
          'git merge',
          'git push origin master',
          'git fetch origin'
      ]
    end
  end
end

TypeCMDR::Game.new.start
