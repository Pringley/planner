CONCEPT README!!!

Usage:
    planner (-h | --help)
    planner (-v | --version)
    planner new [action | project] [<file>] [--format=<fmt>]
    planner list actions [<context>]
    planner list projects
    planner edit <id>
    planner get <id>
    planner set <id> <file>

Options:
    -h, --help      Help menu
    -v, --version   Version information

This is other

* * * * *

Concept YAML:

    --- # Action
    id: A101
    title: write unit tests for message parser
    created: 2013-06-05 18:24:23 -7
    context: computer
    completed: false

    # be sure to indent your description by one space
    description: |
     ...

    # tasks default to no due date
    due:


    --- # Project
    id: P101
    title: chat server
    created: 2013-06-05 18:24:23 -7
    completed: false

    # be sure to indent your description by one space
    description: |
     ...

    # tasks default to no due date
    due:

    actions:
    - A101 # write unit tests for ...
    - A727 # update REAMDE to refl...

* * * * *

Concept API:

    class Planner
      actions
      projects

    class Action
      id: str
      title: str
      created: datetime
      context: str
      completed: bool
      description: str
      due: datetime

    class Project
      id: str
      title: str
      created: datetime
      context: str
      completed: bool
      description: str
      due: datetime
      actions: array<str>

* * * * *

NOTES!!!

language: ruby
cli: http://docopt.org
dates/times: http://chronic.rubyforge.org/
