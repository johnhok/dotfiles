#------------------------
#
# ~/.bash_profile
#
#------------------------

#------------------------
# Export variables
#------------------------
export NETSOFT_HOME="/Users/jhok/Developer"
export BUILDTOOLS_HOME="/Users/jhok/opt/buildtools"
export WEBNEW_HOME="$NETSOFT_HOME/webnew"

# Using some magic here to set JAVA_HOME. If running "javac -version" is not
# returning the version you expect, trying running "echo $(/usr/libexec/java_home)"
# to see what the version is set to. You may explicitly set the version by using
# the "-v" flag. For example... "$(/usr/libexec/java_home -v 1.7.0_21)".
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7.0_79)
export IDEA_JDK=$(/usr/libexec/java_home -v 1.6.0_65-b14-466.1)
export JAVA_OPTS="-Xms1024m -Xmx4096m -Dfile.encoding=UTF8 -DuseF5=false"
export GRADLE_HOME="$BUILDTOOLS_HOME/gradle/gradle"
#export GRADLE_OPTS="${GRADLE_OPTS} -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5051"
export ANT_HOME="$BUILDTOOLS_HOME/ant/apache-ant"
#export CATALINA_HOME="/Users/jhok/opt/tomcat"
#export CATALINA_BASE="$WEBNEW_HOME/build"
export N_PREFIX="$HOME/opt/n"

#------------------------
# Proxy variables
#------------------------
# http_proxy is the proxy setup in CNTLM for NTLM proxying.
export http_proxy="http://localhost:9999"
export HTTP_PROXY="$http_proxy"
export https_proxy="$http_proxy"
export HTTPS_PROXY="$http_proxy"
export ALL_PROXY="$http_proxy"
# end proxy setup

#------------------------
# Export PATH
#------------------------
export PATH="$HOME/bin":$PATH
export PATH="/Users/jhok/.homebrew/bin":$PATH
export PATH="/Users/jhok/opt/nodejs/bin":$PATH
export PATH="/Users/jhok/opt/n/bin":$PATH
export PATH="$GRADLE_HOME/bin":$PATH
export PATH="$ANT_HOME/bin":$PATH

# Define aliases
#------------------------
#alias start_tomcat="$CATALINA_HOME/bin/startup.sh && tail -f $CATALINA_BASE/logs/catalina.out"
#alias stop_tomcat="$CATALINA_HOME/bin/shutdown.sh"

#------------------------
# Define functions
#------------------------

# Rebuilds passed in app and starts tomcat.
# Example usages from terminal:
# "rebuild public"
# "rebuild micro"
# "rebuild visasell"
#function rebuild {
#  cd "$WEBNEW_HOME";
#  ant $@;
#  catalina.sh run;
#}

#export -f rebuild

export CLICOLOR=1
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Settings to turn off proxies
if [ -f ~/.disable_proxies ]; then
   source ~/.disable_proxies
fi

# Place custom bash configuration in ~/.bash_profile_custom
if [ -f ~/.bash_profile_custom ]; then
   source ~/.bash_profile_custom
fi
