from jenkins/jenkins

# Distributed Builds plugins
RUN /usr/local/bin/install-plugins.sh ssh-slaves

# install Notifications and Publishing plugins
RUN /usr/local/bin/install-plugins.sh workflow-aggregator
RUN /usr/local/bin/install-plugins.sh git
RUN /usr/local/bin/install-plugins.sh github-api
RUN /usr/local/bin/install-plugins.sh configuration-as-code
RUN /usr/local/bin/install-plugins.sh kubernetes-cd

# Artifacts
RUN /usr/local/bin/install-plugins.sh htmlpublisher

# UI
RUN /usr/local/bin/install-plugins.sh greenballs
RUN /usr/local/bin/install-plugins.sh simple-theme-plugin

# Scaling
RUN /usr/local/bin/install-plugins.sh kubernetes

# install Maven
USER root
COPY jenkins.yaml /var/lib/casc_configs
ENV CASC_JENKINS_CONFIG=/var/lib/casc_configs
RUN apt-get update && apt-get install -y maven
USER jenkins
