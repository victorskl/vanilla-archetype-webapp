# Vanilla Maven Web Application Archetype
Very simple webapp archetype similar to `maven-archetype-webapp` but with common web related dependencies.

# Build
    git clone https://github.com/victorskl/vanilla-archetype-webapp    
    mvn clean install

# Download

* Go to [release tab](https://github.com/victorskl/vanilla-archetype-webapp/releases) and download the pre-built release version.

## Install
    mvn install:install-file \
     -Dfile=vanilla-archetype-webapp-1.0.jar \
     -DgroupId=com.sankholin \
     -DartifactId=vanilla-archetype-webapp \
     -Dversion=1.0 \
     -Dpackaging=jar

## Uninstall

* Just delete it from local maven repository cache. 
* Usually `/home/{username}/.m2/repository/com/sankholin` on Linux/Mac
* Or `C:\Users\{username}\.m2\repository\com\sankholin` on Windows.

# Usage
    
    mvn archetype:generate -DgroupId=com.example \
     -DartifactId=vanilla-tek \
     -DarchetypeGroupId=com.sankholin \
     -DarchetypeArtifactId=vanilla-archetype-webapp \
     -DarchetypeVersion=1.0 \
     -DinteractiveMode=false
    
    tree vanilla-tek
    
    cd vanilla-tek
    
    mvn clean package
    
    cp -v target/vanilla-tek.war {APACHE_TOMCAT_HOME}/webapps
    
    curl 'http://localhost:8080/vanilla-tek/'
