Jenkins
=======



Pipeline with credentials
-------------------------
Prerequisite: have credentials plugin
1. configure credential in https://pic/jenkins/credentials/
2. in pipeline script:
    withCredentials([sshUserPrivateKey(credentialsId: 'yourid...a1a1a1', keyFileVariable: '', passphraseVariable: '', usernameVariable: 'SSH_CREDENTIAL')])  {
    stage('uninstall') {
        sh "ssh ${SSH_CREDENTIAL}@${SERVER} sudo rm -rf /opt/app/"
        sh "scp -r -p ${WORKSPACE}/app ${SSH_CREDENTIAL}@${SERVER}:/opt/app"




Nexus-Yarn configuration
------------------
https://www.synaltic.fr/blog/comment-mettre-niveau-sonatype-nexus-2-vers-3/
 - migration vers la dernière V2
 - lancer la V3
   - dans V2:  capabilities/new/upgrade agent/ token
   - Dans V3:  administration/capabilities/create/upgrade/next/url et token
     
https://levelup.gitconnected.com/deploying-private-npm-packages-to-nexus-a16722cc8166
https://blog.sonatype.com/using-nexus-3-as-your-repository-part-2-npm-packages


.yarnrc
yarn config set registry http://pic.azenn.com/nexus/content/groups/npm-group 


$ yarn config get registry
warning package.json: License should be a valid SPDX license expression
https://registry.yarnpkg.com

Analyze partie java:
http://pic.azenn.com/nexus/content/groups/public
http://pic.azenn.com/nexus/content/repositories/releases
            <username>deployment</username>
            <password>C0nc0rd3Deploy</password>

any@mail.com

analyze login
_auth=YWRtaW46YWRtaW4xMjM=

_auth=YWRtaW46YWRtaW4xMjM= is the base64 hash for the credentials (admin/admin123). If you use a different set of credentials, you should compute your own hash with:

echo -n 'deployment:C0nc0rd3Deploy' | openssl base64



configure nexus
---------------
docker run --rm -it -p 8081:8081/tcp sonatype/nexus3:latest


configure yarn
--------------
~/.yarnrc
registry "http://pic.azenn.com/nexus/content/groups/npm-group"

registry.yarnpkg.com


_auth=ZGVwbG95bWVudDpDMG5jMHJkM0RlcGxveQ==


//registry.npmjs.org/:




TypeError: Cannot create property 'lastUpdateCheck' on string 'registry "http://pic.azenn.com/nexus/content/groups/npm-group"



YARN again
----------
http://registry.npmjs.org
https://registry.yarnpkg.com

https://pic.azenn.com/nexus/content/repositories/npm-private/
https://pic.azenn.com/nexus/content/repositories/npm-proxy/

yarn config set registry http://pic.azenn.com/nexus/content/groups/npm-group
yarn config set registry https://pic.azenn.com/nexus/content/repositories/npm-private/

npm login --registry=https://pic.azenn.com/nexus/content/repositories/npm-private/

yarn login
            <username>deployment</username>
            <password>C0nc0rd3Deploy</password>C0nc0rd3Deploy
C0nc0rd3Deploy C0nc0rd3Deploy


Yarn retry
----------
yarn config set registry http://pic.azenn.com/nexus/content/groups/npm-group
yarn login
~/.npmrc
_auth=ZGVwbG95bWVudDpDMG5jMHJkM0RlcGxveQ==


yarn publish --registry http://pic.azenn.com/nexus/content/repositories/npm-private/


Yarn last chance
----------------
mvn deploy:deploy-file -DgroupId=com.azenn -DartifactId=reverso-front -Dversion=1.0.0 -DgeneratePom=false -Dpackaging=tgz -DrepositoryId=deployment -Durl=http://pic.azenn.com/nexus/content/groups/npm-group -Dfile=reverso.tgz
mvn deploy:deploy-file -DgroupId=com.azenn -DartifactId=reverso-front -Dversion=1.0.0 -DgeneratePom=false -Dpackaging=tgz -DrepositoryId=deployment -Durl=https://pic.azenn.com/nexus/content/repositories/snapshots/ -Dfile=reverso.tgz


curl -v -F r=releases -F hasPom=false -F e=jar -F g=com.reverso -F a=reverso -F v=1.0 -F p=tgz -F file=@reverso.tgz -u C0nc0rd3Deploy http://pic.azenn.com/nexus/content/groups/npm-group

2) Uploading an artifact with a pom file:

curl -v -F r=releases -F hasPom=true -F e=jar -F file=@pom.xml -F file=@project-1.0.jar -u admin:admin123 http://localhost:8081/nexus/service/local/artifact/maven/content


Git Hook
--------
hook local/remote

local: .git/hooks
 pre-commit
 pre-push

remote:
 post-receive

sur gitlab :
 custom_hooks
 https://kgaut.net/blog/2015/les-hooks-git-et-comment-automatiser-son-workflow.html

https://githooks.com/
https://stackoverflow.com/questions/45971311/bitbucket-webhook-jenkins
https://webhookrelay.com/blog/2017/11/23/github-jenkins-guide/
