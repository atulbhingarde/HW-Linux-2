# Playing with Args
## Instructions
- Create a script, called `args.sh`. As a sanity check, add the line: `echo "hello, world"`, and run the script.

- Print out `$0`. 
  - What does this contain?

__** the $0 parameter is a command itself**__

![command line echoed and first parameter if it exists]("./script_without_param.png")

- Print out `$1`. 
  - What happens when you run the script _with_ arguments?
  - What happens when you run the script _without_ arguments?

- Write a script that accepts _three_ arguments from the user, then prints out the following:
  - The name of the script
  - The value of each argument
  