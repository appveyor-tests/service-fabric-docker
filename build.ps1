iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/appveyor/ci/master/scripts/fix-service-fabric-docker.ps1'))
. "$ENV:ProgramFiles\Microsoft SDKs\Service Fabric\ClusterSetup\CleanCluster.ps1"
. "$ENV:ProgramFiles\Microsoft SDKs\Service Fabric\ClusterSetup\DevClusterSetup.ps1"
. "$ENV:ProgramFiles\Microsoft SDKs\Service Fabric\ClusterSetup\CleanCluster.ps1"
if ($LastExitCode -ne 0) {$host.SetShouldExit($LastExitCode)}
