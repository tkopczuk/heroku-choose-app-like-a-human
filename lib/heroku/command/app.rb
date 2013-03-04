require 'heroku/command/run'

class Heroku::Command::App < Heroku::Command::Run
    
  # app
  #
  # Instead of 'heroku <commands> <...> --app <app name>'
  # use 'heroku app <app name> <commands>'
  # 
  # Feels good, doesn't it.
  def index
    unless @args.size > 0
        raise(CommandFailed, "Need to specify heroku app to use.")
    end
    app = @args[0]
    _args = @args[1..@args.size]

    _args.push '--app'
    _args.push app

    begin
        command = _args.shift.strip rescue "help"
        print "Running 'heroku ", command, " ", _args.join(" "), "'...\n"
        Heroku::Command.run(command, _args)
    rescue Interrupt
      `stty icanon echo`
      error("Command cancelled.")
    rescue => error
      styled_error(error)
      exit(1)
    end
  end
end
