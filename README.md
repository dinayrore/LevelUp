# LevelUp!

Stand-ups are an agile development practice meant to share your accomplishments (what was done), goals (what will hopefully get done), and obstacles (what is preventing progress) with other members of a team to explore a projects overall success and progression.

With LevelUp! you may cheer, sympathize, or share your knowledge with others as you work through daily events. You may choose to make your posts private or share your status' with the community. A progression of your state of mind can be tracked through your status posts and is only displayed on your personal homepage. You can also group up with others to create a team under the same cause. Team-based status' will be shared with all members of the team and can be tracked via an individual's profile under affiliated groups/teams. A leaderboard of successes will promote friendly competition and motivate others to pursue their goals!

It's time to LevelUp! Please visit my application at:

## Getting Started

The instructions below will help you retrieve a copy of the project to run on your local machine through CLI. Please see deployment for notes on how to deploy the project on a live system.  The instructions provided are for macbook users only.

### Prerequisites

You may need to install or update the following software.

Find Terminal - to run program
  1. Open Finder. Finder is available in the Dock.
  2. Select Applications from the side bar menu.  Then unfold the Utilities folder.
  3. Double click on Terminal to initialize.

Install Homebrew - to store program files properly
  1. Open up Terminal.
  2. Run `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
  3. Run `brew doctor`

Install rbenv & ruby-build - to install and compile different versions of Ruby code language
  1. Open up Terminal
  2. Run `brew install ruby-build rbenv`
  3. Run `echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile`

Install ruby 2.3.1 - or latest version of Ruby
  1. Close and reopen Terminal. `rbenv install 2.3.1`
  2. After quite some time, run: `rbenv global 2.3.1`
Once you have completed the above installation processes your system should be ready to launch the program!

Install Rails 5 - or latest version
```
gem install rails --version=5.0.0.1
```

Download postgresql
  1. Go to http://postgresapp.com/
  2. Move the app to the /Applications file folder.
  3. Double Click on app to run the program.

Install postgresql using brew
```
brew install postgresql
```
Once you have completed the above installation processes your system is ready to launch the program!

### Deployment

Please complete the following procedure to run the program on a live system:
  1. Open Terminal.
  2. Change your directory to the one that which you would like to save this project. `$ cd folder_name`
  3. Then run the commands `$ git clone https://github.com/kteich88/LevelUp.git` and `$ cd LevelUp`
  4. Run `$ bundle install` to install needed gems located in the Gemfile.
  5. First, create the database: `rails db:create`
  6. Next, migrate the database: `rails db:migrate`
  7. Finally, run the test suite to verify that everything is working correctly: `$ rails test`

### Running Web app locally

  1. If the test suite passes, you'll be ready to run the app in a local server: `$ rails server`
  2. You should see `Rails 5.0.0.1 application starting in development on http://localhost:3000` in your Terminal.
  3. Go to localhost:3000 in your web browser to view the application homepage.

## Built With

* Atom
* Utilizes: Postgresql DB

## Authors

* **Kristine Teichmann**

## Acknowledgments

* Samantha Davis
* Lori Baumgartner
