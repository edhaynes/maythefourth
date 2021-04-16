StarWars ASCII movie
=============================
derived from github nitram509/ascii-telnet-server
credits:

Original art work : Simon Jansen http://www.asciimation.co.nz/

Telnetification & Player coding : Martin W. Kirst
:wq
Python3 Update: Ryan Jarvis Dockerfile contributed by: Manuel Eusebio de Paz Carmona


Run as podman container
-----------------------

Simply build & run the container.  sw1.text is set as default movie file in Containerfile

    # Build image:
    $> podman build -t ascii-art-movie-telnet-player .
    
    # MODE STDOUT: Run as local player
    
    # with the default movie
    $> podman run -it --rm -e mode=stdout ascii-art-movie-telnet-player
    
 
