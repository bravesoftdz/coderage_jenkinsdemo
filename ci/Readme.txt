Build.bat - place in Jenkins Jobs folder (this folder should be backed up)


Here's an easier way to trigger a build, can do a HTTP/POST to
   http://localhost:8080/job/TestMyAmazingProduct/build

Source: https://wiki.jenkins.io/display/JENKINS/Building+a+software+project
(Steven Lovell added a comment on 1/13/2014 which corrected the documentation for later versions of Jenkins - use /job/project instead of /jenkins/job/project)
