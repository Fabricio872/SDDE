#! /bin/bash

echo "#############################################"
echo "### Do you want to build php image? [y/n] ###"
echo "#############################################"
read option
if [ "$option" = "y" ]; then
    docker build -t php-ubuntu .
fi

echo -e "\n"
echo "###################################################"
echo "### Do you want to create all containers? [y/n] ###"
echo "###################################################"
read option
if [ "$option" = "y" ]; then
    docker-compose up -d
fi

echo -e "\n"
echo "#########################################################"
echo "### Do you want to generate global link to PHP? [y/n] ###"
echo "#########################################################"
read option
if [ "$option" = "y" ]; then
    echo "Name of your global php command (for example 'php'):"
    read name
    echo -e "#! /bin/bash\ndocker container exec -it php-ubuntu php \$@" > /usr/bin/$name
    chmod 755 /usr/bin/$name
    echo "file /usr/bin/$name created"
fi

echo -e "\n"
echo "##############################################################"
echo "### Do you want to generate global link for Symfony? [y/n] ###"
echo "##############################################################"
read option
if [ "$option" = "y" ]; then
  echo "Name of your global symfony command (for example 'symfony'):"
  read name
  echo -e "#! /bin/bash\ndocker container exec -it php-ubuntu /usr/local/bin/symfony \$@" > /usr/bin/$name
  chmod 755 /usr/bin/$name
  echo "file /usr/bin/$name created"
fi

echo -e "\n"
echo "###############################################################"
echo "### Do you want to generate global link for Composer? [y/n] ###"
echo "###############################################################"
read option
if [ "$option" = "y" ]; then
  echo "Name of your global composer command (for example 'composer'):"
  read name
  echo -e "#! /bin/bash\ndocker container exec -it php-ubuntu /usr/bin/composer \$@" > /usr/bin/$name
  chmod 755 /usr/bin/$name
  echo "file /usr/bin/$name created"
fi

echo -e "\n"
echo "#########################"
echo "### Good luck and bye ###"
echo "#########################"
