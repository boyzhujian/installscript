wget https://get.helm.sh/helm-v3.3.0-rc.1-linux-amd64.tar.gz
gw
https://developer.aliyun.com/hub

 helm repo add stable https://apphub.aliyuncs.com/stable
 
 
 helm search repo   etcd
 
 
 https://helm.sh/docs/intro/using_helm/


    helm search hub searches the Helm Hub, which comprises helm charts from dozens of different repositories.
    
    helm search repo searches the repositories that you have added to your local helm client (with helm repo add). This search is done over local data, and no public network connection is needed.
    
    
     helm repo add brigade https://brigadecore.github.io/charts
     
     helm search repo brigade
     
      helm search repo kash
      
      
      helm install command. At its simplest, it takes two arguments: A release name that you pick, and the name of the chart you want to install.
      
      helm install happy-panda      stable/mariadb
      
      helm status happy-panda    
      
      helm show values stable/mariadb
      
      echo '{mariadbUser: user0, mariadbDatabase: user0db}' > config.yaml
      
      
      helm install -f config.yaml stable/mariadb --generate-name
      
      
      
      More Installation Methods

The helm install command can install from several sources:

    A chart repository (as we've seen above)
    A local chart archive (helm install foo foo-0.1.1.tgz)
    An unpacked chart directory (helm install foo path/to/foo)
    A full URL (helm install foo https://example.com/charts/foo-1.2.3.tgz)
    
    
    
     helm upgrade -f panda.yaml happy-panda stable/mariadb
     
     
     helm get values happy-panda
     
     helm rollback [RELEASE] [REVISION]
     
     helm uninstall happy-panda
     
       helm list --all
       
       
        helm create deis-workflow
        
        
        helm package deis-workflow
        
        helm install deis-workflow ./deis-workflow-0.1.0.tgz
     
     helm rollback happy-panda 1
