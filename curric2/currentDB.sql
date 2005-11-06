# MySQL Navigator Xport
# Database: curriculum
# root@localhost

# CREATE DATABASE curriculum;
# USE curriculum;

#
# Table structure for table 'departments'
#

# DROP TABLE IF EXISTS departments;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  `sidebar` text,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

#
# Dumping data for table 'departments'
#

INSERT INTO departments VALUES (1,'Community Resource','Community resources (CRs) are classes outside of the box. Take any class from anyone, REALLY anything.');
INSERT INTO departments VALUES (2,'Technology','Not a real department, but it will be in no time. Pseudo-classes in this department: Media in Motion. ');
INSERT INTO departments VALUES (3,'Mathematics','Craig\'s department!!!!!!!!!!!!!!!!!!!!!!!!!1');
INSERT INTO departments VALUES (4,'Something useful',NULL);

#
# Table structure for table 'documents'
#

# DROP TABLE IF EXISTS documents;
CREATE TABLE `documents` (
  `unit_id` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `isfile` tinyint(4) default NULL,
  `filename` varchar(50) default NULL,
  `name` varchar(50) NOT NULL default '',
  `content` text,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

#
# Dumping data for table 'documents'
#

INSERT INTO documents VALUES (1,1,0,'','How to inhale','*take a deep breath, and we\'ll dive in*\n\nOK, now jump in place 3 times');
INSERT INTO documents VALUES (1,2,1,'1.doc','chapter 5 test','');

#
# Table structure for table 'subjects'
#

# DROP TABLE IF EXISTS subjects;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `description` text,
  `teacher_id` int(11) NOT NULL default '0',
  `department_id` int(11) NOT NULL default '0',
  `firstunit` int(11) default NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

#
# Dumping data for table 'subjects'
#

INSERT INTO subjects VALUES (1,'Learning ruby on rails','RUBY! RUBY! RUBY!',1,2,0);
INSERT INTO subjects VALUES (2,'Constitutional theory','The letters of opperssion spell today P-H-P',1,1,0);
INSERT INTO subjects VALUES (3,'Algebra 3/4','Algebra 3/4',1,3,0);
INSERT INTO subjects VALUES (4,'Breathing 101','/me chokes',1,4,1);

#
# Table structure for table 'teachers'
#

# DROP TABLE IF EXISTS teachers;
CREATE TABLE `teachers` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  `password` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

#
# Dumping data for table 'teachers'
#

INSERT INTO teachers VALUES (1,'Great teacher Largo','df4672d7fde0b4d55c74a9a3fe6983ac007b9d89');

#
# Table structure for table 'units'
#

# DROP TABLE IF EXISTS units;
CREATE TABLE `units` (
  `id` int(11) NOT NULL auto_increment,
  `subject_id` int(11) NOT NULL default '0',
  `name` varchar(50) default NULL,
  `page` text,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

#
# Dumping data for table 'units'
#

INSERT INTO units VALUES (1,4,'Inhaling','In this unit, we will learn how to *inhale*.\n\n|day|activity|homework|\n|1|Initial demostration|attempt inhaling at home|\n|2|excersize|inhale 10 times each evening|\n\nKids, do -not- try this at home!\n');
INSERT INTO units VALUES (2,4,'Exhaling','We shall exhale, \"google\":http://www.google.com .');

