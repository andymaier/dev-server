FROM codercom/code-server:3.5.0

#Tools
RUN sudo apt-get update && sudo apt-get install -y gnupg2

#Java installation
RUN sudo apt-get install -y openjdk-11-jre openjdk-11-jdk


RUN ["code-server","--auth=none","--install-extension=vscjava.vscode-java-pack"]
RUN ["code-server","--auth=none","--install-extension=gabrielbb.vscode-lombok"]
RUN ["code-server","--auth=none","--install-extension=auchenberg.vscode-browser-preview"]
CMD ["code-server","--auth=none"]
