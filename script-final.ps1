#variable cuenta 1
$RESOURCE_GROUP_NAME = "demoariel"           #variable para el grupo de recurso 
$LOCATION = "eastus"                         #variable para la localizacion del grupo de recursos 
$STORAGE_ACCOUNT_NAME = "cuentaalmacena8888" #variable para la cuenta de almacenamiento1
$KIND = "BlobStorage"                        #variable el tipo de cuenta de almacenamiento 1.
$container_name = "container8888"            #variable para el contenedor de la cuenta de almacenamiento
$BLOB_STORAGE = "ariel111111"                #variable para el nombre del blob del contenedor 1 

#crear grupo de recurso
az group create --name $RESOURCE_GROUP_NAME --location $LOCATION

#crear storage account
az storage account create --name $STORAGE_ACCOUNT_NAME  --resource-group $RESOURCE_GROUP_NAME --kind $KIND --location $LOCATION --encryption-key-type-for-table Account --access-tier Cool

#crear container en la storage acoount
az storage container create --name $container_name --account-name $STORAGE_ACCOUNT_NAME  --public-acces blob

#crear archivo en el container
az storage blob upload  -c $container_name --account-name $STORAGE_ACCOUNT_NAME --file SCRIPTFINAL.txt --name $BLOB_STORAGE

#CUENTA DE ALMACENAMIENTO 2

#variable cuenta 2
$RESOURCE_GROUP_NAME = "demoariel"           #variable para el grupo de recurso de cuenta dea almacenamiento 2  
$LOCATION = "westus"                         #variable para la localizacion de la cuenta de almacenamiento 2
$STORAGE_ACCOUNT_NAME = "accountstorage6666" #variable para el nombre de cuenta de almacenamiento 2
$KIND = "BlobStorage"                        #variable para el tipo de cuenta de almacenamiento 2
$container_name = "container6666"            #variable para el nombre del contenedor de la cuenta de almacenamiento 2
$BLOB_STORAGE = "myblob2"                    #variable para el nombre del blob del contenedor 2

#crear grupo de recurso
az group create --name $RESOURCE_GROUP_NAME --location $LOCATION

#crear storage account
az storage account create --name $STORAGE_ACCOUNT_NAME  --resource-group $RESOURCE_GROUP_NAME --kind $KIND --location $LOCATION --encryption-key-type-for-table Account --access-tier Cool

#crear container en la storage acoount
az storage container create --name $container_name --account-name $STORAGE_ACCOUNT_NAME  --public-acces blob

#crear archivo en el container
az storage blob upload  -c $container_name --account-name $STORAGE_ACCOUNT_NAME --file SCRIPTFINAL.txt --name $BLOB_STORAGE
