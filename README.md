# Vanilla Maven Web Application Archetype
Very simple webapp archetype similar to `maven-archetype-webapp` but with common web related dependencies.

# Usage

    git clone https://github.com/victorskl/vanilla-archetype-webapp
    
    mvn clean install
    
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
