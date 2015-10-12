# Vanilla Maven Web Application Archetype
Very simple webapp archetype similar to `maven-archetype-webapp` but with common web related dependencies. By default, it is prepared to kick start with `Servlet 3.0` and up, where [you can use annotations](http://www.google.com/?q=servlet+3.0+annotations) such as `@WebServlet` over classical `web.xml` deployment descriptor.

# Demo

* http://cloud.sankholin.com/vanilla-tek/

# Build
You can build from source as follow. Otherwise you can use a release package by following instruction in next Download section. 

    git clone https://github.com/victorskl/vanilla-archetype-webapp.git
    mvn clean install

# Download

* It is assumed that you [already have Maven installed](https://maven.apache.org/install.html) and you are able to run `mvn -v` from your command line.
* Go to [release tab](https://github.com/victorskl/vanilla-archetype-webapp/releases) and download the latest pre-built release version.

### Linux/Mac Install
    mvn install:install-file \
     -Dfile=vanilla-archetype-webapp-1.0.jar \
     -DgroupId=com.sankholin \
     -DartifactId=vanilla-archetype-webapp \
     -Dversion=1.0 \
     -Dpackaging=jar

### Windows Install (cmd.exe)
For Windows use caret `^` for command line breaking instead.

    mvn install:install-file ^
     -Dfile=vanilla-archetype-webapp-1.0.jar ^
     -DgroupId=com.sankholin ^
     -DartifactId=vanilla-archetype-webapp ^
     -Dversion=1.0 ^
     -Dpackaging=jar

Typical Windows installation screen dump as follow.
    
    C:\Users\victorskl\Downloads\vanilla-archetype-webapp-1.0>mvn install:install-file ^
    More? -Dfile=vanilla-archetype-webapp-1.0.jar ^
    More? -DgroupId=com.sankholin ^
    More? -DartifactId=vanilla-archetype-webapp ^
    More? -Dversion=1.0 ^
    More? -Dpackaging=jar
    [INFO] Scanning for projects...
    Downloading: (...skip)
    (...skip)
    [INFO] Installing C:\Users\victorskl\Downloads\vanilla-archetype-webapp-1.0\vanilla-archetype-webapp-1.0.jar to C:\Users\victorskl\.m2\repository\com\sankholin\vanilla-archetype-webapp\1.0\vanilla-archetype-webapp-1.0.jar
    [INFO] Installing C:\Users\VICTOR~1\AppData\Local\Temp\mvninstall3455406662339243359.pom to C:\Users\victorskl\.m2\repository\com\sankholin\vanilla-archetype-webapp\1.0\vanilla-archetype-webapp-1.0.pom
    [INFO] ------------------------------------------------------------------------
    [INFO] BUILD SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] Total time: 6.499 s
    [INFO] Finished at: 2015-10-12T11:52:52+11:00
    [INFO] Final Memory: 9M/207M
    [INFO] ------------------------------------------------------------------------

### Uninstall

* Just delete it from local maven repository cache. 
* Usually `/home/{username}/.m2/repository/com/sankholin` on Linux/Mac
* Or `C:\Users\{username}\.m2\repository\com\sankholin` on Windows.

# Usage
    
Change `com.example` and `vanilla-tek` to reflect your new project.    
    
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
