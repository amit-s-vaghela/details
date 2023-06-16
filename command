
composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition=2.2.5.

-----------------------------------------------------
Command
-----------------------------------------------------------------------------

tar xvzf Magento-CE-2.3.4.tar.gz
https://magento.stackexchange.com/questions/257222/magento-2-3-useful-ssh-cli-commands-list
--------------------------------------------------------------
UN .tar.gz folder

--------------------------------------------------------------
tar xvzf BannerSlider.tar.gz

tar xvzf PageSpeedTools.tar.gz

tar xvzf Lof.tar.gz

tar xvzf Sidebar.tar.gz


----------------------------------------------------------------------------
-------------------------
install magento specific folder m233
---------------------------------------------------------------------------------------------------------------------
var/www/html >>composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition magento_241

composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition=2.4.4 /magento244


composer create-project --repository-url=https://repo.magento.com/ magento/project-enterprise-edition=2.4.2 .

https://www.simicart.com/blog/magento-2-composer/
---------------------------------------------------------------------------------------------------------------------
grep command 
---------------------------------------------------------------------------------------------------------------------
grep -rsn 'lazyload loaded'  app/code/ 

grep 'new_category_form_data_source' app/code/Mageplaza/Blog/ -rsn

grep 'webforms_license_serial' app/ -rsn	Setup

grep -rsn 'field qty'  app/

grep -r "rocket-loader" /app/

grep -nr 'navigation.sections'   app/

grep -r -H "customer_listing_data_source" app/
grep -r "copyright_text" app/

grep -r -H 'Catalog\\Model\\ProductRepository' vendor/



php bin/magento setup:static-content:deploy --theme Sm_market

 php bin/magento setup:upgrade 
 php bin/magento setup:static-content:deploy -f
 php bin/magento indexer:reindex
 php bin/magento cache:clean
 php bin/magento cache:flush
 sudo service apache2 restart

----------All Command-----------------
rm -rf var/generation/* generated/ *var/cache/* var/log/* var/page_cache/*

php bin/magento cache:clean
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento setup:di:compile
php bin/magento indexer:reindex

sudo systemctl start elasticsearch
sudo systemctl status elasticsearch
sudo systemctl stop elasticsearch

--------------------------------------

(cmd untar file )  : -> tar xvzf Magento-CE-2.3.4.tar.gz 

 chmod -R 777 var/ pub/ generated/ app/

rm -rf var/page_cache/* var/cache/* var/generation/* generated/code pub/static/frontend/

rm -rf var/cache/*  var/page_cache/* var/report/*  generated/code/* var/log/*

rm -rf pub/static/frontend/ pub/static/adminhtml/ var/cache var/page_cache var/generation var/view_preprocessed  generated/code var/report/*

 -----------------------------------------------------------------------------------------

grep "Mobile Phone Parts" -rsn app/code/

app folder no backup leva mate 
--------------------------------------
zip -r amasty.zip app/code

zip -r amasty.zip app/code/Amasty



zip -r  backup_mageplaza.zip app/code/Mageplaza(check root file)

zip -r {filename.zip} {foldername}

zip -r app.zip app/
--------------------------------------------------
				DB Backup /Export DB
--------------------------------------------------
mysqldump -u root -p magento225 > magento225_backup.sql

mysqldump -u root -p tgs_new > backupname.sql

mysqldump -u root -p tadmin_final > tadmin_final.sql

mysql -uUSER -p -hHOST DB_NAME < db_dump.sql

mysql -u root -p plcdparts_dev < plcdparts_dev.sql
-----------------------------
(Backup data base cmd)
-----------------------------
mysqldump -u root -p tgs_live > tgs_backup123.sql 
--------------------------------------------------------------------------------
https://blog.magepsycho.com/export-import-cms-pages-static-blocks-via-ssh/
--------------------------------------------------------------------------------
mysqldump -u [username] -p[password] [database] cms_page cms_page_store cms_block cms_block_store | grep INSERT | sed 's/INSERT INTO/REPLACE INTO/' > cms-export.sql

step-1
magentoroot >> mysqldump -u root -p tgs cms_page cms_page_store cms_block cms_block_store | grep INSERT | sed 's/INSERT INTO/REPLACE INTO/' > cms-export.sql
step-2 Enter database password

--------------------------------------------------
				DB Import DB
--------------------------------------------------
exist Sql cms-export.sql file in magento root
mysql -u [username] -p[password] [database] < cms-export.sql
step -1
magentoroot >> mysql -u root -p  cossouq < cossouq.sql

mysqldump -u tadmin_final -p tadmin_final > tadmin_final_new.sql

tgs > tgs_backup.sql
step -2 Enter database password

mysql -u root -p swdev_sirenwireless < swdev_sirenwireless.sql

mysqldump -u root -p swdev_sirenwireless < swdev_sirenwireless.sql

mysqldump -u root -p  cossouq < cossouq.sql
--------------------------------------------------------------------------------------------------------------------------------------------
php bin/magento setup:install --base-url="http://127.0.0.1/magento244/pub/" --db-host="localhost" --db-name="magento244" --db-user="root" --db-password="root" --admin-firstname="admin" --admin-lastname="admin" --admin-email="user@example.com" --admin-user="admin" --admin-password="admin@123" --language="en_US" --currency="USD" --timezone="America/Chicago" --use-rewrites="1" --backend-frontname="admin" --search-engine=elasticsearch7 --elasticsearch-host="localhost" --elasticsearch-port=9200
--------------------------------------------------------------------------------------------------------------------------------------------

1.install magento install specific folder m233
var/www/html >> composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition m233

------------------------------------------------------------------
Custome Query 
----------------------------------------------------------------------

https://bsscommerce.com/confluence/ui-components-how-to-use-dynamicrows-components-in-magento-2/


-----------------------------------------------------------

php bin/magento admin:user:create --admin-user=tgs --admin-password=tgs@123 --admin-email=amiitvaghela@mail.com --admin-firstname=admin --admin-lastname=admin

----------------------------------------
				live to server 
----------------------------------------

https://www.mageworx.com/blog/how-to-transfer-magento-2-site-from-localhost-to-server/

SELECT * FROM core_config_data WHERE `value` LIKE '%http://127.0.0.1/magento244/pub/%'

mysql> SELECT * FROM core_config_data WHERE `value` LIKE '%https://swdev.sirenwireless.com/%'

http://127.0.0.1/dev_sirenwireless/pub/
*************************** 1. row ***************************
config_id: 2
    scope: default
 scope_id: 0
     path: web/unsecure/base_url
    value: http://1001101010.com/
*************************** 12. row ***************************
config_id: 2401
    scope: default
 scope_id: 0
     path: web/secure/base_url
    value: https://1001101010.com/
*************************** 13. row ***************************
config_id: 2402
    scope: default
 scope_id: 0
     path: web/secure/base_link_url
    value: https://1001101010.com/
13 rows in set (0.00 sec)

UPDATE `core_config_data`
 SET `value` = replace(value, 'http://127.0.0.1/plcd242/pub/', 'http://plcd242/pub/')
 WHERE `value` LIKE '%http://plcd242/pub/%';


 UPDATE `core_config_data`
 SET `value` = replace(value, '1001101010.com', 'mynewdomain.com')
 WHERE `value` LIKE '%1001101010.com%';
 ------------------------------
 export

mysqldump -u root -p magento242 > magento242.sql

mysql -u root -p tgs < tgs.sql

mysql -u root -p magento242 < magento242.sql

 -----------------------------
 mysqldump -u root -p tgs cms_page cms_page_store cms_block cms_block_store | grep INSERT | sed 's/INSERT INTO/REPLACE INTO/' > cms-export.sql
---------------------
import
------------------
magentoroot >> mysql -u root -p magento242 > magento242_live.sql
cms_block

cms_block_store

cms_page

cms_page_store


UPDATE core_config_data SET value = 0 WHERE path = 'admin/url/use_custom';
UPDATE core_config_data SET value = 'http://127.0.0.1/plcd242/pub/admin/' WHERE path = 'admin/url/custom';
UPDATE core_config_data SET value = 'http://127.0.0.1/plcd242/pub/' WHERE path = 'web/secure/base_url';
UPDATE core_config_data SET value = 'http://127.0.0.1/plcd242/pub/' WHERE path = 'web/unsecure/base_url';

php bin/magento admin:user:create --admin-user=admin --admin-password=admin@123 --admin-email=hi@mageplaza.com --admin-firstname=plcd --admin-lastname=plcd


----------------------------------------

php bin/magento module:disable RBC_Banner
--------------------------------------------------
install magento 242 issue intsalltion magento 2
--------------------------------------------------------------------------
https://meetanshi.com/blog/install-magento-2-4-2-on-localhost-using-xampp/
---------------------------------------------------------------------------



https://www.rohanhapani.com/magento-2-get-product-image-url-in-rest-api/



install magento 242


php bin/magento setup:install --base-url="http://127.0.0.1/magento242/" --db-host="localhost" --db-name="magento242" --db-user="root" --db-password="Elate@123" --admin-firstname=Magento --admin-lastname="Admin" --admin-email="admin@example.com" --admin-user="admin" --admin-password="admin@123" --language=en_US  --currency="USD" --timezone="America/Chicago" --use-rewrites="1" --search-engine=elasticsearch7 --elasticsearch-host=localhost  --elasticsearch-port=9200



1) sudo gedit /etc/apache2/sites-available/local.magento242.co.uk.conf

2) Add this code in the text editor

<VirtualHost *:80>
    ServerName local.magento242.co.uk
    ServerAlias www.local.magento242.co.uk
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html/magento242/pub/

<Directory "/var/www/html/magento242/" >
           Options Indexes FollowSymLinks
AllowOverride All
Require all granted
        </Directory>    
    ErrorLog ${APACHE_LOG_DIR}/magento242-error.log
    CustomLog ${APACHE_LOG_DIR}/magento242-access.log combined
</VirtualHost>

3) Save and close


4) sudo a2ensite local.magento242.co.uk.conf
5) sudo service apache2 restart
6) sudo gedit /etc/hosts
Add Line
7)  127.0.0.1   local.magento242.co.uk

Add Core config data url in table = 'http://local.magento242.co.uk/'


php bin/magento module:disable Magento_TwoFactorAuth
Done Host
<VirtualHost *:80>
    ServerName local.magento242.co.uk
    ServerAlias www.local.magento242.co.uk
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html/magento242/pub

<Directory "/var/www/html/magento242/" >
           Options Indexes FollowSymLinks
AllowOverride All
Require all granted
        </Directory>    
    ErrorLog ${APACHE_LOG_DIR}/magento242-error.log
    CustomLog ${APACHE_LOG_DIR}/magento242-access.log combined
</VirtualHost>


-------------------------------------------------------------------------------
db-changes-during-local-setup

Table : core_config_data

delete following record

admin/url/custom
web/secure/base_url
web/unsecure/base_url

Delete following record 9find path)

web/unsecure/base_link_url
web/secure/base_link_url

change following path value to 0 (zero)

admin/url/use_custom

web/secure/use_in_adminhtml

web/secure/use_in_frontend

change base url in following path

web/unsecure/base_url
----------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------
Email
-----------------------------------------------------------------------
https://www.codextblog.com/magento-2/sending-custom-emails-using-custom-module-in-magento-2/

 mysql -u root -p cossouq < cossouq_db.sql (local)

 mysql -u cossouqdb_user -p cossouq > cossouq_livedb.sql (server)

 mysqldump -u cossouqdb_user -p cossouq > cossouq_livedb.sql


 mysqldump --databases --user=cossouqdb_user --password cossouq > cossouq_livedb.sql


 mysqldump --user cossouqdb_user --password  cossouq > cossouq_today.sql


mysql -u root -p cossouq_2_12 < cossouq_2_12.sql

https://magento.stackexchange.com/questions/210381/magento2-export-grid-data-in-xls-format


https://github.com/pepe1518/magento2/blob/master/vendor/magento/module-ui/Model/Export/ConvertToXml.php

https://magento.stackexchange.com/questions/210381/magento2-export-grid-data-in-xls-format


https://www.rakeshjesadiya.com/how-to-create-a-csv-file-to-download-using-magento-2/

https://www.rohanhapani.com/how-to-create-csv-and-download-programmatically-in-magento-2/

https://www.solutiontutorials.com/development/magento-2/export-admin-grid-with-selected-columns/


$ scp ec2-user@3.138.138.239:/home/ec2-user/LinuxShellTips_secrets.pdf /home/dnyce/Desktop/files 



https://magento.stackexchange.com/questions/247640/how-to-call-phtml-file-from-html-in-magento-2



$writer = new \Zend\Log\Writer\Stream(BP . '/var/log/logfile.log');
$logger = new \Zend\Log\Logger();
$logger->addWriter($writer);
$logger->info('Simple Text Log');
$logger->info(json_encode($SetProductData->getData()));
echo "<pre>";
print_r(json_encode($SetProductData->getData()));
echo "</pre>";

php bin/magento setup:db-declaration:generate-whitelist --module-name=Magento_GST


https://hostarmada.com/tutorials/e-commerce/magento-2/how-to-configure-urls-pages-and-cookies-in-magento-2/

<!-- 
<ul class="social-icons">
    <li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
    <li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
    <li><a href="#" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>
    <li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
    <li><a href="#" target="_blank"><i class="fab fa-pinterest-p"></i></a></li>
    
</ul> -->

https://www.rakeshjesadiya.com/magento-2-create-custom-category-widget/


https://belvg.com/blog/magento-2-backend-menu-and-acl.html


<!-- <script type="text/javascript">
require([
    'jquery',
    'Magento_Customer/js/customer-data',
    'Magento_Ui/js/model/messageList', // added component
    ], function($,customerData,messageList){
    $(document).ready(function(){
        
        var messageText ='<?php //echo $messageText ?>'; //"Shiping Rate not Update";
        messageList.addSuccessMessage({ message:(messageText) });

    });
});
</script> -->


foreach ($proCollection as $product):
try{ 
    code to product save 
}catch(Exception $e){ 
    $errorCausingSKUs[$product->getSku()] = $e->getMessage(); continue; 
}
endforeach;


https://www.thecoachsmb.com/multiple-website-and-multistore-in-magento-2-on-localhost-xampp-windows/
https://magentodeveloper.in/add-popup-to-product-view-page-magento2.html


https://www.mgt-commerce.com/tutorial/how-to-install-magento-2-4-4-on-ubuntu-20-04/
--------------------------------------------------------------------------------------------------------------------------------------

install magento 244
--------------------------------------------------------------------------------------------------------------------------------------
https://www.mgt-commerce.com/tutorial/how-to-install-magento-2-4-4-on-ubuntu-20-04/
https://www.thecoachsmb.com/6-steps-to-install-magento2-4-2-on-xampp-windows-using-composer/

/var/www/html$ chmod -R 777 magento244
/var/www/html$ cd magento244
/var/www/html/magento244$ composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition=2.4.4


create database magento244

php bin/magento setup:install --base-url="http://127.0.0.1/magento244/pub/" --db-host="localhost" --db-name="magento244" --db-user="root" --db-password="root" --admin-firstname="admin" --admin-lastname="admin" --admin-email="user@example.com" --admin-user="admin" --admin-password="admin@123" --language="en_US" --currency="USD" --timezone="America/Chicago" --use-rewrites="1" --backend-frontname="admin" --search-engine=elasticsearch7 --elasticsearch-host="localhost" --elasticsearch-port=9200

php bin/magento cron:install
php bin/magento sampledata:deploy
-------------------------------------------------------------------------------------------------------------------------------------------
https://stackoverflow.com/questions/46461891/add-class-to-dates-from-array-jquery-ui-datepicker


Api


to generate token

http://127.0.0.1/magento2/rest/V1/integration/admin/token?username=admin&password=admin@123


Server Token:

k0tz2n85hxi4ux3f10b2fmi92oqnse38

To create token in local

http://local.magento243.com/rest/V1/integration/admin/token?username=admin&password=admin@123

https://www.magedelight.com/resources/how-to-add-a-new-customer-address-by-rest-api-in-magento-2/



sudo service elasticsearch status
systemctl start elasticsearch or systemctl start elasticsearch.service.

/home/siren/public_html/app/design/frontend/Smartwave/porto_child/Smartwave_Porto/templates/html/file name

<script type="text/javascript">
require(['jquery'], function (jQuery) {
    jQuery(document).ready(function () {

    var selector = 'div nav ul';
    jQuery(selector).mouseover(function(){     
           jQuery("body").addClass("is-expanded");

    });
    jQuery(selector).mouseout(function(){    
          jQuery("body").removeClass("is-expanded");
    });

    var submenu = '.level0 .submenu';
    jQuery(submenu).mouseover(function(){    
          jQuery("body").addClass("is-expanded");
    });
    jQuery(submenu).mouseout(function(){    
          jQuery("body").removeClass("is-expanded");
    });

    });
});
</script>

<script type="text/javascript">
require(['jquery'], function ($) {
    $(document).ready(function () {
             
        // $('.search-toggle-icon ,.open').click(function(){
        //   $("body").removeClass("is-expanded");
        // });

        $(".search-toggle-icon").click(function() {
          if($('.search-toggle-icon').hasClass('open') == false) {
            $("body").addClass("open-is-expanded");
            //console.log("false");
          } else {
            //console.log("True");
             $("body").removeClass("open-is-expanded");
          }
        });
    });
});
</script>
-------------------------------------------------------------------------------------------------------------------------------------

install magento 244
-------------------------------------------------------------------------------------------------------------------------------------
/var/www/html$ chmod -R 777 magento244
/var/www/html$ cd magento244
/var/www/html/magento244$ composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition=2.4.4

create database magento244

php bin/magento setup:install --base-url="http://127.0.0.1/magento244/pub/" --db-host="localhost" --db-name="magento244" --db-user="root" --db-password="root" --admin-firstname="admin" --admin-lastname="admin" --admin-email="user@example.com" --admin-user="admin" --admin-password="admin@123" --language="en_US" --currency="USD" --timezone="America/Chicago" --use-rewrites="1" --backend-frontname="admin" --search-engine=elasticsearch7 --elasticsearch-host="localhost" --elasticsearch-port=9200

---------------------------------------------------------------
Git
---------------------------------------------------------------
remember when you create new branch 

1. go to master branch : git checkout master
2. take pull : git pull
3. create new branch : git checkout -b task/task-name
4. make file changes
5. to check which files are modified : git status
6. add your changes to GIT : git add (modified file name with path) without brackets like this https://i.imgur.com/3nQHy8R.png
7. commit : git commit -m "your comment" (comment should explain what exact change you made)
8. push code : git push

if you are push your branch and it is new branch you will get message like this https://i.imgur.com/CCsfJ5c.png

in that case you just need to copy and past cmd like this https://i.imgur.com/yVdPysB.png

-------------------------------------
after push branch
-------------------------------------

3. create new branch : git checkout -b task/BACK-END-SEARCH-IMPROVEMENT

git status
git add app/code/Evince/Admintheme/Controller/Adminhtml/Index/GlobalSearch.php
commit : git commit -m "1)13026 account issue 2) add customer address to find on search"



356  git clone https://amitevince@bitbucket.org/ashok_evince/phonelcdparts.git
357  git branch
358  git pull
359  git checkout master
360  git pull
361  git checkout -b task/BACK-END-SEARCH-IMPROVEMENT
362  git status
363  git branch
364  git add app/code/Evince/Admintheme/Controller/Adminhtml/Index/GlobalSearch.php
365  git status
366  git commit -m "1)13026 account issue 2) add customer address to find on search"
367  git status
368  git commit -m "1)13026 account issue 2) add customer address to find on search"
369  git config --global user.email "amit@evincedev.com"
370  git config --global user.name "Amit"
371  git commit -m "1)13026 account issue 2) add customer address to find on search"
372  git push
373  git push --set-upstream origin task/BACK-END-SEARCH-IMPROVEMENT




git checkout -b task/BACKEND-REQUESTED-AND-ACCEPTED-MATCH-POP-OP
git commit -m "BACKEND-REQUESTED-AND-ACCEPTED-MATCH-POP-OP ISSUE Fix -conflict"

BULK-EDIT-J7-MAX-ISSUE


----------------how to resolve GIT conflict ----------------

go to develop branch

git pull

git pull origin task/BACKEND-REQUESTED-AND-ACCEPTED-MATCH-POP-OP (your branch)

do changes (add)

git add

git commit

git push


git commit -m "customer search issue add address search merge data"

----------------------------------------------
git checkout task/BULK-EDIT-J7-MAX-ISSUE



git fetch origin task/REQUESTED-ACCEPTED-MATCH-POPUP

git fetch origin task/RMA-FRONT-END-REPLACE-ICON-WITH-BUTTON
git checkout task/RMA-FRONT-END-REPLACE-ICON-WITH-BUTTON



git checkout -b task/category-view-styling-Switch-button

git checkout task/category-view-styling-Switch-button

git commit -m "diffrent user role access menus and item issue Fix"


git pull origin task/ALL-THE-MENUS-TO-ROLE-ASSIGNMENT
---
---------------------------------------------------------------------------------------------------------------------------
install magento 242
---------------------------------------------------------------------------------------------------------------------------

DOCUMENT : https://docs.google.com/document/d/1O43-SwvQPmyTNdHQ5ySE1KyohwMHKljDJQEJFPkHcq4/edit#
---------------------------------------------------------------------------------------------------------------------------

php bin/magento setup:install --base-url="http://127.0.0.1/plcd/" --db-host="localhost" --db-name="plcd_fresh" --db-user="root" --db-password="root" --admin-firstname="Magento" --admin-lastname="Admin" --admin-email="admin@example.com" --admin-user="admin" --admin-password="admin@123" --language="en_US" --currency="USD" --timezone="America/Chicago" --use-rewrites="1" --search-engine=elasticsearch7 --elasticsearch-host="localhost" --elasticsearch-port=9200



1) sudo gedit /etc/apache2/sites-available/local.plcd.com.conf

2) Add this code in the text editor

<VirtualHost *:80>
    ServerName local.plcd.com
    ServerAlias www.local.plcd.com
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html/plcd/pub/

	<Directory "/var/www/html/plcd/" >
		Options Indexes FollowSymLinks
		AllowOverride All
		Require all granted
    </Directory>    
    ErrorLog ${APACHE_LOG_DIR}/plcd-error.log
    CustomLog ${APACHE_LOG_DIR}/plcd-access.log combined
</VirtualHost>

<VirtualHost *:80>
    ServerAdmin magento2@test.com
    ServerName sa.com.tn
    ServerAlias www.sa.com.tn
    DocumentRoot /var/www/html/SA
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
    <Directory /var/www/html/SA>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride All
                Order allow,deny
                allow from all
</Directory>
</VirtualHost>

3) Save and close


4) sudo a2ensite local.plcd.conf
5) sudo service apache2 restart
6) sudo gedit /etc/hosts
Add Line
7)  127.0.0.1   local.plcd

Add Core config data url in table = 'http://local.plcd/'


php bin/magento module:disable Magento_TwoFactorAuth
Done Host
<VirtualHost *:80>
    ServerName local.magento242.co.uk
    ServerAlias www.local.magento242.co.uk
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html/magento242/pub

<Directory "/var/www/html/magento242/" >
           Options Indexes FollowSymLinks
			AllowOverride All
			Require all granted
</Directory>    
    ErrorLog ${APACHE_LOG_DIR}/magento242-error.log
    CustomLog ${APACHE_LOG_DIR}/magento242-access.log combined
</VirtualHost>


--------------------------------------------------------------------------------------------------------------------

sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/plcd.com.tn.conf


sudo gedit /etc/apache2/sites-available/plcd.com.tn.conf


<VirtualHost *:80>
    ServerAdmin magento2@test.com
    ServerName plcd.com.tn
    ServerAlias www.plcd.com.tn
    DocumentRoot /var/www/html/plcd/pub
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
    <Directory /var/www/html/plcd/pub>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride All
                Order allow,deny
                allow from all
</Directory>
</VirtualHost>


sudo a2ensite plcd.com.tn.conf

sudo gedit /etc/hosts

127.0.0.1 plcd.com.tn


----------------------------------------------------------------------------------------------


https://magento.stackexchange.com/questions/245721/virtual-host-setup-in-local-host-magento-2
-----------------------------------------------------------------------------------------------------------
step 1 :sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/local.plcd.com.conf

step 2 : sudo gedit /etc/apache2/sites-available/local.plcd.com.conf
add code and save file

<VirtualHost *:80>
    ServerAdmin magento2@test.com
    ServerName local.plcd.com
    ServerAlias www.local.plcd.com
    DocumentRoot /var/www/html/plcd/pub
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
    <Directory /var/www/html/plcd/pub>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride All
                Order allow,deny
                allow from all
</Directory>
</VirtualHost>


step 3 :sudo a2ensite local.plcd.com.conf 

step 4 :sudo gedit /etc/hosts

Add code ->  127.0.0.1 local.plcd.com  >>save file


127.0.0.1       plcd.com.tn


---
<script type="text/javascript">
require(['jquery'], function ($) {
    $(document).ready(function () {
             
        // $('.search-toggle-icon ,.open').click(function(){
        //   $("body").removeClass("is-expanded");
        // });

        $(".search-toggle-icon").click(function() {
          if($('.search-toggle-icon').hasClass('open') == false) {
            $("body").addClass("open-is-expanded");
            //console.log("false");
          } else {
            //console.log("True");
             $("body").removeClass("open-is-expanded");
          }
        });
        $(document).click(function (e){
             let drop = $('.search-area ,.show-icon');
             if (!drop.is(e.target) && drop.has(e.target).length === 0) {
              console.log("removed");
              $("body").removeClass("open-is-expanded");
             }
        });

    });
});

</script>
-------------------------------------------------------------------------------------------------------------------------

move command 

mv /var/www/html/a_magento244-test/a_magento244 /var/www/html/ 

no create a_magento244 folder in  html directories


join two table grid
https://magecomp.com/blog/join-two-tables-and-create-admin-grid-using-ui-component-magento-2/


https://www.mage-world.com/blog/grid-and-form-in-magento-2-admin-panel-part-2.html

Multi Select UI Field dropdown
-------------------------------------
https://webkul.com/blog/magento2-create-multi-select-ui-field-frontend-admin/

create tab under ui form

---------------------------------------------------------------------
Proxy
---------------------------------------------------------------------
https://magecomp.com/blog/proxies-in-magento-2-all-you-need-to-know/

http://www.ekvitech.com/blog/magento2-join-two-tables-for-admin-grid-module-creation-from-scratch/


https://magento.stackexchange.com/questions/192317/magento-2-how-to-add-foreign-key-in-update-schema

--------------------------------------

window.checkoutConfig
--------------------------------------

https://magento.stackexchange.com/questions/174775/magento-2-pass-data-in-checkout

https://magento.stackexchange.com/questions/157073/magento-2-add-custom-data-to-checkout

https://magento.stackexchange.com/questions/253118/magento-2-how-to-check-module-enabled-or-not-for-override-html

https://magento.stackexchange.com/questions/110298/how-to-access-configuration-variables-in-magento-checkouts-javascript

https://magento.stackexchange.com/questions/238753/magento2-how-to-display-custom-values-in-checkout-page


https://magento.stackexchange.com/questions/149779/magento-2-checkout-page-where-is-coming-from-a-order-summary-sections-data-in-p



https://magento.stackexchange.com/questions/245722/overriding-private-method-of-model-file-in-magento-2


https://meetanshi.com/blog/create-custom-image-attribute-for-customer-in-magento-2/

--------------------------------------------------------------------
image in grid 
--------------------------------------------------------------------
https://webkul.com/blog/display-thumbnail-in-admin-grid-magento-2-0/


For install magneto through composer use below command:
---------------------------------------------------------------
composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition=2.4.5 /var/www/html/MagentoPwa/ 

-----------------------------------------------------------------------------------------------------
API REFRENCE
-----------------------------------------------------------------------------------------------------

https://blog.imagineer.co/en-us/e-commerce/magento/how-to-create-a-simple-web-api-in-magento2

ajax load default related product wia ajax
https://dev98.de/2020/09/14/ajax-loading-of-related-products-in-magento-2/

call -> http://milandev.me/magento-2-how-to-get-external-api-value-in-the-ui-component-form-by-adding-a-custom-html-button/
        http://milandev.me/tag/magento2/



https://www.rootways.com/blog/magento-2-get-customer-by-email-using-rest-api

API ==> Method get / http://202.131.107.107:8013/a_magento244/pub/rest/V1/customers/1

/var/www/html/a_magento244/app/code/Test/Rewardpoints/etc# ls

------------------------------------------------------------------------------------------------------------------
                PAYMENT METHOD
------------------------------------------------------------------------------------------------------------------
https://www.ibnab.com/en/blog/magento-2/save-payment-method-with-additional-data-show-custom-field-on-payment-check

https://github.com/ibnab/payment-additional
--------------------------------------------------------------------------------------------------------------------
                                                Checkout fealds 
--------------------------------------------------------------------------------------------------------------------
https://navnitviradiya.wordpress.com/2019/12/02/magento-2-add-custom-field-to-shipping-address-form-in-checkout-page/

http://techjeffyu.com/blog/magento-2-add-a-custom-field-to-checkout-shipping

https://codeblog.experius.nl/magento-2-add-extra-billing-or-shipping-field-to-the-checkout/

Ajax checkout fealds add 
---------------------------------------------------------------------------------------------
https://blog.magezon.com/how-to-add-field-in-magento-2-checkout-page-mgt/


db_schema.xml

https://www.createswowtech.com/magento-database-schema/
https://www.createswowtech.com/category/magento2/


php bin/magento admin:user:create --admin-user="amit" --admin-password="amit@123" --admin-email="jon.doe@gmail.com" --admin-firstname="Admin" --admin-lastname="Admin"


php bin/magento admin:user:create --admin-user=amit --admin-password=amit@123 --admin-email=hi@mageplaza.com --admin-firstname=Mageplaza --admin-lastname=Family


https://www.classcentral.com/course/youtube-magento-2-tutorial-step-by-step-in-hindi-65164



php -m
php --ini
grep -r 'mysql' /etc/php/8.1
sudo nano /etc/php/8.1/cli/php.ini

<div role="alert" class="messages">
    <div class="message-warning warning message">
        <div><strong><?php echo $block->escapeHtml(__(' After Payment complete your order.')) ?></strong></div>
    </div>
</div>
