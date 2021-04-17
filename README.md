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
    
    #as a standalone
    podman run -it --rm -p 9023:23 -e mode=standalone ascii-art-movie-telnet-player
    
Run as systemd service
-----------------------

podman create --name star_wars_server -p 6379:6379 ascii-art-movie-telnet-player
podman generate systemd star_wars_server --restart-policy=always -t 5 -f -n
mkdir -p ~/.config/systemd/user
cp ./container-star_wars_server.service ~/.config/systemd/user/star_wars_server.service
systemctl enable --user star_wars_server.service
systemctl start --user star_wars_server.service
systemctl status --user star_wars_server.service
 
