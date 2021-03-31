FROM gitpod/workspace-full:latest

USER gitpod

RUN /bin/bash -l -c "gem install htmlbeautifier"
RUN /bin/bash -l -c "gem install rufo"

RUN /bin/bash -l -c "curl https://cli-assets.heroku.com/install.sh | sh"

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

RUN sudo apt-get update && sudo apt-get install -y nodejs yarn postgresql-client
RUN sudo apt-get update && sudo apt-get install -y yarn
RUN sudo apt install -y postgresql postgresql-contrib libpq-dev psmisc lsof
RUN echo "rvm use 2.6.6" >> ~/.bashrc
RUN echo "rvm_silence_path_mismatch_check_flag=1" >> ~/.rvmrc
