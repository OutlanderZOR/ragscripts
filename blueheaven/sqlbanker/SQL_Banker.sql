
--
-- Definition of table `sql_banker`
--

CREATE TABLE `sql_banker` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `account_id` int(10) unsigned NOT NULL,
  `user_pass` varchar(15) NOT NULL,
  `zeny` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_banker`
--

/*!40000 ALTER TABLE `sql_banker` DISABLE KEYS */;
/*!40000 ALTER TABLE `sql_banker` ENABLE KEYS */;


--
-- Definition of table `sql_banker_log`
--

CREATE TABLE `sql_banker_log` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `acc_src` int(10) unsigned NOT NULL,
  `acc_des` int(10) unsigned NOT NULL,
  `tipo_operacao` tinyint(3) unsigned NOT NULL,
  `dt_operacao` datetime NOT NULL,
  `zeny` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`,`acc_src`,`acc_des`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_banker_log`
--

/*!40000 ALTER TABLE `sql_banker_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sql_banker_log` ENABLE KEYS */;


--
-- Definition of table `sql_banker_operacoes`
--

CREATE TABLE `sql_banker_operacoes` (
  `tipo_operacao` int(10) unsigned NOT NULL auto_increment,
  `nome_operacao` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`tipo_operacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
