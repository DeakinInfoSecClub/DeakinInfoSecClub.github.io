#!/bin/bash
#
#  run.sh by @ketz
#  DISC website development wrapper.
#

exit_code=0; # set default exit_code

context="$(cd "$(dirname "${BASH_SOURCE[0]}" )/." && pwd )";

cd $context;

check_binary() {
    if [ $(command -v "$1" &> /dev/null; echo $?) != 0 ]; then
        echo -e "[!] You need to have $1 installed to run Jekyll!\n    See here: <$2>\n";
        exit_code=1;
    fi
}

exit_w() {
    echo -e "\nquitting...";
    if [ $exit_code ]; then
        exit $exit_code;
    else
        exit 0;
    fi
}

check_binary ruby "https://www.ruby-lang.org/en/";
check_binary bundle "https://bundler.io/";

if [ ! -f "Gemfile.lock" ]; then
    echo -e "Attempting to install ruby gems...";
    bundle install;
fi

if [ $(bundle exec jekyll b &> /dev/null; echo $?) == 0 ]; then
    echo -e "[i] Everything installed, starting a jekyll dev server...";
    bundle exec jekyll s;
else
    echo -e "[!] There may be errors, check that all the ruby gem dependencies have installed properly.";
fi

exit_w;