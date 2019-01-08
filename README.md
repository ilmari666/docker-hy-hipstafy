App for hipstafying images from urls.
If output is not mapped only saves transformed images inside the container.

Usage:
docker run hipstafy IMAGEURL

As all the hipstafied images are found in the containers /hipstafy/output/ directory you can easily map them to your 'local' computer by using docker option -v 
for example
'docker run -v $(pwd):/hipstafy/output hipstafy sokeri.com/sokeri.gif'
will create hipstafied sokeri.gif in to your working directory.
