class Test
  attr_reader :filename
  def initialize
    puts "Enter file name :-"
    filename = gets.chomp
    @filename = filename
  end

  def test_bash_script
    puts "Output for the shell command run is :-"
    puts runner("bash test_shell_script.sh")
  end

  def runner(shell_command)
    `#{shell_command}`
  end
end
t_obj = Test.new
t_obj.test_bash_script
