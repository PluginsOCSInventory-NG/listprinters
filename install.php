<?php
function plugin_version_listprinters()
{
return array('name' => 'List printers',
'version' => '1.0',
'author'=> 'Valentin DEVILLE',
'license' => 'GPLv2',
'verMinOcs' => '2.2');
}

function plugin_init_listprinters()
{
$object = new plugins;
$object -> add_cd_entry("listprinters","other");

$object -> sql_query("CREATE TABLE IF NOT EXISTS `listprinters` (
                      `ID` INT(11) NOT NULL AUTO_INCREMENT,
                      `HARDWARE_ID` INT(11) NOT NULL,
                      `NAME` VARCHAR(255) DEFAULT NULL,
                      `ADDRESS` VARCHAR(255) DEFAULT NULL,
                      PRIMARY KEY  (`ID`,`HARDWARE_ID`)
                      ) ENGINE=INNODB;");

}

function plugin_delete_listprinters()
{
$object = new plugins;
$object -> del_cd_entry("listprinters");
$object -> sql_query("DROP TABLE `listprinters`");

}