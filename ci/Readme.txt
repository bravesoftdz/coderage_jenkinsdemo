Notes based on Craig's video
------------------------------------------------------------------------------------------
Build.bat - place in Jenkins Jobs folder (this folder should be backed up)
------------------------------------------------------------------------------------------
Here's an easier way to trigger a build, can do a HTTP/POST to
   http://localhost:8080/job/TestMyAmazingProduct/build

Source: https://wiki.jenkins.io/display/JENKINS/Building+a+software+project
(Steven Lovell added a comment on 1/13/2014 which corrected the documentation for later versions of Jenkins - use /job/project instead of /jenkins/job/project)
------------------------------------------------------------------------------------------
Final step left out of the video:
To get the dunitx test results into Jenkins:

A fresh install of Jenkins with standard plugins includes JUnit support. Add a NUnit plugin via: 
Manage Jenkins->Manage Plugins->view the Available plugin tab listing. 
Check the "NUnint Plugin" and install it (with restart) 

You will now have a new project configuration option under "Add post-build action" to select "Publish NUnit test result report" 
Do this and add "out\bin\dunitx-results.xml" to the Test report XMLs configuration and hit Save.

After that plugin is installed, the project option has been re-configured, and after you have two or more builds on your project, then a new Test Result Trend chart will be displayed on the project page.
------------------------------------------------------------------------------------------
Using GIT instead of SVN as in the video:

SCM configuration
Selected Git, repo url: https://github.com/darianmiller/coderage_jenkinsdemo.git
Added credentials

Build Triggers
Checked: "Build periodically" with a schedule of H/5 1 * * * 
(1am daily builds)

Checked: Poll SCM with a schedule of: H/5 * * * *
(Poll for changes every 5 minutes)

Build Environment
Checked: Add timestamps to the Console Output
(Optional by preference)
------------------------------------------------------------------------------------------