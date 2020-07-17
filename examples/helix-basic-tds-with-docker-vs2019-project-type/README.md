# Welcome to the Sitecore Helix Examples - TDS with Docker and vs2019 project type

In order to start:
1. Clone/copy the whole Helix Example repo.
2. Locate Helix.Examples/examples/helix-basic-tds-with-docker-vs2019-project-type/BasicCompany.sln and open it in VS2019 :-)
3. Build solution
4. In order to get the TDS syncing to work, you need to have HedgehogDevelopment.SitecoreProject.Service.dll in your bin folder(in Helix.Examples/examples/helix-basic-tds-with-docker-vs2019-project-type/Docker/data/cm/wwwroot)  
   Add Global Sitecore TDS user config file to config the Sitecore Deeploy Folder and enable container deployment.
   Now, right click on the TDS project and select "Install Sitecore Connector". That should install the dll in your bin folder.
5. Execute Set-LicenseEnvironmentVariable.ps1 script in our Docker folder(C:\Projects\Helix.Examples\examples\helix-basic-tds-with-docker-vs2019-project-type\Docker):
   .\Set-LicenseEnvironmentVariable.ps1  -Path C:\license\license.xml -PersistForCurrentUser
6.  Set the Docker Compose project as StartUp Project and hit Docker Compose button :-)
7. Run whales-names and update your host file, by adding basic-company to your cm instance. Don't forget to cancel whales-names ;)

# Issues encountered:

1. Got error "TDSVersionVerify" task failed when install sitecore connector. To fix this issues, I reinstall TDS to match the version of this project, then clean the solution and deployfolder, and restart visual studio.

2. Quick push all sitecore to sitecore failed. I use syc all tds project method to do the push, especially for the project level tds project.
