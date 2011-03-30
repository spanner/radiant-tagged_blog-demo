# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: localhost (MySQL 5.1.42)
# Database: tb_development
# Generation Time: 2011-03-30 09:32:03 +0100
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table assets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assets`;

CREATE TABLE `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `asset_file_name` varchar(255) DEFAULT NULL,
  `asset_content_type` varchar(255) DEFAULT NULL,
  `asset_file_size` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `original_width` int(11) DEFAULT NULL,
  `original_height` int(11) DEFAULT NULL,
  `original_extension` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `upload_token` varchar(255) DEFAULT NULL,
  `furniture` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` (`id`,`caption`,`title`,`asset_file_name`,`asset_content_type`,`asset_file_size`,`created_by_id`,`updated_by_id`,`created_at`,`updated_at`,`original_width`,`original_height`,`original_extension`,`site_id`,`upload_token`,`furniture`)
VALUES
	(1,NULL,'real_england','real_england.jpg','image/jpeg',42900,1,NULL,'2011-03-17 12:03:55','2011-03-17 12:03:55',NULL,NULL,NULL,NULL,NULL,0),
	(2,NULL,'kidland','kidland.jpg','image/jpeg',52080,1,NULL,'2011-03-29 16:34:08','2011-03-29 16:34:08',NULL,NULL,NULL,NULL,NULL,0),
	(3,NULL,'oneno','oneno.jpg','image/jpeg',38964,1,NULL,'2011-03-29 16:44:44','2011-03-29 16:44:44',NULL,NULL,NULL,NULL,NULL,0),
	(4,NULL,'dm1_cover','dm1_cover.png','image/png',137434,1,NULL,'2011-03-30 08:11:32','2011-03-30 08:11:32',NULL,NULL,NULL,NULL,NULL,0);

/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table calendars
# ------------------------------------------------------------

DROP TABLE IF EXISTS `calendars`;

CREATE TABLE `calendars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `category` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `lock_version` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`id`,`key`,`value`)
VALUES
	(1,'admin.title','Radiant CMS'),
	(2,'admin.subtitle','Publishing for Small Teams'),
	(3,'defaults.page.parts','body, subtitle, precis, quote'),
	(4,'defaults.page.status','Published'),
	(5,'defaults.page.filter',''),
	(6,'session_timeout','1209600'),
	(7,'default_locale','en'),
	(8,'event_calendar.icals_path','icals'),
	(9,'assets.additional_thumbnails','normal=640x640>,square=#260x260,preview=#800x800>'),
	(10,'assets.display_size','original'),
	(11,'assets.content_types','image/jpeg, image/pjpeg, image/gif, image/png, image/x-png, image/jpg, video/x-m4v, video/quicktime, application/x-shockwave-flash, audio/mpeg, video/mpeg'),
	(12,'assets.max_asset_size','5'),
	(13,'assets.skip_filetype_validation','true'),
	(14,'pagination.param_name','page'),
	(15,'pagination.per_page_param_name','per_page'),
	(16,'admin.pagination.per_page','50'),
	(17,'site.title','Your site title'),
	(18,'site.host','pk.dev'),
	(19,'user.allow_password_reset?','true'),
	(20,'event_calendar.default_refresh_interval','3600'),
	(21,'site.name','paulkingsnorth.net'),
	(22,'dev.host',''),
	(23,'local.timezone',''),
	(24,'defaults.locale',''),
	(25,'defaults.page.fields',''),
	(26,'defaults.snippet.filter','');

/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table event_recurrence_rules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `event_recurrence_rules`;

CREATE TABLE `event_recurrence_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `period` varchar(255) DEFAULT NULL,
  `basis` varchar(255) DEFAULT NULL,
  `interval` int(11) DEFAULT '1',
  `limiting_date` datetime DEFAULT NULL,
  `limiting_count` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `lock_version` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_event_recurrence_rules_on_event_id` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table event_venues
# ------------------------------------------------------------

DROP TABLE IF EXISTS `event_venues`;

CREATE TABLE `event_venues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` text,
  `postcode` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `lock_version` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_event_venues_on_location` (`location`),
  KEY `index_event_venues_on_lat_and_lng` (`lat`,`lng`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table events
# ------------------------------------------------------------

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `location` varchar(255) DEFAULT NULL,
  `calendar_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `uuid` varchar(255) DEFAULT NULL,
  `all_day` tinyint(1) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `lock_version` int(11) DEFAULT '0',
  `created_by_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `event_venue_id` int(11) DEFAULT NULL,
  `master_id` int(11) DEFAULT NULL,
  `amended` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_events_on_event_venue_id` (`event_venue_id`),
  KEY `index_events_on_lat_and_lng` (`lat`,`lng`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table extension_meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `extension_meta`;

CREATE TABLE `extension_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `schema_version` int(11) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table forums
# ------------------------------------------------------------

DROP TABLE IF EXISTS `forums`;

CREATE TABLE `forums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `site_id` int(11) DEFAULT NULL,
  `topics_count` int(11) DEFAULT '0',
  `posts_count` int(11) DEFAULT '0',
  `position` int(11) DEFAULT NULL,
  `lock_version` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `reader_id` int(11) DEFAULT NULL,
  `for_comments` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_forums_on_site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table icals
# ------------------------------------------------------------

DROP TABLE IF EXISTS `icals`;

CREATE TABLE `icals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calendar_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `last_refresh_count` int(11) DEFAULT NULL,
  `last_refresh_date` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `use_https` tinyint(1) DEFAULT NULL,
  `refresh_interval` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table layouts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `layouts`;

CREATE TABLE `layouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `content_type` varchar(40) DEFAULT NULL,
  `lock_version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `layouts` WRITE;
/*!40000 ALTER TABLE `layouts` DISABLE KEYS */;
INSERT INTO `layouts` (`id`,`name`,`content`,`created_at`,`updated_at`,`created_by_id`,`updated_by_id`,`content_type`,`lock_version`)
VALUES
	(1,'Document','<r:snippet name=\"head\" />\r\n\r\n<div id=\"mastheadholder\">\r\n  <r:snippet name=\"masthead\" />\r\n  <r:snippet name=\"pagetitle\" />\r\n</div>\r\n<div id=\"pageholder\">\r\n  <r:snippet name=\"navigation\" />\r\n  <div id=\"page\">\r\n    <r:snippet name=\"standfirst\" />\r\n    <r:snippet name=\"pagetags\" />\r\n    <r:content />\r\n    <r:snippet name=\"pagefooter\" />\r\n  </div>\r\n  <r:snippet name=\"javascripts\" />\r\n</div>\r\n\r\n<r:snippet name=\"foot\" />','2008-12-24 01:08:45','2011-03-29 15:00:55',1,1,'',45),
	(2,'Home page','<r:snippet name=\"head\" />\r\n\r\n<div id=\"mastheadholder\">\r\n  <r:snippet name=\"big_masthead\" />\r\n</div>\r\n\r\n<div id=\"pageholder\">\r\n  <r:snippet name=\"navigation\" />\r\n\r\n  <div id=\"page\">\r\n    <r:snippet name=\"books\" />\r\n    <r:snippet name=\"standfirst\" />\r\n\r\n    <r:tag title=\"frontpage\">\r\n      <div class=\"leader\">\r\n        <r:tag:pages:each by=\"published_at\" order=\"desc\" limit=\"1\" offset=\"0\"><r:snippet name=\"excerpt\" /></r:tag:pages:each>\r\n      </div>\r\n      <div class=\"featured\">\r\n        <r:tag:pages:each by=\"published_at\" order=\"desc\" limit=\"3\" offset=\"1\"><r:snippet name=\"excerpt\" /></r:tag:pages:each>\r\n      </div>\r\n    </r:tag>\r\n\r\n    <r:snippet name=\"pagefooter\" />\r\n  </div>\r\n  <r:snippet name=\"javascripts\" />\r\n</div>\r\n\r\n<r:snippet name=\"foot\" />','2011-03-29 14:59:37','2011-03-30 08:24:59',1,1,'',9),
	(3,'List','<r:snippet name=\"head\" />\r\n\r\n<div id=\"mastheadholder\">\r\n  <r:snippet name=\"masthead\" />\r\n  <r:snippet name=\"pagetitle\" />\r\n</div>\r\n<div id=\"pageholder\">\r\n  <r:snippet name=\"navigation\" />\r\n  <div id=\"page\">\r\n    <r:snippet name=\"standfirst\" />\r\n\r\n    <r:children:each by=\"published_at\" order=\"desc\" paginated=\"true\" per_page=\"20\">\r\n      <r:snippet name=\"division\" />\r\n      <div class=\"listed\"><r:snippet name=\"excerpt\" /></div>\r\n    </r:children:each>\r\n\r\n    <r:snippet name=\"pagefooter\" />\r\n  </div>\r\n  <r:snippet name=\"javascripts\" />\r\n</div>\r\n\r\n<r:snippet name=\"foot\" />','2011-03-30 07:41:00','2011-03-30 08:23:52',1,1,'',9);

/*!40000 ALTER TABLE `layouts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_attachments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_attachments`;

CREATE TABLE `page_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `page_attachments` WRITE;
/*!40000 ALTER TABLE `page_attachments` DISABLE KEYS */;
INSERT INTO `page_attachments` (`id`,`asset_id`,`page_id`,`position`)
VALUES
	(1,1,22,1),
	(2,2,25,1),
	(3,3,26,1),
	(4,4,28,1);

/*!40000 ALTER TABLE `page_attachments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_fields`;

CREATE TABLE `page_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_fields_on_page_id_and_name_and_content` (`page_id`,`name`,`content`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

LOCK TABLES `page_fields` WRITE;
/*!40000 ALTER TABLE `page_fields` DISABLE KEYS */;
INSERT INTO `page_fields` (`id`,`page_id`,`name`,`content`)
VALUES
	(2,1,'Description',''),
	(1,1,'Keywords',''),
	(4,2,'Description',NULL),
	(3,2,'Keywords',''),
	(6,3,'Description',NULL),
	(5,3,'Keywords',''),
	(8,4,'Description',''),
	(7,4,'Keywords',''),
	(12,6,'Description',''),
	(11,6,'Keywords',''),
	(18,9,'Description',''),
	(17,9,'Keywords',''),
	(20,10,'Description',''),
	(19,10,'Keywords',''),
	(22,11,'Description',''),
	(21,11,'Keywords',''),
	(24,12,'Description',''),
	(23,12,'Keywords',''),
	(26,13,'Description',''),
	(25,13,'Keywords','');

/*!40000 ALTER TABLE `page_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_parts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_parts`;

CREATE TABLE `page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `filter_id` varchar(25) DEFAULT NULL,
  `content` text,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parts_by_page` (`page_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

LOCK TABLES `page_parts` WRITE;
/*!40000 ALTER TABLE `page_parts` DISABLE KEYS */;
INSERT INTO `page_parts` (`id`,`name`,`filter_id`,`content`,`page_id`)
VALUES
	(2,'body','Textile','The file you were looking for could not be found.\n\nAttempted URL: @<r:attempted_url />@\n\nIt is possible that you typed the URL incorrectly or that you clicked on a bad link.\n\n\"<< Back to Home Page\":/\n',2),
	(3,'body','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<rss version=\"2.0\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\">\n  <channel>\n    <title>Article RSS Feed</title>\n    <link>http://your-web-site.com<r:url /></link>\n    <language>en-us</language>\n    <ttl>40</ttl>\n    <description>The main blog feed for my Web site.</description>\n    <r:find url=\"/news/\">\n    <r:children:each limit=\"10\" order=\"desc\">\n        <item>\n          <title><r:title /></title>\n          <description><r:escape_html><r:content /></r:escape_html></description>\n          <pubDate><r:rfc1123_date /></pubDate>\n          <guid>http://your-web-site.com<r:url /></guid>\n          <link>http://your-web-site.com<r:url /></link>\n        </item>\n    </r:children:each>\n    </r:find>\n  </channel>\n</rss>\n',3),
	(4,'body','Textile','',4),
	(6,'body','Textile','In all this, of course, I am very English. Ronald Blythe pinned down the vague feeling that so many of us townies have in his classic work of rural reportage Akenfield back in the late sixties. \'The townsman envies the villager his certainties\', he wrote, \'and, in Britain, has always regarded urban life as just a temporary necessity. One day he will find a cottage on the green and \"real values.\"\' Britain, and specifically England â€“ the most urbanised country in Europe by some way â€“ still believes it has a pastoral heart. The wealthy middle classes have been buying up its rose-covered cottages for decades in an attempt to prove this, which has had the result of disproving it as real rural communities have been replaced by commuter villages and dead islands of second homes.\r\n\r\nNot that this has anything to do with me. My escape to the country is very different, or so I tell myself; inspired more by John Seymour than Country Life. I used to think this was quite pioneering of me, but it turns out that I am simply a minor player in a new wave of back-to-the-land-ists, the like of which hasn\'t been seen since the seventies. Now, as then, thousands of people all over the country are planning their escape to somewhere half-broken down in the sticks, with a private water supply and a few acres. Now, as then, the inspiration is a mix of metropolitan ennui, desire to re-connect with the land, and fear of what the future is likely to bring. Not for us the Aga dreams of the Daily Telegraph set. We are facing the future with set faces and self-built chicken runs. We are going to grow our own mushrooms. We read the Oil Drum. We are preparing for civilisation to crash headlong into the buffers, and when it does we\'re going to tell everyone that they should have listened to us.\r\n\r\nIn all this, we are just as predictably bourgeois as any shire Tory, and very urban with it. What I have discovered since moving here is that moving to the country does not make you a country person. It makes you an urban person surrounded by fields. Of course I knew this anyway, but it\'s one thing to know something intellectually and another to know it because you live it. Take the farm I live on. It\'s a beef and sheep operation, very well run by a cheery farmer with a lifetimes\' experience. He works twelve hour days, every day, mostly on his own, with occasional help from family and the odd contractor.\r\n\r\nIt\'s a job I doubt I could ever do; I lack both the expertise and the stamina. I also lack the machines. Seeing daily how machine-dependent modern farming is has been fascinating. Here, the farm operates two tractors with a bewildering array of attachments, two quad bikes, a car, a digger and a pickup. It\'s a stark illustration of how oil power has replaced muscle power in the rural landscape. One reading of it makes people like me, with our scythes and our self-sufficiency books, look nostalgic and silly. Another makes us look like an advance guard who are at least thinking about what to do once red diesel costs more than red wine.\r\n\r\nLast year, in a second-hand bookshop, I came across a deliciously-titled book which I immediately bought. It was called The untutored townsman\'s invasion of the country, and it was written in 1945 by someone called G. E. M. Joad. Joad was of both country and city stock, and was a leading light in the early Youth Hostel and Ramblers Associations. He was horrified by what over-development and commerce were doing to the countryside, and one of his solutions was to \'tutor\' urban people in rural ways, mainly by getting them out walking in the hills. 65 years on, it\'s fascinating to read Joad\'s postwar take on the urban-rural rift:  \r\n\r\nbq. \'Most Englishmen have looked with indifference upon the decline of the countryside. As the interests of town and country came increasingly to diverge, some even regarded it with satisfaction. The interest of the towns was in cheap food which mainly came from abroad in the shape of imported corn, foreign meat and canned goods ... The townsman was certainly not going to give more for his food merely because it happened to have been produced in England, nor would he willingly pay higher taxes in order to maintain in solvency such an uneconomic luxury as British farming, merely because it happened to be on his own doorstep.\'  \r\n\r\nJoad\'s book is now a period piece. His chapter on \'The Country\'s Enemies\' includes \'camps and aerodromes\', this being just after the Second World War. \'The sprawl\', another threat, is still relevant, though now it is perhaps manifested more in giant retail parks than lines of Betjeman-esqe suburban bungalows. The car â€“ what he calls \'the second industrial revolution [which] caused our towns to burst like bombs and scatter their debris far and wide over the surrounding countryside\' â€“ has had the biggest impact on the integrity of the rural, as he predicted it would. One wonders what Joad would have made of the current threats to the land, imposed, like those before, to keep the inhabitants of cities in the style to which they have become accustomed. Superstores; second homes; motorways; and the new rash of \'green\' energy projects, from turbine ranges to fields of solar arrays, owned by big energy companies and pushed by cosmopolitan environmentalists who attack local landscape defenders as \'nimbys\' from the safety of their London offices.  \r\n\r\nBut though Joad\'s book is history, as is much of the countryside he wrote of, it is far from irrelevant. He had picked out a moment in time, and put it down on paper. Many other writers before and since have done so, from Cobbett to Orwell via Daniel Defoe, Robert Blythe and J B Priestley. A couple of years ago I added my own modest effort, Real England, to the genre. That genre â€“ I didn\'t know this when I wrote my book â€“ turns out to be an unofficial, unintended but poignant collective history of the impacts of advancing industrial capitalism on the British countryside. The process of enclosure, consolidation and profiteering was already well-advanced in Cobbett\'s day, and today we see the same process â€“ what Cobbett called \'the Thing\' â€“ still at work two centuries down the line. It has given us a countryside which is a combination of theme park and industrial park; a haven of wealth and isolation, its prettiest bits pickled for tourists and second homers, the rest layered with \'development\' to keep the wheels of the urban machine turning.\r\n\r\nPeople like me, with our mattocks and our books, are not going to reverse this historical process. What will? Joad reports a conversation he has with a taxi driver, a former Norfolk smallholder who had sold up and moved on:\r\n\r\n\'In the end,\' said my driver, \'the whole place was swarming with townees. There was no peace and I had to leave.\'  \r\n\'It will be worse after the war,\' said I.   \r\n\'It will indeed,\' he agreed. \'If I were a younger man I would leave the country.\'   \r\n\'What would you do if you had your way,\' I asked, \'to stop this sort of thing and keep the country as it was?\'   \r\n\'I\'d sterilize them,\' he said.   \r\n\'Sterilize who?\'   \r\n\'Why a lot of these people from the towns. Stop them breeding. There are altogether too many of them.\'  \r\n\r\nIf nothing else, it seems our taxi drivers remain stoutly unspoilt by progress. Joad agrees that not much will get better till the country\'s population gets \'very much smaller\', though he rejects the driver\'s brutal proposition. When Joad was writing, the population of the UK was 47 million; now it\'s 60 million, and forecast to rise to over 70 million within a few decades. We long ago outstripped the country\'s ability to support us with its own natural resources.\r\n\r\nThese days, people like me hope that peak oil and climate change will knock the machine off course, and force us to change direction: force us to relocalise for economic rather than sentimental reasons. Some of this is happening already: witness the rise of farmers markets, the official encouragement of low-impact development in parts of Wales, the government reports recognising the important of food security.  \r\n\r\nHopes of any planned, large-scale repulse of the Thing are probably false, however . Based on our past performance, we are more likely to push ahead with layering every inch of land with solar panels, giant wind turbines, high-speed rail networks and electric car charging stations in a desperate attempt to avoid having to change our lifestyles, selling this to our overwhelmingly urban population as \'environmentalism\': the latest manifestation of the untutored townsman\'s imperial project.  \r\n\r\nIn the meantime, this untutored townsman is going to continue with his attempt to find himself a few acres he can actually afford, and set to work with some pigs, a vegetable patch, fruit trees and a scythe. If nothing else, it will give the real farmers something to laugh about as they roll by on their tractors, which in itself is a service provided by the urban to the rural. It\'s good to give something back.',6),
	(10,'body','Textile','\"I gutted the fish,\" he says. \"How\'s the fire going?\r\n\r\nFergus Drennan is one of England\'s few professional foragers. He makes a living by seeking out and selling wild food. Our evening at Reculver brings to a close a day spent together in the Kent countryside. Now, below the red cliffs and under the red sun, we\'re ending the day with the fruits of our labour: baked sea bass, dulse soup and fried sea beet, offset by strong sloe gin.\r\n\r\n\"The thing is,\" says Fergus, as he unwraps one of the bass from its tinfoil, \"we\'re so cut off from the land now. It\'s about culture, as much as anything. Remember those St George\'s mushrooms we picked earlier? They got the name because they start to appear around St George\'s Day - the 23rd of April. You hear people moaning about how the traditions of this country are disappearing, we\'re not in touch with our heritage and nobody celebrates St George\'s Day any more.\r\n\r\n\"But most of these old traditions, when they were living, came from the land and people\'s attachment to it. These days we don\'t know where we are, or what happens in our landscape, so we can\'t create new ones. Traditions come from places - from the land, from our relationship to it. Once that\'s gone, so has that living culture.\"\r\n\r\nWhat Fergus picked up on that evening on the Kentish beach was something too few of us today give any thought to, but that is a vital component of our identity as individuals, as communities and as a nation. As St George\'s Day approaches and brings with it the traditional round of English agonising about who we are and where we are going, it is worth remembering that what really makes England - what creates and maintains our national identity - is our living landscape. It is the places we have made our own over the centuries: the combination of patterns of land use, vernacular architecture, community spaces, local culture and place-specific traditions, which, added together, form the patchwork we call our national character. Who we are, in other words, comes from where we are.\r\n\r\nBut if this is true, the English may be in trouble. For the things that make our landscapes different, distinctive and special are being eroded and replaced by things that would be familiar anywhere. It is happening all over the country: the same chains in every high street; the same bricks in every new housing estate; the same signs on every road; the same menu in every pub.\r\n\r\nThe small, the ancient, the unprofitable, the meaningful, the characterful and the quirky are being razed to make way for the clean, the sophisticated, the progressive and the corporate. In the name of economic efficiency, investment, growth, development, or simply money, the complex web of intimate relationships between people and communities and the landscape they inhabit is being dismantled, with nobody\'s permission.\r\n\r\nThe English landscape, in common with the landscapes of other nations across the world, is being rapidly and thoughtlessly remoulded to meet the short-term needs of a global economy that is built on sand. The result is stark, sad and bitter: everywhere is becoming the same as everywhere else. As a result, England is losing its identity.\r\n\r\nTake, for example, the English pub - perhaps the best marker of our national character. English ale (from the Saxon ealu) and the English inn are not precisely replicated anywhere on Earth. Yet we are losing 56 pubs every month, four every day. Six urban locals shut up shop every week and half of England\'s villages are now \"dry\" - publess - for possibly the first time since the Norman Conquest. Along with them have gone the historic regional breweries, of which only 38 remain. A century ago, the nation was home to 6,000 breweries; now there are 600.\r\n\r\nOr take the independent shops that made us, so famously, a \"nation of shopkeepers\". The last decade alone has seen the end of nearly 30,000 independent food, beverage and tobacco retailers. Fifty specialist shops closed every week between 1997 and 2002, while the last quarter of the 20th century saw the number of out-of-town shopping centres quadruple. The \"clone town\" phenomenon, by which every high street comes to resemble every other, regardless of region or history, has become a national talking point.\r\n\r\nOr how about the English countryside, which in so many of our imaginations is still at the heart of England - the landscapes of Constable, Wordsworth, Turner and Betjeman? Small and family farms are going out of business at a rate of knots, taking centuries of history and meaning with them. We have lost, for example, 40 per cent of our dairy farms in less than a decade. The amount of land taken up by traditional apple orchards - the home of our national fruit, of which we grow more varieties than any other nation - has halved in just a decade, too. Devon and Wiltshire have lost 90 per cent of their orchards; Somerset has lost 60 per cent in just two decades.\r\n\r\nVillages are haemorrhaging shops, post offices and village halls, turning what were once communities into dormitories. In some villages in the tourist \"honeypots\", up to 80 per cent of homes are owned by absentee landlords or set aside for holiday lets. House prices in some rural areas have increased by almost 400 per cent in a decade, pricing local people out and destroying centuries of rural tradition in the process.\r\n\r\nWhy is this happening, and why do we allow it? Responsibility can be pinned on three forces, which are meshing together to form a uniquely destructive whole: a powerful alliance of big business and big government; an unspoken, 21st-century class conflict, in which every nook and cranny is being made safe for the wealthy urban bourgeoisie; and a very English reluctance to discuss who and what we are as a nation or to stand up for our places, our national character and our cultural landscape.\r\n\r\nThe first of these three forces is probably the most conspicuous. In the high streets, saloon bars and market-places of England, the omnipresence of the chain store and supermarket is striking. Giant multinational companies dominate almost every area of national life, from finance to farming. They do so with the full and enthusiastic encouragement of the State, whichever political party happens to be managing it. Meanwhile, the same State busies itself enacting or enforcing laws, from health and safety legislation to EU hygiene directives, which crush the life out of the small, the independent and the local.\r\n\r\nSecond, there is the rise of the class missionaries who are aggressively paving the way for a new England: a smoke-free, health-conscious, well-dressed designer nation whose values are those of its new ruling class, the city bourgeoisie. The country is being remodelled and made safe for urban 4x4 drivers, gastropub diners, the owners of investment properties and the wearers of clean wellies and fashionable scents. As they come, they scatter before them those whose values are different; perhaps older, certainly less profitable, less controllable, less tamed.\r\n\r\nThese first two forces have taken hold so successfully because of a third element: a problem that the English people themselves have long had. Put simply, we are terrible at talking about who we are. As a nation, we are almost comically reluctant to discuss our identity, our culture or our sense of nationhood. It is nearly 70 years since George Orwell wrote: \"England is perhaps the only great country whose intellectuals are ashamed of their own nationality.\" England may no longer be a \"great country\", but the rest of his comment still stands. This strange cultural self-loathing has left us open to the whims of those who would turn our landscape into a theme park in which the theme, overwhelmingly, is profit.\r\n\r\nAll of this is the result of putting a commitment to a narrowly-defined \"economic competitive-ness\" above the things that actually make everyday life worth living. As a nation, the English have been slow to recognise what makes their country unique and protect it from the worst depredations of progress. We are sleepwalking towards a future in which the country becomes a giant reproduction of Kent\'s Bluewater shopping centre - the largest in Europe, a paradise of consumerism, CCTV, security guards and fake landscapes, where price trumps value and everything is for sale.\r\n\r\nAnd yet something is stirring. All over England, people are starting to join the dots and recognise that what they previously saw as small, local, isolated changes are part of a bigger picture of a waning national identity. And all over England the bleaching out of character, community, place and meaning in the name of growth, investment and global competitiveness is causing ripples, resentment and resistance.\r\n\r\nIt can be seen in communities up and down the country, from Crouch End to Blackpool, Northallerton to Cirencester, who are taking to the streets in unprecedented numbers to oppose the closure of their local post offices. It can be seen in rural communities fighting to protect their village shops or getting together to set up their own, community-owned alternatives, as villagers have done successfully from Sulgrave in Northamptonshire to Blisland in Cornwall. It can be found in landlords in Brixton fighting the power of pub companies and small farmers in Cornwall resisting the bullying of the superstores.\r\n\r\nIt can be found in east London, where urban communities are trying to save the historic Queen\'s Market from destruction, and in Sheringham in Norfolk, where shopkeepers and locals are banding together to fend off an enormous Tesco. It can be found on the waterways of Oxford, where boat-dwellers are battling to save the city\'s last public boatyard from more executive flats.\r\n\r\nIt can be found, in fact, almost everywhere you care to look. So much so that it may be that a movement is afoot: a movement of people all over England who are beginning to get together and wage a battle for the soul of their nation. A battle led by those who see us not as \"UK PLC\", but as a nation with a unique history and a fragile future.\r\n\r\nThere are, it seems to me, two possible futures for England. The first: business as usual. We sit back, complicit, while our historical landscapes, meaningful places and local communities are cast aside in the name of increasing our GDP. We lose the cosy local pub, the ancient hill farm, the village shop, the independent high street and the rare apple varieties in the old orchard on the hill, and with them we lose a sense of who we are and where we came from.\r\n\r\nThe other future is one in which we stand and fight for these things, because we know why they matter. We stand up for our localities and communities, we value our history and the glorious eccentricity of our landscape, and we refuse to allow it to be replaced by more strip malls, car parks and executive waterfront apartments. In doing so, we rediscover what perhaps for a while we forgot - what it really means to be English. ',9),
	(13,'body','','<r:archive:children:each order=\"desc\">\n<div class=\"entry\">\n<h3><r:link /></h3>\n    <div class=\"posted\">\n      Posted by <r:author /> on <r:date format=\"%B %d, %Y\" /><em>|</em><img src=\"http://spurrd.com/assets/123/comment.png\" /><a href=\"<r:url />#disqus_thread\">Comments</a><em>|</em><r:link>Read full article</r:link>    \n    </div>\n  <r:content part=\"summary\" />\n</div>\n</r:archive:children:each>\n\n<r:snippet name=\"comments_summary\" />',10),
	(15,'summary','Textile','Last autumn, I moved from the city to the country. After fifteen years in Oxford, and with a young daughter now in tow, my wife and I shifted ourselves to a rented former barn on a hill farm in south Cumbria. It had been long in the planning, and itâ€™s intended to be the first stage in a process which will lead us to finding our own land, on which we can build up some useful skills, provide for ourselves, spend less time staring at screens and breathe some air that doesnâ€™t taste of diesel.',6),
	(27,'body','',NULL,15),
	(28,'body','Sass','@import compass/css3\r\n\r\n$rubinered: #d1005d\r\n$coolgrey0: #f2f0ed\r\n$coolgrey1: #e2e1dd\r\n$coolgrey2: #d6d6d4\r\n$coolgrey3: #cacac8\r\n$coolgrey4: #bdbdbd\r\n$coolgrey5: #b3b3b3\r\n$coolgrey6: #afafaf\r\n$coolgrey7: #9a9b9d\r\n$coolgrey8: #8c8d8e\r\n$coolgrey9: #747679\r\n$coolgrey10: #616265\r\n$coolgrey11: #4d4e53\r\n\r\n$olive: #607264\r\n$dark: $coolgrey11\r\n$mid: $coolgrey8\r\n$pale: $coolgrey6\r\n$paler: $coolgrey4\r\n$verypale: $coolgrey2\r\n$faint: $coolgrey0\r\n\r\n$page: white\r\n$text: black\r\n$link: $olive\r\n$hover: $rubinered\r\n$warning: $rubinered\r\n\r\n=blurred($color: $verypale)\r\n  text-shadow: #{$color} 0 0 2px\r\n=shadowed($color: #000000)\r\n  text-shadow: #{$color} 0 2px 5px\r\n=glow($color: white)\r\n  text-shadow: #{$color} 0 0 6px\r\n=bordered($width: 8px)\r\n  +box-shadow\r\n  border: #{$width} solid white\r\n\r\n@font-face\r\n  font-family: \'Prociono\'\r\n  src: url(\'/fonts/prociono.eot\')\r\n  src: url(\'/fonts/prociono.eot?iefix\') format(\'eot\'), url(\'/fonts/prociono.woff\') format(\'woff\'), url(\'/fonts/prociono.ttf\') format(\'truetype\'), url(\'/fonts/prociono.svg#webfontQ0TnnWLe\') format(\'svg\')\r\n  font-weight: normal\r\n  font-style: normal\r\n\r\n@font-face\r\n  font-family: \'Linden\'\r\n  src: url(\'/fonts/lindenhill-italic.eot\')\r\n  src: url(\'/fonts/lindenhill-italic.eot?iefix\') format(\'eot\'), url(\'/fonts/lindenhill-italic.woff\') format(\'woff\'), url(\'/fonts/lindenhill-italic.ttf\') format(\'truetype\'), url(\'/fonts/lindenhill-italic.svg#webfontQ0TnnWLe\') format(\'svg\')\r\n  font-weight: normal\r\n  font-style: normal\r\n\r\n@font-face\r\n  font-family: \'Ornaments\'\r\n  src: url(\'/fonts/hoefler_text_ornaments.eot\')\r\n  src: url(\'/fonts/hoefler_text_ornaments.eot?iefix\') format(\'eot\'),url(\'/fonts/hoefler_text_ornaments.woff\') format(\'woff\'),url(\'/fonts/hoefler_text_ornaments.ttf\') format(\'truetype\'),url(\'/fonts/hoefler_text_ornaments.svg#webfont8cKuvnTh\') format(\'svg\')\r\n  font-weight: normal\r\n  font-style: normal\r\n\r\n=header\r\n  font-family: \"Prociono\"\r\n  font-weight: normal\r\n  line-height: 1\r\n=text\r\n  font-family: \"Prociono\"\r\n  font-weight: normal\r\n  line-height: 1.5\r\n=italic\r\n  font-family: \"Linden\"\r\n  font-style: normal\r\n=ornament\r\n  font-family: \"Ornaments\"\r\n  color: $olive\r\n  font-size: 80%\r\n=small\r\n  font-size: 80%\r\n=sans\r\n  font-family: helvetica, arial, sans-serif\r\n  font-size: 80%\r\n  \r\n////////// default formatting\r\n\r\nbody\r\n  margin: 0\r\n  padding: 0\r\n  +text\r\na, a:link\r\n  text-decoration: none\r\n  color: $link\r\na:hover\r\n  color: $hover\r\nimg\r\n  border: 0\r\n  margin: 0\r\n  padding: 0\r\nul,ol\r\n  color: $dark\r\nul\r\n  margin-top: 0\r\n  padding-left: 32px\r\n  list-style: square\r\n  &.minimal\r\n    list-style: none\r\nol\r\n  padding-left: 16px\r\nblockquote\r\n  margin-left: 12px\r\n  color: $mid\r\nh1, h2, h3, h4\r\n  +header\r\n  line-height: 1\r\n  margin: 0.5em 0 0.25em 0\r\nlabel\r\n  +header\r\n    \r\n///////////////////////////// layout\r\n\r\n$pagewidth: 960px\r\n$navwidth: 70px\r\n$floatwidth: 200px\r\n$inset_right: 120px\r\n$gutter: 40px\r\n$inset_left: $navwidth + $gutter\r\n\r\n=normal_block\r\n  position: relative\r\n  overflow: hidden\r\n=absolute_block\r\n  position: absolute\r\n=fixed_block\r\n  position: fixed\r\n  overflow: hidden\r\n=floated_block\r\n  position: relative\r\n  float: right\r\n  width: $floatwidth\r\n  margin-right: -$inset_right\r\n  margin-left: $gutter + 20px\r\n  margin-bottom: $gutter\r\n=inset\r\n  padding-left: $inset_left\r\n  padding-right: $inset_right\r\n\r\np.subtitle\r\n  +italic\r\n  color: $mid\r\n  line-height: 1.2\r\n\r\n#mastheadholder\r\n  +normal_block\r\n  width: $pagewidth\r\n  margin: 0 auto\r\n  #masthead\r\n    +normal_block\r\n    +inset\r\n    z-index: 1100\r\n    top: 0\r\n    left: 0\r\n    font-size: 140%\r\n    h1.pagetitle\r\n      font-size: 3em\r\n      z-index: 15\r\n      margin-bottom: 0\r\n      span.ornament\r\n        font-size: 50%\r\n    p.subtitle\r\n      font-size: 1.7em\r\n      margin: 0\r\n      margin-top: -0.2em\r\n    p\r\n      margin: 0.5em 0 0.25em 0\r\n  #title\r\n    +normal_block\r\n    +inset\r\n    h1.pagetitle\r\n      width: 85%\r\n      font-size: 3.5em\r\n      z-index: 15\r\n      margin-bottom: 5px\r\n    p.subtitle\r\n      font-size: 1.6em\r\n      margin: 0\r\n\r\n#pageholder\r\n  +normal_block\r\n  width: $pagewidth\r\n  margin: 0 auto\r\n  #navigation\r\n    +absolute_block\r\n    top: 0\r\n    left: 0\r\n    padding-top: 1em\r\n    width: $navwidth\r\n    z-index: 1000\r\n    &.fixed\r\n      position: fixed\r\n  #page\r\n    +normal_block\r\n    +inset\r\n    z-index: 100\r\n    .standfirst\r\n      font-size: 1.4em\r\n    #books\r\n      +floated_block\r\n      line-height: 1.2\r\n      margin-top: 0\r\n      margin-bottom: 0\r\n      .pointer\r\n        margin: 1em 0\r\n    #tagging\r\n      +floated_block\r\n      line-height: 1.2\r\n      margin-top: 1em\r\n      ul\r\n        display: inline\r\n        padding: 0\r\n        margin: 0 0 2em 0\r\n        li\r\n          +italic\r\n          display: inline\r\n    #standfirst\r\n      font-size: 130%\r\n      line-height: 1.4\r\n      margin-top: 0.6em\r\n    .pointer\r\n      +normal_block\r\n      margin: 2em 0\r\n      h3\r\n        img\r\n          +box-shadow\r\n          float: left\r\n          margin: 0 12px 6px 0\r\n      p\r\n        margin: 0\r\n        +small\r\n      \r\n  #footer\r\n    +normal_block\r\n    clear: both\r\n    margin-top: 100px\r\n    h2\r\n      a\r\n        color: $mid\r\n        &:hover\r\n          color: $hover\r\n          span.ornament\r\n            color: $hover\r\n    ul\r\n      float: left\r\n      list-style: none\r\n      padding: 0\r\n      margin: 0 20px\r\n      &:first-child\r\n        margin-left: 0\r\n      &:last-child\r\n        margin-right: 0\r\n      color: $pale\r\n      li\r\n        margin: 0\r\n        +italic\r\n        &.section\r\n          +text\r\n          font-size: 110%\r\n        a\r\n          color: $mid\r\n          &:hover\r\n            color: $hover\r\n        \r\n#colophon\r\n  +normal_block\r\n  +sans\r\n  +small\r\n  clear: left\r\n  margin-top: 50px\r\n  color: $paler\r\n  a\r\n    color: $mid\r\n    &:hover\r\n      color: $hover\r\n  \r\n///////////////////////////// appearance\r\n\r\n#mastheadholder\r\n  #masthead\r\n    background-color: $page\r\n#pageholder\r\n  #navigation\r\n    ul\r\n      list-style: none\r\n      padding: 0\r\n      line-height: 1.3\r\n      li\r\n        +italic\r\n        a\r\n          color: $paler\r\n          white-space: nowrap\r\n          &:hover\r\n            color: $hover\r\n            span.ornament\r\n              color: $hover\r\n          &.selected\r\n            color: $mid\r\n            span.ornament\r\n              color: $mid\r\n            &:hover\r\n              color: $hover\r\n              span.ornament\r\n                color: $hover  \r\n  \r\n.tight\r\n  margin: 0\r\n.hidden, .innocuous\r\n  display: none\r\n.pale\r\n  color: $pale\r\n.small, .quiet, .footnote\r\n  +small\r\n  color: $pale\r\n.ornament\r\n  +ornament\r\n.divider\r\n  +ornament\r\n  text-align: center\r\n  width: 66%\r\n  font-size: 200%\r\n  \r\na\r\n  .ornament\r\n    color: $mid\r\n  &:hover\r\n    .ornament\r\n      color: $hover\r\n\r\ndiv.article\r\n  h2\r\n    font-size: 2em\r\n    margin-top: 0\r\n    width: 85%\r\n  p.subtitle\r\n    font-size: 1.25em\r\n    margin-top: -0.25em\r\n    margin-bottom: 0.25em\r\n\r\n.leader\r\n  +normal_block\r\n  margin-top: 1em\r\n\r\n.listed\r\n  +normal_block\r\n  margin-top: 1em\r\n    \r\n.featured\r\n  +normal_block\r\n  margin-top: 2em\r\n  margin-bottom: 3em\r\n  div.article\r\n    width: 30%\r\n    float: left\r\n    margin-right: 1em\r\n    &:last-child\r\n      margin-right: 0\r\n    h2\r\n      margin-top: 0\r\n      font-size: 1.2em\r\n      width: 100%\r\n    p\r\n      font-size: 0.8em\r\n    p.subtitle\r\n      font-size: 1em\r\n      margin-top: -0.1em\r\n      margin-bottom: 0.1em\r\n    \r\n',16),
	(29,'body','Sass','',17),
	(30,'body','Sass','',18),
	(31,'body','',NULL,19),
	(32,'body','','/*\r\n  Page interaction for bcrunners.org.uk\r\n  by William Ross for spanner\r\n  3 August 2010\r\n  will@spanner.org\r\n  \r\n  The underlying framework here is jQuery, with the addition of the jQueryTools package to provide \r\n  interface primitives upon which we elaborate.\r\n  to minify: java -jar ~/jars/yuicompressor-2.4.2/build/yuicompressor-2.4.2.jar -o tlms.min.js tlms.js\r\n\r\n * Cookie jquery plugin\r\n *\r\n * Copyright (c) 2006 Klaus Hartl (stilbuero.de)\r\n * Dual licensed under the MIT and GPL licenses:\r\n * http://www.opensource.org/licenses/mit-license.php\r\n * http://www.gnu.org/licenses/gpl.html\r\n */\r\n\r\njQuery.cookie = function(name, value, options) {\r\n    if (typeof value != \'undefined\') { // name and value given, set cookie\r\n        options = options || {};\r\n        if (value === null) {\r\n            value = \'\';\r\n            options.expires = -1;\r\n        }\r\n        var expires = \'\';\r\n        if (options.expires && (typeof options.expires == \'number\' || options.expires.toUTCString)) {\r\n            var date;\r\n            if (typeof options.expires == \'number\') {\r\n                date = new Date();\r\n                date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));\r\n            } else {\r\n                date = options.expires;\r\n            }\r\n            expires = \'; expires=\' + date.toUTCString(); // use expires attribute, max-age is not supported by IE\r\n        }\r\n        // CAUTION: Needed to parenthesize options.path and options.domain\r\n        // in the following expressions, otherwise they evaluate to undefined\r\n        // in the packed version for some reason...\r\n        var path = options.path ? \'; path=\' + (options.path) : \'\';\r\n        var domain = options.domain ? \'; domain=\' + (options.domain) : \'\';\r\n        var secure = options.secure ? \'; secure\' : \'\';\r\n        document.cookie = [name, \'=\', encodeURIComponent(value), expires, path, domain, secure].join(\'\');\r\n    } else { // only name given, get cookie\r\n        var cookieValue = null;\r\n        if (document.cookie && document.cookie != \'\') {\r\n            var cookies = document.cookie.split(\';\');\r\n            for (var i = 0; i < cookies.length; i++) {\r\n                var cookie = jQuery.trim(cookies[i]);\r\n                // Does this cookie string begin with the name we want?\r\n                if (cookie.substring(0, name.length + 1) == (name + \'=\')) {\r\n                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));\r\n                    break;\r\n                }\r\n            }\r\n        }\r\n        return cookieValue;\r\n    }\r\n};\r\n\r\n(function($) { \r\n\r\n  /* \r\n   * These two easing functions are borrowed from the effects library to save loading the whole lot.\r\n   * Glide is just quartic out. Boing is back out.\r\n   */\r\n\r\n  $.easing.glide = function (x, t, b, c, d) {\r\n  	return -c * ((t=t/d-1)*t*t*t - 1) + b;\r\n  }\r\n  \r\n  $.easing.boing = function (x, t, b, c, d, s) {\r\n  	if (s == undefined) s = 1.70158;\r\n		return c*((t=t/d-1)*t*((s+1)*t + s) + 1) + b;\r\n	};\r\n\r\n  $.easing.bounce = function (x, t, b, c, d) {\r\n		if ((t/=d) < (1/2.75)) {\r\n			return c*(7.5625*t*t) + b;\r\n		} else if (t < (2/2.75)) {\r\n			return c*(7.5625*(t-=(1.5/2.75))*t + .75) + b;\r\n		} else if (t < (2.5/2.75)) {\r\n			return c*(7.5625*(t-=(2.25/2.75))*t + .9375) + b;\r\n		} else {\r\n			return c*(7.5625*(t-=(2.625/2.75))*t + .984375) + b;\r\n		}\r\n	};\r\n\r\n	// static constructs\r\n	$.tools = $.tools || {version: \'1.2.3\'};\r\n	\r\n	// detect ektron edit mode\r\n	$.editing = $(\"#widgetlist\").length > 0; \r\n		\r\n	// slightly less verbose global find\r\n	function find(root, query) { \r\n		var el = $(query);\r\n		return el.length < 2 ? el : root.parent().find(query);\r\n	}\r\n	\r\n	// general-purpose event blocker\r\n	function squash(e) {\r\n    if(e) {\r\n      e.preventDefault();\r\n      e.stopPropagation();\r\n      if (e.target) e.target.blur();\r\n    } \r\n  }\r\n	\r\n	// version number\r\n	var t = $.tools.overlay,\r\n		 w = $(window); \r\n		\r\n	// extend global configuragion with effect specific defaults\r\n	$.extend(t.conf, { \r\n		start: { \r\n			top: null,\r\n			left: null\r\n		},\r\n		\r\n		fadeInSpeed: \'fast\',\r\n		zIndex: 9999\r\n	});\r\n	\r\n	// utility function\r\n	function getPosition(el) {\r\n		var p = el.offset();\r\n		return {\r\n			top: p.top + el.height() / 2, \r\n			left: p.left + el.width() / 2\r\n		}; \r\n	}\r\n	\r\n	/*\r\n   * here\'s a slightly modified version of the Apple overlay effect: \r\n   * it uses the actual image as a scaling sprite,\r\n   * scales both to height and width and then hides the sprite.\r\n   */\r\n  \r\n	var loadEffect = function(pos, onLoad) {\r\n		\r\n		var overlay = this.getOverlay(),\r\n		    conf = this.getConf(),\r\n		    trigger = this.getTrigger(),\r\n		    self = this,\r\n			  img = overlay.data(\"img\"),\r\n			  dimensions = overlay.data(\"dimensions\");\r\n				\r\n		// initialize scaling sprite and hide in readiness\r\n		if (!img) {\r\n		  img = overlay.find(\'img\').clone();\r\n			$(\'body\').append(img); \r\n			img.addClass(\"grower\");\r\n			dimensions = {\r\n			  w: img.width(),\r\n			  h: img.height()\r\n			};\r\n			img.hide();\r\n			overlay.data(\"img\", img);\r\n			overlay.data(\"dimensions\", dimensions);\r\n		}\r\n		\r\n		// initial top & left\r\n		var itop = conf.start.top || Math.round(w.height() / 2), \r\n			 ileft = conf.start.left || Math.round(w.width() / 2);\r\n		\r\n		if (trigger) {\r\n			var p = getPosition(trigger);\r\n			itop = p.top;\r\n			ileft = p.left;\r\n		} \r\n		\r\n		// place scaling sprite and make it visible\r\n		img.css({\r\n			position: \'absolute\',\r\n			top: itop, \r\n			left: ileft,\r\n			width: 0,\r\n			height: 0,\r\n			opacity: 0,\r\n			zIndex: conf.zIndex\r\n		}).show();\r\n		\r\n		// negate scroll\r\n		pos.top += w.scrollTop();\r\n		pos.left += w.scrollLeft();		\r\n		pos.position = \'absolute\';\r\n		overlay.css(pos);\r\n		\r\n		var openState = {\r\n			top: overlay.css(\"top\"), \r\n			left: overlay.css(\"left\"), \r\n			width: dimensions[\'w\'],\r\n			height: dimensions[\'h\'],\r\n			opacity: 1\r\n		};\r\n				\r\n		// scale sprite to match dimensions of overlay image\r\n		img.animate(openState, conf.speed, function() { \r\n			  // set close button and content over the image\r\n			  overlay.css(\"zIndex\", conf.zIndex + 1).fadeIn(conf.fadeInSpeed, function()  { \r\n				if (self.isOpened() && !$(this).index(overlay)) {	\r\n					onLoad.call(); \r\n				} else {\r\n					overlay.hide();	\r\n				} \r\n				img.hide();\r\n			});\r\n		});\r\n	};	\r\n	\r\n	var closeEffect = function(onClose) {\r\n\r\n		var overlay = this.getOverlay(), \r\n			 conf = this.getConf(),\r\n			 trigger = this.getTrigger(),\r\n			 img = overlay.data(\"img\"),\r\n			 css = { \r\n			 	top: conf.start.top, \r\n			 	left: conf.start.left, \r\n			 	width: 0,\r\n			 	height: 0,\r\n			 	opacity: 0\r\n			 };\r\n		\r\n		// trigger position\r\n		if (trigger) { $.extend(css, getPosition(trigger)); }\r\n				 \r\n		// shrink image\r\n		overlay.hide();	\r\n		img.show();\r\n		img.animate(css, conf.closeSpeed, onClose);	\r\n	};\r\n	\r\n	\r\n	// add overlay effect	\r\n	t.addEffect(\"apple2\", loadEffect, closeEffect); \r\n	\r\n	\r\n  /*\r\n   * Looper\r\n   * is a modified version of the jQuery Tools 1.2.3 Scrollable \r\n   * tweaked and simplified to add an offset, improve its\r\n   * support for circular scrolling and eventually to add ipad support\r\n   * we still use data(\'scrollable\') so that scrollable plugins can be used without modification.\r\n   *\r\n   * Circularity is achieved by cloning the first few blocks at the end of the row, and the last few at the start.\r\n   * We never actually scroll more than one block into the cloned set: because they look exactly the same as the \r\n   * other end of the row, when we reach the clones we can jump imperceptibly back to the beginning and seem to keep\r\n   * on scrolling in that direction.\r\n   */\r\n	\r\n  $.tools.looper = {\r\n		conf: {	\r\n			activeClass: \'active\',\r\n			circular: false,\r\n			clonedClass: \'cloned\',\r\n			disabledClass: \'disabled\',\r\n			easing: \'glide\',\r\n			initialIndex: 1,\r\n			item: null,\r\n			items: \'.items\',\r\n			next: \'.next\',   \r\n			prev: \'.prev\', \r\n			speed: 1000,\r\n			vertical: false,\r\n			wheelSpeed: 0,\r\n			detent: 0,\r\n			clonedItems: 1\r\n		}\r\n	};\r\n\r\n	var current;		\r\n	\r\n	// constructor\r\n	function LoopControl(root, conf) {   \r\n		\r\n		// current instance\r\n		var self = this, \r\n			 fire = root.add(self),\r\n			 itemWrap = root.children(),\r\n			 index = 0,\r\n			 vertical = conf.vertical;\r\n				\r\n		if (!current) { current = self; } \r\n		if (itemWrap.length > 1) { itemWrap = $(conf.items, root); }\r\n\r\n		// in this version the items are not exstensible\r\n		items = itemWrap.children(conf.item).not(\".\" + conf.clonedClass);\r\n		\r\n		// create a buffer of three cloned items at each end to mask the loop reset\r\n		items.slice(-3).clone().prependTo(itemWrap);\r\n	  items.slice(0, 3).clone().appendTo(itemWrap);\r\n	  \r\n		// methods\r\n		$.extend(self, {\r\n				\r\n			getConf: function() {\r\n				return conf;	\r\n			},			\r\n			\r\n			getIndex: function() {\r\n				return index;	\r\n			}, \r\n\r\n			getSize: function() {\r\n				return self.getItems().size();	\r\n			},\r\n\r\n			getNaviButtons: function() {\r\n				return prev.add(next);	\r\n			},\r\n			\r\n			getRoot: function() {\r\n				return root;	\r\n			},\r\n			\r\n			getItemWrap: function() {\r\n				return itemWrap;	\r\n			},\r\n\r\n			getItems: function() {\r\n				return items;\r\n			},\r\n			firstItem: function () {\r\n        return items.slice(0,1);\r\n			},\r\n			lastItem: function () {\r\n        return items.slice(-1);\r\n			},\r\n			\r\n			move: function(offset, time) {\r\n				return self.seekTo(index + offset, time);\r\n			},\r\n			\r\n			next: function(time) {\r\n				return self.move(1, time);	\r\n			},\r\n			\r\n			prev: function(time) {\r\n				return self.move(-1, time);	\r\n			},\r\n			\r\n			begin: function(time) {\r\n				return self.seekTo(0, time);	\r\n			},\r\n			\r\n			end: function(time) {\r\n				return self.seekTo(self.getSize()-1, time);	\r\n			},\r\n			\r\n			focus: function() {\r\n				current = self;\r\n				return self;\r\n			},			\r\n			\r\n			seekTo: function(i, time, fn) {	\r\n        /*\r\n				* \'items\' are the original set. \r\n				* we only ever go one step into the marginal buffers\r\n				* (the others are there to prevent visible gaps)\r\n				* so we don\'t really care about numbers: just scroll \r\n				* to the next sibling and then shuffle to the uncloned end\r\n				*/\r\n				var item, shuffle;\r\n				if (i < 0) {\r\n					item = self.firstItem().prev();\r\n					fn = function () { self.end(0); };\r\n				} else if (i >= self.getSize()) {\r\n					item = self.lastItem().next();\r\n					fn = function () { self.begin(0); };\r\n				} else {\r\n					item = self.getItems().eq(i);\r\n				}\r\n				\r\n				// callbacks are preserved because the plugins use them\r\n				var e = $.Event(\"onBeforeSeek\"); \r\n				if (!fn) {\r\n					fire.trigger(e, [i, time]);				\r\n					if (e.isDefaultPrevented() || !item.length) { return self; }			\r\n				}  \r\n\r\n        // conf.detent is a consistent offset that allows the previous block to appear as a link\r\n				var props = vertical ? {top: -(item.position().top + conf.detent)} : {left: -(item.position().left + conf.detent)};\r\n				\r\n				index = i;\r\n				current = self;  \r\n				if (time === undefined) { time = conf.speed; }\r\n				itemWrap.animate(props, time, conf.easing, fn || function() { fire.trigger(\"onSeek\", [i]); });\r\n				return self; \r\n			}\r\n		});\r\n				\r\n		// callbacks	\r\n		$.each([\'onBeforeSeek\', \'onSeek\'], function(i, name) {\r\n				\r\n			// configuration\r\n			if ($.isFunction(conf[name])) { \r\n				$(self).bind(name, conf[name]); \r\n			}\r\n			\r\n			self[name] = function(fn) {\r\n				$(self).bind(name, fn);\r\n				return self;\r\n			};\r\n		});  \r\n				\r\n		// next/prev buttons\r\n		var prev = find(root, conf.prev).click(function(e) { squash(e); self.prev(); }),\r\n			 next = find(root, conf.next).click(function(e) { squash(e); self.next(); });	\r\n\r\n		// initial index\r\n		self.seekTo(0);\r\n	} \r\n\r\n	$.fn.looper = function(conf) { \r\n\r\n		var el = this.data(\"scrollable\");\r\n		if (el) { return el; }		 \r\n\r\n		conf = $.extend({}, $.tools.looper.conf, conf); \r\n		\r\n		this.each(function() {			\r\n			el = new LoopControl($(this), conf);\r\n			$(this).data(\"scrollable\", el);	\r\n		});\r\n		\r\n		return conf.api ? el: this; \r\n	};\r\n	\r\n	$.tools.looper.autoscroll = {\r\n		conf: {\r\n			autoplay: true,\r\n			interval: 3000,\r\n			autopause: true\r\n		}\r\n	};	\r\n	\r\n  /*\r\n   * autoscroll \r\n   * is a scrollable plugin\r\n   * here slightly simplified to remove\r\n   * unneeded configurability.\r\n   * Note not currently in use.\r\n   */\r\n\r\n	$.fn.autoscroll = function(conf) { \r\n		if (typeof conf == \'number\') {\r\n			conf = {interval: conf};	\r\n		}\r\n		\r\n		var opts = $.extend({}, $.tools.looper.autoscroll.conf, conf), ret;\r\n		this.each(function() {		\r\n			var api = $(this).data(\"scrollable\");			\r\n			if (api) { ret = api; }\r\n			\r\n			var timer, hoverTimer, stopped = true;\r\n	\r\n			api.play = function() {\r\n	\r\n				if (timer) { return; }\r\n				stopped = false;\r\n				timer = setInterval(function() { \r\n					api.next();				\r\n				}, opts.interval);\r\n				\r\n				api.next();\r\n			};	\r\n\r\n			api.pause = function() {\r\n				timer = clearInterval(timer);	\r\n			};\r\n			\r\n			api.stop = function() {\r\n				api.pause();\r\n				stopped = true;	\r\n			};\r\n		\r\n			/* when mouse enters, autoscroll stops */\r\n			if (opts.autopause) {\r\n				api.getRoot().add(api.getNaviButtons()).hover(function() {			\r\n					api.pause();\r\n					clearInterval(hoverTimer);\r\n					\r\n				}, function() {\r\n					if (!stopped) {						\r\n						hoverTimer = setTimeout(api.play, opts.interval);						\r\n					}\r\n				});\r\n			}			\r\n			\r\n			if (opts.autoplay) {\r\n				setTimeout(api.play, opts.interval);				\r\n			}\r\n\r\n		});\r\n		\r\n		return opts.api ? ret : this;\r\n	}; \r\n	\r\n  /*\r\n   * navigator\r\n   * is a scrollable plugin that adds a blob-control panel.\r\n   * slightly hacked here to deal with the more than one visible block.\r\n  */\r\n\r\n	$.tools.looper.navigator = {\r\n		conf: {\r\n			navi: \'.navi\',\r\n			naviItem: null,		\r\n			activeClass: \'active\',\r\n			indexed: false,\r\n			idPrefix: null\r\n		}\r\n	};		\r\n		\r\n	$.fn.navigator = function(conf) {\r\n\r\n		if (typeof conf == \'string\') { conf = {navi: conf}; } \r\n		conf = $.extend({}, $.tools.looper.navigator.conf, conf);\r\n		\r\n		var ret;\r\n		\r\n		this.each(function() {\r\n				\r\n			var api = $(this).data(\"scrollable\"),\r\n				 navi = find(api.getRoot(), conf.navi), \r\n				 buttons = api.getNaviButtons(),\r\n				 cls = conf.activeClass;\r\n			\r\n			api.getNaviButtons = function() {\r\n				return buttons.add(navi);	\r\n			}; \r\n			\r\n			function doClick(el, i, e) {\r\n				api.seekTo(i);				\r\n				return e.preventDefault();			\r\n			}\r\n			\r\n			function els() {\r\n				return navi.find(conf.naviItem || \'> *\');	\r\n			}\r\n			\r\n			function addItem(i) {  \r\n				\r\n				var item = $(\"<\" + (conf.naviItem || \'a\') + \"/>\").click(function(e)  {\r\n					doClick($(this), i, e);\r\n					\r\n				}).attr(\"href\", \"#\" + i);\r\n				\r\n				// index number / id attribute\r\n				if (i <= 1) {  item.addClass(cls); }\r\n				if (conf.indexed)  { item.text(i + 1); }\r\n				if (conf.idPrefix) { item.attr(\"id\", conf.idPrefix + i); } \r\n				\r\n				return item.appendTo(navi);\r\n			}\r\n			\r\n			// generate navigator\r\n			if (els().length) {\r\n				els().each(function(i) { \r\n					$(this).click(function(e)  {\r\n						doClick($(this), i, e);		\r\n					});\r\n				});\r\n				\r\n			} else {\r\n				$.each(api.getItems(), function(i) {\r\n					addItem(i); \r\n				});\r\n			}   \r\n			\r\n			// activate correct entry\r\n			api.onBeforeSeek(function(e, index) {\r\n				setTimeout(function() {\r\n					if (!e.isDefaultPrevented()) {	\r\n						var foreground = els().eq(index);\r\n						var nextItem = (index == els().length-1) ? els().eq(0) : els().eq(index+1);\r\n						if (!e.isDefaultPrevented() && foreground.length) {			\r\n							els().removeClass(cls);\r\n							foreground.addClass(cls);\r\n							nextItem.addClass(cls);\r\n						}\r\n					}\r\n				}, 1);\r\n			}); \r\n		});		\r\n		\r\n		return conf.api ? ret : this;\r\n	};\r\n\r\n  /*\r\n   * Reveal \r\n   * is a general-purpose handler of page elements that transition in and out of view.\r\n   * it handles transitions and mouse events with all the right \r\n   * delays and cancellations including a delayed-disappearance mechanism to allow for mousing about.\r\n  */\r\n\r\n	$.tools.reveal = {\r\n		conf: {	\r\n			activeClass: \'active\',\r\n			upSwing: \'boing\',\r\n			downSwing: \'swing\',\r\n			upSpeed: 500,\r\n			downSpeed: 1000,\r\n			upState: {opacity: 1},\r\n			downState: {opacity: 0},\r\n			downDelay: 1000,\r\n			revealedClass: \'revealed\',\r\n			alsoReveal: null\r\n		}\r\n	};\r\n	\r\n	function RevealControl(root, revealed, conf) {   \r\n		var self = this;\r\n	  \r\n		$.extend(self, {\r\n			timer: null,\r\n			activity: null,\r\n			state: \'hidden\',\r\n			container: $(revealed),\r\n			containers: $(revealed).add(root).add($(conf.alsoReveal)),\r\n			\r\n			show: function(event) {\r\n			  squash(event);\r\n        self.interrupt();\r\n        self.state = \"visible\";\r\n        self.containers.addClass(conf.revealedClass);\r\n        $(document).bind(\'click\', function (e) { self.hideFast(e); });\r\n				self.activity = self.container.animate(conf.upState, conf.upSpeed, conf.upSwing);	 \r\n			},			\r\n			\r\n			hide: function(time) {\r\n        self.interrupt();\r\n			  if (!time) time = conf.downSpeed;\r\n				self.activity = self.container.animate(conf.downState, time, conf.downSwing, function () {\r\n          self.state = \"hidden\";\r\n          self.containers.removeClass(conf.revealedClass);\r\n          $(document).unbind(\'click\');            // until the menu has completely gone, a click can be used to hurry it up\r\n				});	 \r\n			},\r\n\r\n			hideSoon: function(event) {\r\n			  squash(event);\r\n        self.timer = window.setTimeout(self.hide, conf.downDelay);\r\n			},\r\n			\r\n			// note that hideFast doesn\'t block the event: \r\n			// if called directly, it means that something else is happening that should be allowed to continue.\r\n      hideFast: function(event) {\r\n        self.interrupt();\r\n        self.hide(100);\r\n			},\r\n			\r\n			toggle: function (event) {\r\n			  squash(event);\r\n			  self.state == \"visible\" ? self.hideFast() : self.show();\r\n			},\r\n			\r\n			interrupt: function () {\r\n        if (self.activity) self.activity.stop(true, false);\r\n			  if (self.timer) window.clearTimeout(self.timer);\r\n			}\r\n		});\r\n	\r\n    // root.click(function(e) { self.toggle(e); });\r\n    self.containers.mouseenter(function(e) { self.show(e); });\r\n    self.containers.mouseleave(function(e) { self.hideSoon(e); });\r\n	  self.hide();\r\n	}\r\n	\r\n	$.fn.reveal = function(revealed, conf) { \r\n		var el = this.data(\"reveal\");\r\n		if (el) { return el; }		 \r\n		conf = $.extend({}, $.tools.reveal.conf, conf); \r\n		this.each(function() {			\r\n			el = new RevealControl($(this), revealed, conf);\r\n			$(this).data(\"reveal\", el);	\r\n		});\r\n		return conf.api ? el: this;\r\n	};\r\n	\r\n	$.fn.banner = function(conf) { \r\n		var el = this.data(\"reveal\");\r\n		if (el) { return el; }		 \r\n		conf = $.extend({}, $.tools.reveal.conf, conf); \r\n		this.each(function() {\r\n		  var self = $(this);\r\n		  var revealed = self.find(\'.overlay\');\r\n			el = new RevealControl($(this), revealed, conf);\r\n			$(this).data(\"reveal\", el);\r\n		});\r\n	};\r\n	\r\n	$.tools.tabs.cookied = {\r\n		conf: {\r\n			name: \'_tab\'\r\n		}\r\n	};		\r\n		\r\n  /*\r\n   * cookied\r\n   * is an extension to the jQueryTools tab mechanism \r\n   * to store in a cookie the tab last chosen so that on returning to the page it is still displayed.\r\n  */\r\n\r\n	$.fn.cookied = function(conf) {\r\n		if (typeof conf == \'string\') { conf = {name: conf}; } \r\n		conf = $.extend({}, $.tools.tabs.cookied.conf, conf);\r\n		this.each(function() {\r\n			var api = $(this).data(\"tabs\");\r\n			api.onClick(function(e, index) { $.cookie(cookie_name, index); }); \r\n		  if (!location.hash) {\r\n  		  var cookie_name = this.id + \'_\' + conf.name;\r\n        initialIndex = ($.cookie(cookie_name)) ? parseInt($.cookie(cookie_name), 10) : 0;\r\n  		  api.click(initialIndex);\r\n  		}\r\n		});		\r\n		\r\n		return this;\r\n	};\r\n\r\n  /*\r\n   * shrink_if_longer_than\r\n   * \r\n   * Headlines (or anything else) longer than [limit] characters are given \r\n   * the \'smaller\' css class, which does make them smaller, yes.\r\n  */\r\n	\r\n	$.fn.shrink_if_longer_than = function(limit) { \r\n		this.each(function() {\r\n		  if (!limit) limit = 64;\r\n      var self = $(this);\r\n      if (self.text().length > limit) self.addClass(\'smaller\');\r\n		});\r\n  	return this; \r\n	};\r\n\r\n  /*\r\n   * framed\r\n   * \r\n   * replaces an image with a pair of framing divs: \r\n   * one behind with the image as background, one in front holding a mask\r\n  */\r\n	\r\n	$.fn.framed = function(limit) { \r\n		this.each(function() {\r\n      var self = $(this);\r\n      var src = self.attr(\'src\');\r\n      var cls = self.hasClass(\'alt\') ? \"frame alt\" : \"frame\";\r\n      self.replaceWith($(\'<div class=\"framed\" style=\"background-image: url(\' + src + \')\"><div class=\"\' + cls + \'\"></div></div>\'));\r\n		});\r\n  	return this; \r\n	};\r\n\r\n	$.fn.galleried = function(conf) { \r\n		conf = $.extend({}, $.tools.reveal.conf, conf);\r\n		this.each(function() {\r\n		  new Loader($(this));\r\n    });\r\n  };\r\n\r\n  function Loader(a) {   \r\n		var self = this;\r\n		var thumb = $(a);\r\n	  \r\n		$.extend(self, {\r\n		  deactivate: function (event) {\r\n        thumb.fadeTo(\'slow\', 0.3);\r\n        thumb.css(\'cursor\', \'text\');\r\n      },\r\n      activate: function (event) {\r\n        thumb.fadeTo(\'slow\', 1);\r\n        thumb.css(\'cursor\', \'pointer\');\r\n      }\r\n    });\r\n    \r\n    var previewId = thumb.attr(\'rel\');\r\n    var captionId = previewId.replace(\'gallery_\', \'caption_\');\r\n    var gallery = $(previewId);\r\n    var caption = $(captionId);\r\n    \r\n    if (gallery) {\r\n      thumb.overlay({effect: \'apple2\', fixed: false, closeOnClick: true, closeOnEsc: true, target: gallery});\r\n      preview = gallery.find(\'img\');\r\n      if (!preview[0].complete) {\r\n        self.deactivate();\r\n        preview.bind(\"load\", function () { self.activate(); });\r\n      }\r\n      gallery.hide();\r\n      gallery.appendTo($(\'body\'));\r\n      if (caption) caption.clone().appendTo(gallery);\r\n    }  \r\n  }\r\n\r\n})(jQuery);\r\n\r\n$(function() {\r\n  $(\".thumb\").galleried();\r\n});\r\n',20),
	(33,'introduction','','It\'s a summer evening on Reculver Beach in Kent and I\'m sitting cross-legged beneath the cliffs, piling driftwood onto a stuttering fire. The evening silence is broken only by the crackling of the burning wood, by hundreds of darting, chattering sand martins shooting in and out of slits in the sandy cliff faces and, now, the shifting of the gravel beneath Fergus\'s feet as he makes his way back up from the shoreline.',9),
	(34,'subtitle','','As St George\'s Day approaches, it\'s worth asking what England actually is.',9),
	(35,'publication','','Published in the Daily Telegraph, 18 April 2008',9),
	(36,'body','','This will combine introductory text with an automatic list of children.\r\n',21),
	(37,'extended','','',21),
	(38,'body','','This page will combine blurb with automatic links to all the relevant articles elsewhere in the site.',22),
	(39,'extended','','',22),
	(40,'quote','Textile','I would like Gordon Brown to be strapped into a chair and have this read to him. \"Nicholas Lezard, The Guardian\":http://www.guardian.co.uk/',22),
	(43,'body','','',24),
	(44,'precis','Textile','It\'s a summer evening on Reculver Beach in Kent and I\'m sitting cross-legged beneath the cliffs, piling driftwood onto a stuttering fire. The evening silence is broken only by the crackling of the burning wood, by hundreds of darting, chattering sand martins shooting in and out of slits in the sandy cliff faces and, now, the shifting of the gravel beneath Fergus\'s feet as he makes his way back up from the shoreline.',9),
	(45,'subtitle','','Author, journalist, poet, atavist, grump.',1),
	(46,'body','','',25),
	(47,'subtitle','','',25),
	(48,'precis','Textile','From the moors of northern England to the cities of Western Europe, the poplars of the Thames to the sands of the Nevada desert, the poems in Kidland rise from ancient landscapes to confront a society in denial about its relationship with nature, memory and destiny. On barrows and mountains, in yellow fields and green woods, Kidland offers up a radical, uncompromising vision of broken connections and darkening futures. Images, dreams and prophecies, human and inhuman, dominate the pages of Paul Kingsnorth\'s debut collection, finding their fullest expression in the narrative title poem, in which reason meets wildness among the dark pines of the north, and certainties are broken like empty promises.',25),
	(49,'quote','Textile','\"Kingsnorth arrives with snow on his shoulders and embers in his gut\" \r\n\"Mario Petrucci\":#',25),
	(50,'introduction','Textile','This site holds the best of my writing from the last decade or so, including journalism, opinion pieces, interviews, book reviews, reportage and poetry. It will seek to persuade you to buy my books and forthcoming works and to attend any events I am to grace in the near future, and it will impose upon you various unsolicited opinions. You can also browse through a possibly revitalised blog and find out more about the post-civil cultural phenomenon whose fruiting body is the Dark Mountain Project.',1),
	(51,'body','','',26),
	(52,'subtitle','','',26),
	(53,'precis','','',26),
	(54,'quote','Textile','Part visionary, part historian: accessible, impassioned and persuasive.\r\n\"Esquire\":#',26),
	(55,'introduction','Textile','Last autumn, I moved from the city to the country. After fifteen years in Oxford, and with a young daughter now in tow, my wife and I shifted ourselves to a rented former barn on a hill farm in south Cumbria. It had been long in the planning, and itâ€™s intended to be the first stage in a process which will lead us to finding our own land, on which we can build up some useful skills, provide for ourselves, spend less time staring at screens and breathe some air that doesnâ€™t taste of diesel.',6),
	(56,'publication','','The Land, November 2010',6),
	(57,'subtitle','','What happens when an urban greenhorn goes rural',6),
	(58,'introduction','Textile','Over the years Iâ€™ve written for most of the Fleet Street broadsheets (and the occasional tabloid.) But much of my work has been for more specialist, and often more interesting, outlets, from the New Statesman and the Ecologist, of which I used to be deputy editor, to TomPaine.com, Country Life, Resurgence, Adbusters and many more, in nations from Australia to Sweden. I\'ve even written for Top Gear magazine. But only once.',4),
	(59,'body','Textile','These are some of the things you can expect people to say to you if you dare to talk, today, about the land. Specifically, if you are foolish enough to suggest that there may be anything positive about rural life, about working the land, about land-based communities or about the possibly simpler or more essential life it may represent, you can expect to call down a firestorm upon your unsuspecting head.\r\n\r\nI have written books and articles and given talks for a number of years which have touched on these issues. I have told detailed stories from all over the world about the struggles of land-based people against the forces which would dispossess them. I have tried to explain what makes those people so attached to the land, and I have also tried to explain my own love of the countryside, my own work on the land, my need get my hands dirty, and what I think we are losing as we continue to concrete over the fields and lose our folk memory of the soil.\r\n\r\nEvery time I have done so, someone has popped up with at least one of the lines above. Sometimes it is said in mockery, sometimes in anger. Sometimes I have sensed that the accuser feels some personal slight has been done to them. The phrases are so similar, so often, from so many different people, that they are clearly not the original thoughts of those who peddle them. This is received wisdom, passed down over generations; a curiously Pavlovian reaction. The assumptions behind it are clear: city good, country bad; city modern, country backward; consumption modern, production antiquated; â€˜progressâ€™ good, always and forever.\r\n\r\nThis kind of thing is not new. Seventy years ago, in the viciously entertaining second section of his English travelogue The Road to Wigan Pier, George Orwell provided a critique of precisely the same kind of nonsense. Orwell was a socialist, but he was an idiosyncratic one, and one of the many complaints he airs about socialism in Wigan Pier is its incessant, dehumanising â€˜machine worshipâ€™. Orwell detected â€“ it wasnâ€™t hard to detect â€“ the extreme hostility of socialism towards the land and the people who belonged to it. The land, it was clear, represented the past. It represented reaction, smallness and stasis, inequality, feudalism and drudgery. In contrast, the urban, machine civilisation which Orwell both loathed and was impressed by represented a bright, shining, necessary future. Orwellâ€™s description of what happens when a challenge is issued to a â€˜vulgar machine worshipperâ€™ is worth quoting at length, because it could have been written yesterday:\r\n\r\nIn the first place he will tell you that it is impossible to â€˜go backâ€™ (or to â€˜put back the hand of progressâ€™â€”as though the hand of progress hadnâ€™t been pretty violently put back several times in human history!), and will then accuse you of being a medievalist and begin to descant upon the horrors of the Middle Ages, leprosy, the Inquisition, etc. As a matter of fact, most attacks upon the Middle Ages and the past generally by apologists of modernity are beside the point, because their essential trick is to project a modern man, with his squeamishness and his high standards of comfort, into an age when such things were unheard of. But notice that in any case this is not an answer. For a dislike of the mechanized future does not imply the smallest reverence for any period of the past ... When one pictures a desirable civilization, one pictures it merely as an objective; there is no need to pretend that it has ever existed in space and time. Press this point home, explain that you wish to aim at making life simpler and harder instead of softer and more complex, and the Socialist will usually assume that you want to revert to a â€˜state of natureâ€™â€”meaning some stinking Paleolithic cave: as though there were nothing between a flint scraper and the steel mills of Sheffield, or between a skin coracle and the Queen Mary!\r\n\r\nWhat is striking about this passage is that not only the arguments but the language they are couched in have undergone little change in seven decades. What has changed is that it is not just socialists who adopt this line now, but people from across the political spectrum. Try proposing a â€˜simpler lifeâ€™ today; try suggesting that economic growth might be in some way not the panacea it is claimed; try questioning the value of the internet or suggesting that we should scale back our material lusts in any way. Within ten seconds you will be accused of wearing a â€˜hair shirtâ€™; another five will see you accused of wanting to â€˜make everyone live in caves.â€™ Persist and youâ€™ll be compared to Pol Pot or â€“ if the accuser has even less imagination â€“ Hitler (he was a vegetarian, you know.)\r\n\r\nWhat is happening here, and why? Why does a love of or an attachment to the land or the countryside elicit such strong and negative reactions in so many people? I think that we can best uncover the origins of this attitude by taking a step back and examining the assumptions that govern the civilisation we are currently living in. Every civilisation has its founding myths, whether it likes to admit it or not, and ours is what we might call the progressive narrative. Since the Enlightenment, this particular version of the human story has been pretty much all-conquering, certainly in the West where it originated, and increasingly in the wider world too. It is a story as simple and powerful as the religious myths which it supplanted and upon which it is parasitical.\r\n\r\nHumanity, it tells us, started off grunting in the primeval swamps and will end up conquering the stars. Each generation will experience better lives than the one before, thanks to the machine civilisation we have built to cocoon us. Soon this will allow us to abolish poverty, stabilise and manage â€˜our environmentâ€™, extend US-style representative democracy to everyone on Earth and create a global civilisation where everyone has access to Twitter, Starbucks and the Universal Declaration of Human Rights.\r\n\r\nThis is a caricatured but reasonably accurate version of the progressive narrative. It tells us that things will always get better, and that if we work hard we can have everything. It is a powerful and appealing story. For this reason, it is embedded deep in our culture, and you can hear it rising, unexamined, from the depths every day, through the mouths of politicians, journalists, teachers, scientists â€“ pretty much all of us.\r\n\r\nImplicit in this myth, and essential to it, is the idea that progress requires an escape from the land. In the soil, in the woods and the fields and the moors and the mountains, lurks a dirty, frightening and very un-progressive barbarism. The countryside is the home of murky customs, superstitions, witches, inbreeding, foxhunting and Tory MPs. Note how the word â€˜peasantâ€™, which in its literal sense simply means small farmer, has become a term of abuse. Karl Marx, the ultimate progressive (and a metropolitan social climber on the quiet) talked scornfully of the peasant populations of Europe, â€˜mired in the idiocy of rural lifeâ€™. Revolution, he thought, would rescue them, by force if need be, from this slough of despond, corralling them into the factories where they could be more useful.\r\n\r\nThe political left has always fetished the progressive, urban narrative. Traditionally they were opposed in this by a conservative, often rural, right, who stood for king, country and the land (much of which they owned.) Today, though, the progressive narrative has crossed political boundaries, broken them down and gleefully trampled upon them. These days, everyone from socialists to environmentalists to David Cameron is a â€˜progressiveâ€™, and the future is urban, consumerist, fast-moving and mediated. There is no place for the land, for that might require us to slow down, look around us, understand where we are, see ourselves as part of a web rather than as free-floating individuals taking their pleasure where they can. It might remind us of where we came from and what we really are, and the consequences of that are too frightening to contemplate.\r\n\r\nThe progressive narrative propagates a number of fantasies about the way the world is, but one of the most pernicious is that everywhere is essentially the same. Places donâ€™t matter, individual human beings are free-floating entities, the same wherever they are brought up, detached from the land, consumers in a global mall: citizens of nowhere. This is the point at which the left and the right seamlessly meld into one. Leftists have long nurtured a vision of a world in which boundaries are done away with, religion is dead, and we are all â€˜global citizens.â€™ Meanwhile, the neoliberal right nurse their own dreams of a borderless world of free-floating capital, a â€˜global marketâ€™ in which money is the arbiter of value.\r\n\r\nToday, these two dreams have become one, though neither side will admit it. The longed-for One World is rapidly approaching, and it is a world of increasing subservience to the machine. It is also a world of Change, with a capital C. In the progressive narrative, change is the only constant. Continuity, stability, the simple act of standing still â€“ all are looked on with suspicion. Attachment to place, locality, tradition and culture are tantamount to fascism. Look at the election slogans of any politician anywhere in the world, allegedly left or supposedly right, and there it is: Change. A slogan we can all do business with. This, of course, is not new either. Marx and Engels pinned its inevitability down over 150 years ago in the Communist Manifesto:\r\n\r\nConstant revolutionizing of production, uninterrupted disturbance of all social conditions, everlasting uncertainty and agitation distinguish the bourgeois epoch from all earlier ones. All fixed, fast frozen relations, with their train of ancient and venerable prejudices and opinions, are swept away, all new-formed ones become antiquated before they can ossify. All that is solid melts into air, all that is holy is profaned, and man is at last compelled to face with sober senses his real condition of life and his relations with his kind.\r\n\r\nMarx and Engels thought all this was rather good. Constant revolution suited them fine; what they were concerned about was who got the spoils. Today, that argument rumbles on, but the obsession with change is even more deeply embedded. Ethnologist Ullrich Kockel, Professor of Ethnology and Folk Life at the University of Ulster, has been studying land-based communities around the world for decades. In that time he has come up time and again against the dogma of progress-at-all-costs and its corollary: a contempt for the land and its â€˜backwardâ€™ people. In his recent inaugural address to the university he lambasted this worldview, which he sees not only in politicians and the media but in unthinkingly right-on academics who ought to know better:\r\n\r\nAny positive evaluation of the past, and any analysis emphasising continuity over change is branded as indicative of reactionary politics, emotional regression, or both: an irrational scramble for shelter from the vagaries of the modern world. This diagnosis has become so commonplace and deep-seated that anyone daring to challenge it would find themselves immediately relegated to the same politico-cultural sickbed. Under no circumstances must one look for continuities (unless one wants to be seen as emotionally retreating into a fantasy Golden Age).\r\n\r\nChange, in other words, is the only constant. From Barack Obama to David Cameron, progress, and its modern sub-narratives â€˜growthâ€™ and â€˜development, is the only dish presented to us. And because we must all abhor stasis, we must abhor the land. For what is more stolid, unchanging and symbolic of the terrible, squalid past than mud, trees, and rivers? And who is more likely to stand in the way of growth, progress and the machine than the foolish, reactionary romantic dolts who persist in staying attached to it?\r\n\r\nThis is the attitude that has led, and continues to lead, to the destruction of land all over the world, and of the forced dispersal of people who remain attached to it. The religion of progress decrees that we should all become part of the mediated, virtual world of happy urban consumers. But some people persist in not being interested. Small farmers are not big consumers. Peasants are not much interested in voting. Tribal people would rather hunt and fish than let a PLC dig for bauxite under their ancestral forests.\r\n\r\nAnd this is their doom. Consider Stalinâ€™s forced farm collectivisation, or the slaughter of tribal peoples from Indonesia to the Amazon. Consider the tens of thousands forced from their homes by bulldozers in India to make way for dams to fuel the growing cities. Consider the North American Free Trade Agreement, which destroyed the livelihoods of Mexican peasants for the benefit of US agribusiness. Consider the ongoing concreting of countryside in rich countries like Britain, where farmers still haemorrhage from the land.\r\n\r\nAll over the world, people are being forced from their land in the name of the machine. We rarely hear their stories. What we hear instead is an unceasing diet of progress-is-good-for-them propaganda, which differs little from Victorian lectures about the White Manâ€™s Burden and the need to bring civilisation to the savages. Poor, unhappy peasants, we are told, long to leave their scrappy rural lives for the big cities. Our duty is to help them do it, by means of development and growth.\r\n\r\nStories that do not fit this narrative tend not to make the light of day. Some years back I spent time with peasant farmers in Brazil, who were part of the Movimento Sem Terra, or landless workersâ€™ movement. The Sem Terra are peasants without land. Often they have been forced from their land; sometimes they have left it to go to the cities, then changed their minds when they saw the reality of urban life. Now the Sem Terra is the worldâ€™s biggest social movement, and it is made up entirely of poor, small farmers whose wish is not for jobs in call centres but for land. They get it by force, occupying the unused estates of rich landowners. The successful Sem Terra I spoke to had never been happier; the land was where they wanted to be.\r\n\r\nA similar tale can be heard in India. India, we hear in the media almost every day, is a thrusting, modern success story; a land of Microsoft and call centres and dynamism and growth. But more than all this, India is a land of farmers. The progressive narrative expects them to leave their pointless little farms and get with the urban programme. But many of them have other ideas. Vast farmersâ€™ movements have arisen in India in recent decades, counting millions amongst their numbers. They have invaded the offices of multinational seed companies, built bonfires of genetically-modified crops and undertaken marches, hundreds of thousands strong, across the country. All this for the right to continue to farm; to continue to stay on the land, despite the efforts of the progressive classes to force them off.\r\n\r\nStories like this come in from all over the world, every day, if you know where to look. You may have read, for example, one of the gazillions of pieces in the mainstream media over the last few years about how many Chinese people are leaving the land and flooding into the cities. There were far fewer stories explaining how last year more people left the cities to return to the countryside. In fact, to my knowledge, there were none. Itâ€™s not the story weâ€™re supposed to be hearing. The continued existence, and often resistance, of land-based communities is a two-fingered salute to the dogma which requires us to believe that everyone everywhere, given half the chance, would thrown down their hoes for a job in a Motorola factory.\r\n\r\nAll of this gives us, in the rich world, food for thought. In my young days, I used to think that â€˜the systemâ€™ could be smashed with revolution and resistance and the like â€“ the time-honoured tools of the excitable political radical. I donâ€™t believe that anymore. I donâ€™t really believe that the system can be smashed at all. But Iâ€™m pretty sure it is beginning to crumble by itself, as the myth of progress hits the buffers of reality. The economic woes that have shaken the whole machine over the past eighteen months are as nothing to the ecological woes that are unfolding, as the climate and the soil itself shiver beneath the force of our delusions. The world, it seems, cannot take much more progress of this kind. It has been calculated, for example (and by real scientists, not by troublemaking eco-hippies) that if the global economy grows at an average rate of 3% for the next twenty years, we will consume in that period resources equivalent to all those consumed since humanity first evolved. Something, clearly, is going to have to give.\r\n\r\nGeorge Orwell, finally, concluded that â€˜progress and reaction have both turned out to be swindles.â€™ He was right about that, and every year it becomes clearer. But what remains? To Orwell, the answer seemed a despairing one: â€˜quietism â€“ robbing reality of its terrors by simply submitting to it.â€™ But there is, it seems to me, another way. To put a spanner in the works of the progressive narrative, to foul up the machine in your own small way, the best course of action is simply to stand your ground. What really gets in the way of all this change, progress, development and other euphemisms for destruction and profit is grounded people who know their place, in the physical sense, and are prepared to fight for it if they have to.\r\n\r\nTo belong to a piece of land, to know it and be able to work it, to walk it until you know what it wants, is a lifetimeâ€™s work. To do such a thing, or even attempt it, is to slow down, breathe more deeply, spend less time in front of screens and more in the sun and rain. To get your hands dirty, to grow your own food, to provide for yourself and your family, to stand your ground, know your place â€“ all of this is to commit an open heresy against the ossifying religion of progress. In an increasingly placeless, rootless world, the best way to resist is to dig â€“ and the best way to rebel is to belong.\r\n',27),
	(60,'subtitle','','Could it be that the best way to rebel is to belong?',27),
	(61,'precis','Textile','You are a nimby, a reactionary and a Romantic idiot. You want to go back to a Golden Age, in which you can play at living in prettified village poverty because you have never experienced the real thing. You are a privileged, bourgeois escapist. You dream of a prelapsarian rural idyll because you canâ€™t cope with the modern multicultural, urban reality. You are a hypocrite. You are personally responsible for the misery of a lot of poor people in Africa who need you to buy their beans. You need to get real...',27),
	(62,'quote','','',27),
	(63,'introduction','Textile','You are a nimby, a reactionary and a Romantic idiot. You want to go back to a Golden Age, in which you can play at living in prettified village poverty because you have never experienced the real thing. You are a privileged, bourgeois escapist. You dream of a prelapsarian rural idyll because you canâ€™t cope with the modern multicultural, urban reality. You are a hypocrite. You are personally responsible for the misery of a lot of poor people in Africa who need you to buy their beans. You need to get real. This is the 21 st century, and there is business to be done. There is poverty to eliminate, an economy to expand, a planet to be saved. You are not helping by playing at being William Cobbett or William Morris. Snap out of it. Grow up.',27),
	(64,'publication','','Published in The Idler, June 2010  ',27),
	(65,'body','','',28),
	(66,'subtitle','','',28),
	(67,'precis','','',28),
	(68,'quote','Textile','It may be the most honest attempt at literature weâ€™ve seen.\r\n\"Sharon Astyk\":#',28),
	(69,'body','Textile','bq. \'Some see Nature all ridicule and deformity â€¦ and some scarce see Nature at all. But to the eyes of the man of imagination, Nature is imagination itself.\' William Blake\r\n\r\nh2. Scenes from a younger life # 1:\r\n\r\nI am twelve years old. I am alone, I am scared, I am cold and I am crying my eyes out. I can\'t see more than six feet in either direction. I am on some godforsaken moor high up on the dark, ancient, poisonous spine of England. The black bog juice I have been trudging through for hours has long since crept over the tops of my boots and down into my socks. My rucksack is too heavy, I am unloved and lost and I will never find my way home. It is raining and the cloud is punishing me; clinging to me, laughing at me. Twenty five years later, I still have a felt memory of that experience and its emotions: a real despair and a terrible loneliness.\r\n\r\nI do find my way home; I manage to keep to the path and eventually catch up with my father, who has the map and the compass and the mini Mars bars. He was always there, somewhere up ahead, but he had decided it would be good for me to \'learn to keep up\' with him. All of this, he tells me, will make me into a man. Needless to say, it didn\'t work.\r\n\r\nOnly later do I realise the complexity of the emotions summoned by a childhood laced with experiences like this. My father was a compulsive long-distance walker. Every year, throughout my most formative decade, he would take me away to Cumbria or Northumberland or Yorkshire or Cornwall or Pembrokeshire or the Welsh marches, and we would walk, for weeks. We would follow ancient tracks or new trails, across mountains and moors and ivory black cliffs. Much of the time we would be alone with each other and with our thoughts and our conversations, and we would be alone with the oystercatchers, the gannets, the curlews, the skylarks and the owls. With the gale and the breeze, with our maps and compasses and emergency rations and bivvy bags and plastic bottles of water. We would camp in the heather, by cairns and old mine shafts, hundreds of feet above the orange lights of civilisation, and I would dream. And in the morning, with dew on the tent and cold air in my face as I opened the zip, the wild elements of life, all of the real things, would all seem to be there, waiting for me with the sunrise.\r\n\r\nh2. Scenes from a younger life # 2:\r\n\r\nI am nineteen years old. It is around midnight and I am on the summit of a low, chalk down, the last of the long chain that wind their way through through the crowded, peopled, fractious South Country. There are maybe fifty or sixty people there with me. There is a fire going, there are guitars, there is singing and weird and unnerving whooping noises from some of the ragged travellers who have made this place their home.\r\n\r\nThis is Twyford Down, a hilltop east of Winchester. There is something powerful about this place; something ancient and unanswering. Soon it is to be destroyed: a six lane motorway will be driven through it in a deep chalk cutting. It is vital that this should happen in order to reduce the journey time of travellers between London and Southampton by a full thirteen minutes. The people up here have made it their home in a doomed attempt to stop this happening.\r\n\r\nFrom outside it is impossible to see, and most do not want to. The name-calling has been going on for months, in the papers and the pubs and in the House of Commons. The people here are Luddites, Nimbies, reactionaries, romantics. They are standing in the way of progress. They will not be tolerated. Inside, there is a sense of shared threat and solidarity, there are blocks of hash and packets of Rizlas and litres of bad cider. We know what we are here for. We know what we are doing. We can feel the reason in the soil and in the night air. Down there, under the lights and behind the curtains, there is no chance that they will ever understand. We are on our own.\r\n\r\nSomeone I don\'t know suggests we dance the maze. Out beyond the firelight, there is a maze carved into the down\'s soft, chalk turf. I don\'t know if it\'s some ancient monument or a new creation. Either way, it\'s the same spiral pattern that can be found carved in rocks from millennia ago. With cans and cigarettes and spliffs in our hands, a small group of us start to walk the maze, laughing, staggering, then breaking into a run, singing, spluttering, stumbling together towards the centre.\r\n\r\nh2. Scenes from a younger life # 3:\r\n\r\nI am twenty one years old and I\'ve just spent the most exciting two months of my life so far in an Indonesian rainforest. I\'ve just been on one of those organised expeditions that people of my age buy into to give them the chance to do something useful and exciting in what used to be called the \'Third World\', I\'ve prepared for months for this. I\'ve sold double glazing door-to-door to scrape the cash together. I have been reading Bruce Chatwin and Redmond O\'Hanlon and Benedict Allen and my head is full of magic and idiocy and wonder.\r\n\r\nDuring my trip, there were plenty of all of these things. I still vividly remember klotok journeys up Borneo rivers by moonlight, watching the swarms of giant fruitbats overhead. I remember the hooting of gibbons and the search for hornbills high up in the rainforest canopy. I remember a four day trek through a so-called \'rain\' forest that was so dry we ended up drinking filtered mud. I remember turtle eggs on the beaches of Java and young orangutans at the rehabilitation centre where we worked in Kalimantan, sitting in the high branches of trees with people\'s stolen underpants on their heads, laughing at us. I remember the gold miners and the loggers, and the freshwater crocodiles in the same river we swam in every morning. I remember my first sight of flying fish in the Java Sea.\r\n\r\nAnd I remember the small islands north of Lombok where some of us spent a few days before we came home. At night we would go down to the moonlit beach, where the sea and the air would still be warm, and in the sea were millions of tiny lights: phosphorescence. I had never seen this before; never even heard of it. We would walk into the water and immerse ourselves and rise up again and the lights would cling to our bodies, fading away as we laughed.\r\n\r\nNow, back home, the world seems changed. A two month break from my country, my upbringing, my cultural assumptions, a two month immersion in something far more raw and unmediated, has left me open to seeing this place as it really is. I see the atomisation and the inward focus and the faces of the people in a hurry on the other side of windscreens. I see the streetlights and the asphalt as I had not quite seen them before. What I see most of all are the adverts.\r\n\r\nFor the first time, I realise the extent and the scope and the impacts of the billboards, the posters, the TV and radio ads. Everywhere an image, a phrase, a demand or a recommendation is screaming for my attention, trying to sell me something, tell me who to be, what to desire and to need. And this is before the internet; before apples and blackberries became indispensable to people who wouldn\'t know where to pick the real thing; before the deep, accelerating immersion of people in their technologies, even outdoors, even in the sunshine. Compared to where I have been, this world is so tamed, so mediated and commoditised, that something within it seems to have broken off and been lost beneath the slabs. No one has noticed this, or says so if they have. Something is missing: I can almost see the gap where it used to be. But it is not remarked upon. Nobody says a thing.\r\n\r\n<r:snippet name=\"division\" />\r\n\r\nIt is 9.30 at night in mid-December at the end of the first decade of the 21st century. I step outside my front door into the farmyard and I walk over to the track, letting my eyes adjust to the dark. I am lucky enough to be living among the Cumbrian fells now, and as my pupils widen I can see, under a clear, starlit sky, the outline of the Old Man of Coniston, Dow Crag, Wetherlam, Helvellyn, the Fairfield horseshoe. I stand there for ten minutes, growing colder. I see two shooting stars and a satellite. I suddenly wish my dad was still alive and I wonder where the magic has gone.\r\n\r\nThese experiences, and others like them, were what formed me. They were what made me what I would later learn to call an \'environmentalist\': something which seemed rebellious and excitingly outsiderish when I first took it up (and which successfully horrified my social climbing father â€“ especially as it was partly his fault) but which these days is almost de rigeur amongst the British bourgeoisie. Early in my adult life, just after I came back from Twyford Down, I vowed, self-importantly, that this would be my life\'s work: saving nature from people. Preventing the destruction of beauty and brilliance, speaking up for the small and the overlooked and the things that could not speak for themselves. When I look back on this now, I\'m quite touched by my younger self. I would like to be him again, perhaps just for a day; someone to whom all sensations are fiery and all answers are simple.\r\n\r\nAll of this â€“ the downs, the woods, the rainforest, the great oceans and, perhaps most of all, the silent isolation of the moors and mountains, which at the time seemed so hateful and unremitting â€“ took hold of me somewhere unexamined. The relief I used to feel on those long trudges with my dad when I saw the lights of a village or a remote pub, even a minor road or a pylon; any sign of humanity â€“ as I grow older this is replaced by the relief of escaping from the towns and the villages, away from the pylons and the pubs and the people, up onto the moors again, where only the ghosts and the saucer-eyed dogs and the old legends and the wind can possess me.\r\n\r\nBut they are harder to find now, those spirits. I look out across the moonlit Lake District ranges and it\'s as clear as the night air that what used to come in regular waves, pounding like the sea, comes now only in flashes, out of the corner of my eyes, like a lighthouse in a storm. Perhaps it\'s the way the world has changed. There are more cars on the roads now, more satellites in the sky. The footpaths up the fells are like stone motorways, there are turbines on the moors and the farmers are being edged out by south country refugees like me, trying to escape but bringing with us the things we flee from. The new world is online and loving it, the virtual happily edging out the actual. The darkness is shut out and the night grows lighter and nobody is there to see it.\r\n\r\nIt could be all that, but it probably isn\'t. It\'s probably me. I am 37 now. The world is smaller, more tired, more fragile, more horribly complex and full of troubles. Or, rather: the world is the same as it ever was, but I am more aware of it and of the reality of my place within it. I have grown up, and there is nothing to be done about it. The worst part of it is that I can\'t seem to look without thinking anymore. And now I know far more about what we are doing. We: the people. I know what we are doing, all over the world, to everything, all of the time. I know why the magic is dying. It\'s me. It\'s us.\r\n\r\n<r:snippet name=\"division\" />\r\n\r\nI became an \'environmentalist\' because of a strong emotional reaction to wild places and the other-than-human world: to beech trees and hedgerows and pounding waterfalls, to songbirds and sunsets, to the flying fish in the Java Sea and the canopy of the rainforest at dusk when the gibbons come to the waterside to feed. From that reaction came a feeling, which became a series of thoughts: that such things are precious for their own sake, that they are food for the human soul and that they need people to speak for them to, and defend them from, other people, because they cannot speak our language and we have forgotten how to speak theirs. And because we are killing them to feed ourselves and we know it and we care about it, sometimes, but we do it anyway because we are hungry, or we have persuaded ourselves that we are.\r\n\r\nBut these are not, I think, very common views today. Today\'s environmentalism is as much a victim of the contemporary cult of utility as every other aspect of our lives, from science to education. We are not environmentalists now because we have an emotional reaction to the wild world. In this country, most of us wouldn\'t even know where to find it. We are environmentalists now in order to promote something called \'sustainability\'. What does this curious, plastic word mean? It does not mean defending the non-human world from the ever-expanding empire of Homo sapiens sapiens, though some of its adherents like to pretend it does, even to themselves. It means sustaining human civilisation at the comfort level which the world\'s rich people â€“ us â€“ feel is their right, without destroying the \'natural capital\' or the \'resource base\' which is needed to do so.\r\n\r\nIt is, in other words, an entirely human-centred piece of politicking, disguised as concern for \'the planet\'. In a very short time â€“ just over a decade â€“ this worldview has become all-pervasive. It is voiced by the President of the USA and the President of Anglo-Dutch Shell and many people in-between. The success of environmentalism has been total â€“ at the price of its soul.\r\n\r\nLet me offer up just one example of how this pact has worked. If \'sustainability\' is about anything, it is about carbon. Carbon and climate change. To listen to most environmentalists today, you would think that these were the only things in the word worth talking about. The business of \'sustainability\' is the business of preventing carbon emissions. Carbon emissions threaten a potentially massive downgrading of our prospects for material advancement as a species. They threaten to unacceptably erode our resource base and put at risk our vital hoards of natural capital. If we cannot sort this out quickly, we are going to end up darning our socks again and growing our own carrots and holidaying in Weston-super-Mare and other such unthinkable things. All of the horrors our grandparents left behind will return like deathless legends. Carbon emissions must be \'tackled\' like a drunk with a broken bottle: quickly, and with maximum force.\r\n\r\nDon\'t get me wrong: I don\'t doubt the potency of climate change to undermine the human machine. It looks to me as if it is already beginning to do so, and that it is too late to do anything but attempt to mitigate the worst effects. But what I am also convinced of is that the fear of losing both the comfort and the meaning that our civilisation gifts us has gone to the heads of environmentalists to such a degree that they have forgotten everything else. The carbon must be stopped, like the Umayyad at Tours, or all will be lost.\r\n\r\nThis reductive approach to the human-environmental challenge leads to an obvious conclusion: if carbon is the problem, then \'zero-carbon\' is the solution. Society needs to go about its business without spewing the stuff out. It needs to do this quickly, and by any means necessary. Build enough of the right kind of energy technologies, quickly enough, to generate the power we \'need\' without producing greenhouse gases and there will be no need to ever turn the lights off; no need to ever slow down.\r\n\r\nTo do this will require the large-scale harvesting of the planet\'s ambient energy: sunlight, wind, water power. This means that vast new conglomerations of human industry are going to appear in places where this energy is most abundant. Unfortunately, these places coincide with some of the world\'s wildest, most beautiful and most untouched landscapes. The sort of places which environmentalism came into being to protect.\r\n\r\nAnd so the deserts, perhaps the landscape always most resistant to permanent human conquest, are to be colonised by vast \'solar arrays\', glass and steel and aluminium, the size of small countries. The mountains and moors, the wild uplands, are to be staked out like vampires in the sun, their chests pierced with rows of 500 foot wind turbines and associated access roads, masts, pylons and wires. The open oceans, already swimming in our plastic refuse and emptying of marine life, will be home to enormous offshore turbine ranges and hundreds of wave machines strung around the coastlines like Victorian necklaces. The rivers are to see their estuaries severed and silted by industrial barrages. The croplands and even the rainforests, the richest habitats on this terrestrial Earth, are already highly profitable sites for biofuel plantations designed to provide guilt free car fuel to the motion-hungry masses of Europe and America.\r\n\r\nWhat this adds up to should be clear enough, yet many people who should know better choose not to see it. This is business-as-usual: the expansive, colonising, progressive human narrative, shorn only of the carbon. It is the latest phase of our careless, self-absorbed, ambition-addled destruction of the wild, the unpolluted and the non-human. It is the mass destruction of the world\'s remaining wild places in order to feed the human economy. And without any sense of irony, people are calling this \'environmentalism\'.\r\n\r\nA while back I wrote an article in a newspaper highlighting the impact of industrial wind power stations (which are usually referred to, in a nice Orwellian touch, as wind \'farms\') on the uplands of Britain. I was emailed the next day by an environmentalist friend who told me he hoped I was feeling ashamed of myself. I was wrong; worse, I was dangerous. What was I doing giving succour to the fossil fuel industry? Didn\'t I know that climate change would do far more damage to upland landscapes than turbines? Didn\'t I know that this was the only way to meet our urgent carbon targets? Didn\'t I see how beautiful turbines were? So much more beautiful than nuclear power stations. I might think that a \'view\' was more important than the future of the entire world, but this was because I was a middle class escapist who needed to get real.\r\n\r\nIt became apparent at that point that what I saw as the next phase of the human attack on the non-human world, a lot of my environmentalist friends saw as \'progressive\', \'sustainable\' and \'green\'. What I called destruction they called \'large scale solutions\'. This stuff was realistic, necessarily urgent. It went with the grain of human nature and the market, which as we now know are the same thing. We didn\'t have time to \'romanticise\' the woods and the hills. There were emissions to reduce, and the end justified the means.\r\n\r\nIt took me a while to realise where this kind of talk took me back to: the maze and the moonlit hilltop. This desperate scrabble for \'sustainable development\' â€“ in reality it was the same old same old. People I had thought were on my side were arguing aggressively for the industrialising of wild places in the name of human desire. This was the same rootless, distant destruction that had led me to the top of Twyford Down. Only now there seemed to be some kind of crude equation at work that allowed them to believe this was something entirely different. Motorway through downland: bad. Wind power station on downland: good. Container port wiping out estuary mudflats: bad. Renewable hydro-power barrage wiping out estuary mudflats: good. Destruction minus carbon equals sustainability.\r\n\r\nSo here I was again: a Luddite, a Nimby, a reactionary, a romantic; standing in the way of progress. I realised that I was dealing with environmentalists with no attachment to any actual environment. Their talk was of parts per million of carbon, peer reviewed papers, sustainable technologies, renewable supergrids, green growth and the fifteenth conference of the parties. There were campaigns about \'the planet\' and \'the Earth\', but there was no specificity: no sign of any real, felt attachment to any small part of that Earth.\r\n\r\n<r:snippet name=\"division\" />\r\n\r\nBack at university, in love with my newfound radicalism, as students tend to be, I started to read things. Not the stuff I was supposed to be reading about Lollards and Wycliffe and pre-reformation Europe, but green political thought: wild ideas I had never come across before. I could literally feel my mind levering itself open. Most exciting to me were the implications of a new word I stumbled across: ecocentrism. This word crystallised everything I had been feeling for years. I had no idea there were words for it or that other people felt it too, or had written intimidating books about it. The nearest I had come to such a realisation thus far was reading Wordsworth in the sixth form and feeling an excited tingling sensation as I began to understand what he was getting at amongst all those poems about shepherds and girls called Lucy. Here was a kindred spirit! Here was a man moved to love and fear by mountains, who believed rocks had souls, that \'Nature never did betray the heart that loved her\' (though even then that sounded a little optimistic to me). Pantheism was my new word that year.\r\n\r\nNow I declared, to myself if no one else, that I was \'ecocentric\' too. This was not the same as being egocentric, though some disagreed, and though it sounded a bit too much like \'eccentric\' this was also a distraction. I was ecocentric because I did not believe â€“ had never believed, I didn\'t think â€“ that humans were the centre of the world, that the Earth was their playground, that they had the right to do what they liked or even that what they did was that important. I thought we were part of something bigger, which had as much to right to the world as we did and which we were stomping on for our own benefit. I had always been haunted by shameful thoughts like this. It had always seemed to me that the beauty to be found on the trunk of a birch tree was worth any number of Mona Lisas, and that a Saturday night sunset was better than Saturday night telly. It had always seemed that most of what mattered to me could not be counted or corralled by the kind of people who thought, and still think, that I just needed to grow up.\r\n\r\nIt had been made clear to me for a long time that these feelings were at best charmingly naÃ¯ve and at worst backwards and dangerous. Later, the dismissals became encrusted with familiar words, designed to keep the ship of human destiny afloat: Romantic, Luddite, nimby and the like. For now, though, I had found my place. I was a young, fiery, radical, ecocentric environmentalist and I was going to save the world.\r\n\r\nWhen I look back on the road protests of the mid-1990s, which I often do, it is with nostalgia and fondness and a sense of gratitude that I was able to be there, to see whatI saw and do what I did. But I realise now that it is more than this that makes me think and talk and write about Twyford Down and Newbury and Solsbury Hill to an extent which bores even my patient friends. This, I think, was the last time I was part of an environmental movement that was genuinely environmental. The people involved were, like me, ecocentric: they didn\'t see \'the environment\' as something \'out there\'; separate from people, to be utilised or destroyed or protected according to human whim. They saw themselves as part of it, within it, of it.\r\n\r\nThere was a Wordsworthian feel to the whole thing: the defence of the trees simply because they were trees. Living under the stars and in the rain, in the oaks and in the chaotic, miraculous tunnels beneath them, in the soil itself like the rabbits and the badgers. We were connected to a place; a real place that we loved and had made a choice to belong to, if only for a short time. There was little theory, much action but even more simple being. Being in a place, knowing it, standing up for it. It was environmentalism at its rawest, and the people who came to be part of it were those who loved the land, in their hearts as well as their heads.\r\n\r\nIn years to come, this was worn away. It took a while before I started to notice what was happening, but when I did it was all around me. The ecocentrism â€“ in simple language, the love of place, the humility, the sense of belonging, the feelings â€“ was absent from most of the \'environmentalist\' talk I heard around me. Replacing it were two other kinds of talk. One was the save-the-world-with-windfarms narrative; the same old face in new makeup. The other was a distant, sombre sound: the marching boots and rattling swords of an approaching fifth column.\r\n\r\nEnvironmentalism, which in its raw, early form had no time for the encrusted, seized-up politics of left and right, offering instead a worldview which saw the growth economy and the industrialist mentality beloved by both as the problem in itself, was being sucked into the yawning, bottomless chasm of the \'progressive\' left. Suddenly people like me, talking about birch trees and hilltops and sunsets, were politely, or less politely, elbowed to one side by people who were bringing a \'class analysis\' to green politics.\r\n\r\nAll this talk of nature, it turned out, was bourgeois, Western and unproductive. It was a middle class conceit, and there was nothing worse than a middle class conceit. The workers had no time for thoughts like this (though no one bothered to notify the workers themselves that they were simply clodhopping, nature-loathing cannon fodder in a political flame war). It was terribly, objectively right wing. Hitler liked nature after all. He was a vegetarian too. It was all deeply \'problematic\'.\r\n\r\nMore problematic for me was what this kind of talk represented. With the near global failure of the left wing project over the past few decades, green politics was fast becoming a refuge for disillusioned socialists, Trots, Marxists and a ragbag of fellow travellers who could no longer believe in communism or the Labour party or even George Galloway, and who saw in green politics a promising bolthole. In they all trooped, with their Stop The War banners and their Palestinian solidarity scarves, and with them they brought a new sensibility.\r\n\r\nNow it seemed that environmentalism was not about wildness or ecocentrism or the other-than-human world and our relationship to it. Instead it was about (human) social justice and (human) equality and (human) progress and ensuring that all these things could be realised without degrading the (human) resource base which we used to call nature back when we were being naÃ¯ve and problematic. Suddenly, never-ending economic growth was a good thing after all: the poor needed it to get rich, which was their right. To square the circle, for those who still realised there was a circle, we were told that \'(human) social justice and environmental justice go hand in hand\' â€“ a suggestion of such bizarre inaccuracy that it could surely only be wishful thinking.\r\n\r\nSuddenly, sustaining a global human population of ten billion people was not a problem at all, and anyone who suggested otherwise was not highlighting any obvious ecological crunch points but was giving succour to fascism or racism or gender discrimination or orientalism or essentialism or some other such hip and largely unexamined concept. The \'real issue\', it seemed, was not the human relationship with the non-human world; it was fat cats and bankers and cap\'lism. These things must be destroyed, by way of marches, protests and votes for fringe political parties, to make way for something known as \'eco socialism\': a conflation of concepts that pretty much guarantees the instant hostility of 95% of the population.\r\n\r\nI didn\'t object to this because I thought that environmentalism should occupy the right rather than the left wing, or because I was right-wing myself, which I wasn\'t (these days I tend to consider the entire bird with a kind of frustrated detachment). And I understood that there was at least a partial reason for the success of this colonisation of the greens by the reds. Modern environmentalism sprung partly from the early twentieth century conservation movement, and that movement had often been about preserving supposedly pristine landscapes at the expense of people. Forcing tribal people from their ancestral lands which had been newly designated as national parks, for example, in order to create a fictional \'untouched nature\' had once been fairly common, from Africa to the USA. And actually, Hitler had been something of an environmentalist, and the wellsprings which nourished some green thought nourished the thought of some other unsavoury characters too (a fact which some ideologues love to point to when witch-hunting the greens, as if it wouldn\'t be just as easy to point out that ideas of equality and justice fuelled Stalin and Pol Pot).\r\n\r\nIn this context it was fair enough to make it clear that environmentalism allied itself with ideas of justice and decency, and that it was about people as well as everything else on the planet. Of course it was, for \'nature\' as something separate from people has never existed. We are nature, and the environmentalist project was always supposed to be about how we are to be part of it, to live well as part of it, to understand and respect it, to understand our place within it and to feel it as part of ourselves.\r\n\r\nSo there was a reason for environmentalism\'s shift to the left, just as there was a reason for its blinding obsession with carbon. Meanwhile, the fact of what humans are doing to the world had become so obvious, even to those who were doing very well out of it, that it became hard not to listen to the greens. Success duly arrived. You can\'t open a newspaper now or visit a corporate website or listen to a politician or read the label on a packet of biscuits without being bombarded with propaganda about the importance of \'saving the planet\'. But there is a terrible hollowness to it all; a sense that society is going through the motions without understanding why. The shift, the pact, has come at a probably fatal price.\r\n\r\nNow that price is being paid. The weird and unintentional pincer movement of the failed left, with its class analysis of waterfalls and fresh air, and the managerial, carbon-uber-alles brigade has infiltrated, ironed out and reworked environmentalism for its own ends. Now it is not about the ridiculous beauty of coral, the mist over the fields at dawn. It is not about ecocentrism. It is not about reforging a connection between over-civilised people and the world outside their windows. It is not about living close to the land or valuing the world for the sake of the world. It is not about attacking the self-absorbed conceits of the bubble that our civilisation has become.\r\n\r\nToday\'s environmentalism is about people. It is a consolation prize for a gaggle of washed-up Trots and at the same time, with an amusing irony, it is an adjunct to hyper-capitalism; the catalytic converter on the silver SUV of the global economy. It is an engineering challenge; a problem-solving device for people to whom the sight of a wild Pennine hilltop on a clear winter day brings not feelings of transcendence but thoughts about the wasted potential for renewable energy. It is about saving civilisation from the results of its own actions; a desperate attempt to prevent Gaia from hiccupping and wiping out our coffee shops and broadband connections. It is our last hope.\r\n\r\n<r:snippet name=\"division\" />\r\n\r\nI generalise, of course. Environmentalism\'s chancel is as accommodating as that of socialism, anarchism or conservatism, and just as capable of generating poisonous internal bickering that will last until the death of the sun. Many who call themselves green have little time for the mainstream line I am attacking here. But it is the mainstream line. It is how most people see environmentalism today, even if it is not how all environmentalists intend it to be seen. These are the arguments and the positions that popular environmentalism â€“ now a global force â€“ offers up in its quest for redemption. There are reasons; there are always reasons. But whatever they are, they have led the greens down a dark, litter-strewn dead end street, where the bins overflow, the lightbulbs have blown and the stray dogs are very hungry indeed.\r\n\r\nWhat is to be done about this? Probably nothing. It was perhaps inevitable that a utilitarian society would generate a utilitarian environmentalism, and inevitable too that the greens would not be able to last for long outside the established political bunkers. But for me, now â€“ well, this is no longer mine, that\'s all. I can\'t make my peace with people who cannibalise the land in the name of saving it. I can\'t speak the language of science without a corresponding poetry. I can\'t speak with a straight face about saving the planet when what I really mean is saving myself from what is coming.\r\n\r\nLike all of us, I am a footsoldier of empire. It is the empire of Homo sapiens sapiens and it stretches from Tasmania to Baffin Island. Like all empires it is built on expropriation and exploitation, and like all empires it dresses these things up in the language of morality and duty. When we turn wilderness over to agriculture we speak of our duty to feed the poor. When we industrialise the wild places we speak of our duty to stop the climate from changing. When we spear whales we speak of our duty to science. When we raze forests we speak of our duty to develop. We alter the atmospheric makeup of the entire world: half of us pretends it\'s not happening, the other half immediately starts looking for new machines that will reverse it. This is how empires work, particularly when they have started to decay. Denial, displacement, anger, fear.\r\n\r\nThe environment is the victim of this empire. But \'the environment\' â€“ that distancing word, that empty concept â€“ does not exist. It is the air, the waters, the creatures we make homeless or lifeless in flocks and legions, and it is us too. We are it; we are in it and of it, we make it and live it, we are fruit and soil and tree, and the things done to the roots and the leaves come back to us. We make ourselves slaves to make ourselves free, and when the shackles start to rub we confidently predict the emergence of new, more comfortable designs.\r\n\r\nI don\'t have any answers, if by answers we mean political systems, better machines, means of engineering some grand shift in consciousness. All I have is a personal conviction built on those feelings, those responses, that goes back to the moors of northern England and the rivers of southern Borneo â€“ that something big is being missed. That we are both hollow men and stuffed men, and that we will keep stuffing ourselves until the food runs out and if outside the dining room door we have made a wasteland and called it necessity, then at least we will know we were not to blame, because we are never to blame, because we are the humans.\r\n\r\nWhat am I to do with feelings like these? Useless feelings in a world in which everything must be made useful. Sensibilities in a world of utility. Feelings like this provide no \'solutions\'. They build no new eco-homes, remove no carbon from the atmosphere. This is head-in-the-clouds stuff, as relevant to our busy, modern lives as the new moon or the date of Lughnasadh. Easy to ignore, easy to dismiss, like the places that inspire the feelings, like the world outside the bubble, like the people who have seen it, if only in brief flashes beyond the ridge of some dark line of hills.\r\n\r\nBut this is fine; the dismissal, the platitudes, the brusque moving-on of the grown-ups. It\'s all fine. I withdraw, you see. I withdraw from the campaigning and the marching, I withdraw from the arguing and the talked-up necessity and all of the false assumptions. I withdraw from the words. I am leaving. I am going to go out walking.\r\n\r\nI am leaving on a pilgrimage to find what I left behind in the jungles and by the cold campfires and in the parts of my head and my heart that I have been skirting around because I have been busy fragmenting the world in order to save it; busy believing it is mine to save. I am going to listen to the wind and see what it tells me, or whether it tells me anything at all. You see, it turns out that I have more time than I thought. I will follow the songlines and see what they sing to me and maybe, one day, I might even come back. And if I am very lucky I might bring with me a harvest of fresh tales which I can scatter like apple seeds across this tired and angry continent.\r\n',29),
	(70,'subtitle','','A personal account of a journey through environmental politics',29),
	(71,'precis','Textile','These experiences made me what I would later learn to call an \'environmentalist\': something which seemed rebellious and excitingly outsiderish when I first took it up (and which successfully horrified my social climbing father â€“ especially as it was partly his fault) but which these days is almost de rigeur amongst the British bourgeoisie. Early in my adult life, just after I came back from Twyford Down, I vowed, self-importantly, that this would be my life\'s work: saving nature from people. Preventing the destruction of beauty and brilliance, speaking up for the small and the overlooked and the things that could not speak for themselves. When I look back on this now, I\'m quite touched by my younger self.\r\n',29),
	(72,'quote','','',29),
	(73,'publication','','Dark Mountain, May 2010  ',29);

/*!40000 ALTER TABLE `page_parts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `breadcrumb` varchar(160) DEFAULT NULL,
  `class_name` varchar(25) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `layout_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `virtual` tinyint(1) NOT NULL DEFAULT '0',
  `lock_version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pages_class_name` (`class_name`),
  KEY `pages_parent_id` (`parent_id`),
  KEY `pages_child_slug` (`slug`,`parent_id`),
  KEY `pages_published` (`virtual`,`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`,`title`,`slug`,`breadcrumb`,`class_name`,`status_id`,`parent_id`,`layout_id`,`created_at`,`updated_at`,`published_at`,`created_by_id`,`updated_by_id`,`virtual`,`lock_version`)
VALUES
	(1,'Home Page','/','Home','',100,NULL,2,'2008-12-24 01:08:45','2011-03-29 15:10:14','2008-12-23 00:00:00',1,1,0,80),
	(2,'File Not Found','file-not-found','File Not Found','FileNotFoundPage',100,1,NULL,'2008-12-24 01:08:45','2008-12-24 01:08:45','2008-12-23 18:08:45',1,NULL,1,0),
	(3,'RSS Feed','rss','RSS Feed',NULL,100,1,3,'2008-12-24 01:08:45','2008-12-24 01:08:45','2008-12-23 18:08:45',1,NULL,0,0),
	(4,'Journalism','journalism','Journalism','',100,1,3,'2008-12-24 01:08:45','2011-03-30 07:44:07','2008-12-23 00:00:00',1,1,0,21),
	(6,'An untutored townsman\'s invasion of the country  ','an-untutored-townsmans-invasion-of-the-country','An untutored townsman\'s invasion of the country  ','',100,4,1,'2008-12-24 01:08:45','2011-03-30 08:03:55','2006-06-10 00:00:00',1,1,0,10),
	(9,'Will the real England please stand up?','test','Will the real England please stand up?','',100,4,1,'2008-12-24 01:08:45','2011-03-29 15:51:48','2008-12-23 00:00:00',1,1,0,11),
	(10,'%B %Y Archives','monthly-archives','Monthly Archives','ArchiveMonthIndexPage',100,4,NULL,'2008-12-24 01:08:45','2009-01-02 07:29:46','2008-12-23 18:08:45',1,NULL,1,9),
	(15,'css','css','css','StylesheetPage',100,1,NULL,'2011-03-16 08:27:05','2011-03-16 08:27:05','2011-03-16 08:27:05',NULL,NULL,1,0),
	(16,'pk.css','pk.css','pk.css','StylesheetPage',100,15,NULL,'2011-03-16 08:27:51','2011-03-30 08:29:23','2011-03-30 08:29:23',1,1,1,146),
	(17,'email.css','email.css','email.css','StylesheetPage',100,15,NULL,'2011-03-16 08:28:06','2011-03-16 08:28:06','2011-03-16 08:28:06',1,NULL,1,0),
	(18,'ie.css','ie.css','ie.css','StylesheetPage',100,15,NULL,'2011-03-16 08:28:18','2011-03-16 08:28:18','2011-03-16 08:28:18',1,NULL,1,0),
	(19,'js','js','js','JavascriptPage',100,1,NULL,'2011-03-16 08:29:10','2011-03-16 08:29:10','2011-03-16 08:29:10',NULL,NULL,1,0),
	(20,'pk.js','pk.js','pk.js','JavascriptPage',100,19,NULL,'2011-03-16 08:30:08','2011-03-16 08:30:08','2011-03-16 08:30:08',1,NULL,1,0),
	(21,'Books','books','Books','',100,1,NULL,'2011-03-17 11:54:03','2011-03-17 11:54:03','2011-03-17 11:54:03',1,NULL,0,0),
	(22,'Real England','real-england','Real England','',100,21,NULL,'2011-03-17 11:54:59','2011-03-17 12:04:16','2011-03-17 00:00:00',1,1,0,2),
	(24,'google.js','google.js','google.js','JavascriptPage',100,19,NULL,'2011-03-28 08:56:40','2011-03-28 08:56:40','2011-03-28 08:56:40',1,NULL,1,0),
	(25,'Kidland','kidland','Kidland','',100,21,NULL,'2011-03-29 16:33:46','2011-03-30 08:27:33','2011-03-30 00:00:00',1,1,0,2),
	(26,'One No, Many Yeses','one-no-many-yeses','One No, Many Yeses','',100,21,NULL,'2011-03-29 16:43:24','2011-03-29 16:44:54','2011-03-29 00:00:00',1,1,0,1),
	(27,'Progress and the land','progress-and-the-land','Progress and the land','',100,4,1,'2011-03-30 08:01:51','2011-03-30 08:03:48','2011-03-30 00:00:00',1,1,0,1),
	(28,'Dark Mountain 1','dark-mountain-1','Dark Mountain 1','',100,21,1,'2011-03-30 08:05:46','2011-03-30 08:27:49','2011-03-29 00:00:00',1,1,0,2),
	(29,'Confessions of a recovering environmentalist','confessions-of-a-recovering-environmentalist','Confessions of a recovering environmentalist','',100,4,NULL,'2011-03-30 08:09:48','2011-03-30 08:13:50','2011-03-30 00:00:00',1,1,0,1);

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reader_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `forum_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `body` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_posts_on_site_id` (`site_id`),
  KEY `index_posts_on_forum_id` (`forum_id`,`created_at`),
  KEY `index_posts_on_reader_id` (`reader_id`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`)
VALUES
	('1'),
	('10'),
	('11'),
	('12'),
	('13'),
	('14'),
	('15'),
	('16'),
	('17'),
	('18'),
	('19'),
	('2'),
	('20'),
	('20081203140407'),
	('20090226140109'),
	('20090929164633'),
	('20091003095744'),
	('20100805154952'),
	('20100805155020'),
	('20100810151922'),
	('21'),
	('3'),
	('4'),
	('5'),
	('6'),
	('7'),
	('8'),
	('9'),
	('Event Calendar-1'),
	('Event Calendar-10'),
	('Event Calendar-11'),
	('Event Calendar-2'),
	('Event Calendar-20090818133511'),
	('Event Calendar-20090819130919'),
	('Event Calendar-20090820073805'),
	('Event Calendar-20091118100725'),
	('Event Calendar-20100216080944'),
	('Event Calendar-20100218131410'),
	('Event Calendar-20100219102227'),
	('Event Calendar-20100221180539'),
	('Event Calendar-20100222182112'),
	('Event Calendar-20100927140126'),
	('Event Calendar-20100927203940'),
	('Event Calendar-3'),
	('Event Calendar-4'),
	('Event Calendar-5'),
	('Event Calendar-6'),
	('Event Calendar-7'),
	('Event Calendar-8'),
	('Event Calendar-9'),
	('Event Map-20100311101802'),
	('Event Map-20100311105231'),
	('Library-20091030115120'),
	('Paperclipped Uploader-20090723075401'),
	('Paperclipped-1'),
	('Paperclipped-2'),
	('Paperclipped-20090316132151'),
	('Paperclipped-20091211094510'),
	('Paperclipped-20100327111216'),
	('Paperclipped-3'),
	('Paperclipped-4'),
	('Paperclipped-5'),
	('Paperclipped-6'),
	('Paperclipped-7'),
	('Taggable Events-20100301074622'),
	('Taggable-1'),
	('Taggable-2'),
	('Taggable-20110316210834');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) DEFAULT NULL,
  `data` text,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table snippets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `snippets`;

CREATE TABLE `snippets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `filter_id` varchar(25) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `lock_version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

LOCK TABLES `snippets` WRITE;
/*!40000 ALTER TABLE `snippets` DISABLE KEYS */;
INSERT INTO `snippets` (`id`,`name`,`filter_id`,`content`,`created_at`,`updated_at`,`created_by_id`,`updated_by_id`,`lock_version`)
VALUES
	(1,'pagetitle','','<div id=\"title\">\r\n  <h1 class=\"pagetitle\"><r:title /></h1>\r\n  <p class=\"subtitle\"><r:content part=\"subtitle\" /></p>\r\n</div>','2008-12-24 01:08:44','2011-03-28 08:42:32',1,1,11),
	(2,'foot','','  </body>\r\n</html>','2008-12-24 01:08:44','2011-03-28 15:45:17',1,1,8),
	(3,'navigation','','<div id=\"nav_holder\"><div id=\"navigation\">\r\n  <ul>\r\n    <li><a href=\"/\">Home</a></li>\r\n    <r:navigation paths=\"Me: /paul | Books: /books | Journalism: /journalism | Poetry: /poetry | Blog: /blog | Events: /calendar | On writing: /writing | Mailing list: /list | Dark Mountain: /dm | Scything : /scything \">\r\n      <r:normal><li><a href=\"<r:path />\"><r:title /></a></li></r:normal>\r\n      <r:selected><li><a href=\"<r:path />\" class=\"selected\"><r:title /> <span class=\"ornament\">&#61523;</span></a></li></r:selected>\r\n    </r:navigation>\r\n  </ul>    \r\n</div></div>','2008-12-30 21:38:09','2011-03-30 07:42:48',1,1,18),
	(4,'introduction','','<r:if_content part=\"introduction\">\r\n  <div id=\"standfirst\"><r:content part=\"introduction\" /></div>\r\n</r:if_content>\r\n','2008-12-31 01:08:12','2011-03-16 08:03:29',1,1,20),
	(5,'pagetags','','<div id=\"tagging\">\r\n  <ul>\r\n    <r:if_content part=\"publication\" inherit=\"false\">\r\n      <li class=\"published\"><r:content part=\"publication\" /></li>\r\n    </r:if_content>\r\n    <r:descriptive_tags:each_tag>\r\n      <li><r:tag:link linkto=\"/tags\"><span class=\"ornament\">&#61554;</span> <r:tag:name /></r:tag:link></li>\r\n    </r:descriptive_tags:each_tag>\r\n  </ul>\r\n\r\n  <r:structural_tags:each_tag>\r\n    <r:tag:page><r:snippet name=\"pullbox\" /></r:tag:page>\r\n  </r:structural_tags:each_tag>\r\n</div>','2008-12-31 07:04:11','2011-03-17 12:36:49',1,1,24),
	(6,'articles','','<r:find url=\"/news\">\n  <r:children:each order=\"desc\" limit=\"3\">\n  <div class=\"entry\">\n    <h3><r:link /></h3>\n    <div class=\"posted\">\n      Posted by <r:author /> on <r:date format=\"%B %d, %Y\" /><em>|</em><img src=\"http://spurrd.com/assets/123/comment.png\" /><a href=\"<r:url />#disqus_thread\">Comments</a><em>|</em><r:link>Read full article</r:link>    \n    </div>\n    <r:content part=\"summary\" />\n  </div>\n  </r:children:each>\n</r:find>\n\n<r:snippet name=\"comments_summary\" />','2009-01-01 22:40:23','2009-01-02 07:19:28',1,NULL,19),
	(7,'sitemap','',' <r:children:each by=\"title\" order=\"asc\">\r\n   <r:unless_content part=\"no-map\">\r\n     <li>\r\n       <r:link />\r\n       <r:if_children>\r\n         <ul class=\"second\">\r\n           <r:snippet name=\"sitemap\" />\r\n         </ul>\r\n       </r:if_children>\r\n     </li>\r\n   </r:unless_content>\r\n </r:children:each>\r\n\r\n','2009-01-01 23:51:52','2009-01-02 00:45:01',1,NULL,14),
	(8,'comments','','<img src=\"http://spurrd.com/assets/126/comments.jpg\" />\n\n<div id=\"disqus_thread\"></div><r:comment><script type=\"text/javascript\" src=\"http://disqus.com/forums/radiant/embed.js\"></script><noscript><a href=\"http://radiant.disqus.com/?url=ref\">View the discussion thread.</a></noscript></r:comment><a href=\"http://disqus.com\" class=\"dsq-brlink\">blog comments powered by <span class=\"logo-disqus\">Disqus</span></a>','2009-01-02 02:17:21','2009-01-02 07:20:55',1,NULL,3),
	(9,'comments_summary','','ï»¿ï»¿ï»¿ï»¿<script type=\"text/javascript\">\r\n//<![CDATA[\r\n(function() {\r\n		var links = document.getElementsByTagName(\'a\');\r\n		var query = \'?\';\r\n		for(var i = 0; i < links.length; i++) {\r\n			if(links[i].href.indexOf(\'#disqus_thread\') >= 0) {\r\n				query += \'url\' + i + \'=\' + encodeURIComponent(links[i].href) + \'&\';\r\n			}\r\n		}\r\n		document.write(\'<script type=\"text/javascript\" src=\"http://disqus.com/forums/radiant/get_num_replies.js\' + query + \'\"></\' + \'script>\');\r\n	})();\r\n//]]>\r\n</script>\r\n\r\n','2009-01-02 02:18:23','2009-01-02 02:59:44',1,NULL,4),
	(10,'pagefooter','','<div id=\"footer\">\r\n  <h2><a href=\"/\">Paul Kingsnorth <span class=\"ornament\">&#61523;</span></a></h2>\r\n  <div id=\"contents\">\r\n    <ul>\r\n      <li class=\"section\"><a href=\"#\">Books</a></li>\r\n      <li><a href=\"#\">Real England</a></li>\r\n      <li><a href=\"#\">One No, Many Yeses</a></li>\r\n      <li><a href=\"#\">Dark Mountain 1</a></li>\r\n    </ul>\r\n    <ul>\r\n      <li class=\"section\"><a href=\"#\">Journalism</a></li>\r\n      <li><a href=\"#\">Features &amp; Reports</a></li>\r\n      <li><a href=\"#\">Comment &amp; Opinion</a></li>\r\n      <li><a href=\"#\">Reviews</a></li>\r\n    </ul>\r\n    <ul>\r\n      <li class=\"section\"><a href=\"#\">Poetry</a></li>\r\n      <li><a href=\"#\">Kidland</a></li>\r\n      <li><a href=\"#\">Older poems</a></li>\r\n    </ul>\r\n    <ul>\r\n      <li class=\"section\"><a href=\"#\">More</a></li>\r\n      <li><a href=\"#\">About &amp; contact</a></li>\r\n      <li><a href=\"#\">Blog</a></li>\r\n      <li><a href=\"#\">On writing</a></li>\r\n      <li><a href=\"#\">On scything</a></li>\r\n    </ul>\r\n  </div>\r\n</div>\r\n\r\n\r\n<div id=\"colophon\">\r\n  <p>\r\n    Set in <a href=\"#\">Prociono</a> and <a href=\"#\">Linden Hill Italic</a>, both by Barry Schwartz.<br />\r\n    Designed and built by <a href=\"http://spanner.org/\">spanner</a> on <a href=\"http://radiantcms.org/\">radiant</a>.\r\n  </p>\r\n</div>\r\n','2009-01-02 07:32:00','2011-03-28 15:51:21',1,1,11),
	(11,'related_page','','This is how we\'re going to highlight other (ie book) pages in the tag block. Tag has a page, page gets shown here.','2011-03-16 08:05:17','2011-03-16 08:05:31',1,1,1),
	(12,'head','','<!DOCTYPE html>\r\n\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\">\r\n  <head>\r\n    <title>Paul Kingsnorth: <r:title /></title>\r\n    <r:snippet name=\"stylesheets\" />\r\n    <script src=\"http://code.jquery.com/jquery-1.5.js\" type=\"text/javascript\"></script>\r\n  </head>\r\n  <body>\r\n','2011-03-16 08:07:10','2011-03-16 08:07:10',1,NULL,0),
	(13,'stylesheets','','<r:stylesheet slug=\"pk.css\" as=\"link\" media=\"all\" />\r\n<!--[if IE]><r:stylesheet slug=\"ie.css\" as=\"link\" /><![endif]-->\r\n<r:content part=\"head\" />\r\n','2011-03-16 08:08:04','2011-03-16 08:08:04',1,NULL,0),
	(14,'javascripts','','<script type=\"text/javascript\" src=\"/javascripts/pk.js\"></script>\r\n<r:javascript slug=\"google.js\" as=\"inline\" />','2011-03-16 08:08:52','2011-03-28 08:54:44',1,1,2),
	(15,'masthead','','<div id=\"masthead\">\r\n  <p><a href=\"/\">Paul Kingsnorth<span class=\"ornament\">&#61523;</span></a></p>\r\n</div>','2011-03-16 09:18:58','2011-03-17 10:13:19',1,1,3),
	(16,'pullbox','','<div class=\"pointer\">\r\n  <h3>\r\n    <r:link>\r\n      <r:assets:first><r:assets:image size=\"thumbnail\" /></r:assets:first>\r\n      <r:title />\r\n    </r:link>\r\n  </h3>\r\n  <div class=\"quote\"><r:content part=\"quote\" /></div>\r\n</div>','2011-03-17 12:27:51','2011-03-17 12:27:51',1,NULL,0),
	(17,'standfirst','','<r:if_content part=\"introduction\" inherit=\"false\">\r\n  <div id=\"standfirst\">\r\n    <r:content part=\"introduction\" inherit=\"false\" />\r\n  </div>\r\n</r:if_content>\r\n','2011-03-28 09:05:20','2011-03-28 09:33:58',1,1,1),
	(18,'books','','<div id=\"books\">\r\n  <r:find path=\"/books\">\r\n    <r:children:each by=\"published_at\" order=\"desc\">\r\n      <r:snippet name=\"pullbox\" />\r\n    </r:children:each>\r\n  </r:find>\r\n</div>','2011-03-29 15:04:38','2011-03-30 08:26:53',1,1,1),
	(19,'excerpt','','<div class=\"article\">\r\n  <h2>\r\n    <r:link><r:title /></r:link>\r\n  </h2>\r\n  <r:if_content part=\"subtitle\"><p class=\"subtitle\"><r:content part=\"subtitle\" /></p></r:if_content>\r\n  <r:if_content part=\"precis\"><r:content part=\"precis\" /></r:if_content>\r\n  <r:unless_content part=\"precis\"><r:content part=\"introduction\" /></r:unless_content>\r\n</div>','2011-03-29 15:08:33','2011-03-29 16:41:44',1,1,6),
	(20,'big_masthead','','<div id=\"masthead\">\r\n  <h1 class=\"pagetitle\">Paul Kingsnorth<span class=\"ornament\">&#61523;</span></h1>\r\n  <p class=\"subtitle\"><r:content part=\"subtitle\" /></p>\r\n</div>','2011-03-29 15:09:31','2011-03-29 15:58:42',1,1,1),
	(21,'division','','<div class=\"divider\">&#61521;</div>\r\n','2011-03-30 08:24:04','2011-03-30 08:24:04',1,NULL,0);

/*!40000 ALTER TABLE `snippets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table taggings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taggings`;

CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `tagged_type` varchar(255) DEFAULT NULL,
  `tagged_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_taggings_on_tag_id_and_tagged_id_and_tagged_type` (`tag_id`,`tagged_id`,`tagged_type`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` (`id`,`tag_id`,`tagged_type`,`tagged_id`)
VALUES
	(9,1,'Page',6),
	(1,1,'Page',9),
	(10,1,'Page',27),
	(15,1,'Page',29),
	(2,2,'Page',9),
	(11,2,'Page',27),
	(16,2,'Page',29),
	(3,3,'Page',9),
	(4,4,'Page',9),
	(12,4,'Page',27),
	(5,5,'Page',9),
	(7,6,'Page',6),
	(6,6,'Page',9),
	(14,6,'Page',27),
	(20,6,'Page',29),
	(8,9,'Page',6),
	(13,9,'Page',27),
	(18,10,'Page',29),
	(17,11,'Page',29),
	(19,12,'Page',29);

/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tags_on_title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`,`title`,`description`,`created_by_id`,`updated_by_id`,`created_at`,`updated_at`,`site_id`,`page_id`,`visible`)
VALUES
	(1,'Journalism','',1,1,'2011-03-16 15:48:01','2011-03-17 18:13:43',NULL,NULL,1),
	(2,'Features','',1,1,'2011-03-16 15:48:01','2011-03-17 18:14:01',NULL,NULL,1),
	(3,'Tradition',NULL,1,NULL,'2011-03-16 15:48:01','2011-03-16 15:48:01',NULL,NULL,1),
	(4,'Landedness',NULL,1,NULL,'2011-03-16 15:48:01','2011-03-16 15:48:01',NULL,NULL,1),
	(5,'Real England','',1,1,'2011-03-16 15:48:01','2011-03-17 11:55:55',NULL,22,1),
	(6,'frontpage',NULL,1,NULL,'2011-03-29 15:47:02','2011-03-29 15:47:02',NULL,NULL,0),
	(7,'Kidland',NULL,1,NULL,'2011-03-29 16:37:14','2011-03-29 16:37:14',NULL,25,1),
	(8,'onmy','',1,NULL,'2011-03-29 16:45:19','2011-03-29 16:45:19',NULL,26,1),
	(9,'ruralism','',1,1,'2011-03-29 21:26:07','2011-03-30 08:06:28',NULL,NULL,1),
	(10,'Dark Mountain','',1,NULL,'2011-03-30 08:06:10','2011-03-30 08:06:10',NULL,28,1),
	(11,'memoir',NULL,1,NULL,'2011-03-30 08:09:48','2011-03-30 08:09:48',NULL,NULL,NULL),
	(12,'greenery',NULL,1,NULL,'2011-03-30 08:09:48','2011-03-30 08:09:48',NULL,NULL,NULL);

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table topics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `topics`;

CREATE TABLE `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `reader_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `replied_at` datetime DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  `sticky` tinyint(1) DEFAULT '0',
  `posts_count` int(11) DEFAULT '0',
  `first_post_id` int(11) DEFAULT NULL,
  `last_post_id` int(11) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `replied_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_topics_on_site_id` (`site_id`),
  KEY `index_topics_on_forum_id` (`forum_id`),
  KEY `index_topics_on_sticky_and_replied_at` (`forum_id`,`sticky`,`replied_at`),
  KEY `index_topics_on_forum_id_and_replied_at` (`forum_id`,`replied_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `login` varchar(40) NOT NULL DEFAULT '',
  `password` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `designer` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text,
  `lock_version` int(11) DEFAULT '0',
  `salt` varchar(255) DEFAULT NULL,
  `session_token` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`name`,`email`,`login`,`password`,`created_at`,`updated_at`,`created_by_id`,`updated_by_id`,`admin`,`designer`,`notes`,`lock_version`,`salt`,`session_token`,`locale`)
VALUES
	(1,'will',NULL,'will','57f0c7720bbbf85fc08c0332e2cea740dc2098f3','2011-03-15 17:03:56','2011-03-15 17:32:02',NULL,NULL,1,0,NULL,1,'ed0398772265d70d4bf80923d26dba484a806449','f3ad2270c22cdcee112b9441345ed340ab8b806f',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
