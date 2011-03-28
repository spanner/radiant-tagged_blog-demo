# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: localhost (MySQL 5.1.42)
# Database: tb_development
# Generation Time: 2011-03-28 10:58:58 +0100
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` (`id`,`caption`,`title`,`asset_file_name`,`asset_content_type`,`asset_file_size`,`created_by_id`,`updated_by_id`,`created_at`,`updated_at`,`original_width`,`original_height`,`original_extension`,`site_id`,`upload_token`,`furniture`)
VALUES
	(1,NULL,'real_england','real_england.jpg','image/jpeg',42900,1,NULL,'2011-03-17 12:03:55','2011-03-17 12:03:55',NULL,NULL,NULL,NULL,NULL,0);

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
	(1,'Document','<r:snippet name=\"head\" />\r\n\r\n<div id=\"mastheadholder\">\r\n  <r:snippet name=\"masthead\" />\r\n  <r:snippet name=\"pagetitle\" />\r\n</div>\r\n<div id=\"pageholder\">\r\n  <r:snippet name=\"navigation\" />\r\n  <div id=\"page\">\r\n    <r:snippet name=\"standfirst\" />\r\n    <r:snippet name=\"pagetags\" />\r\n    <r:content />\r\n    <r:snippet name=\"pagefooter\" />\r\n  </div>\r\n  <r:snippet name=\"javascripts\" />\r\n</div>\r\n\r\n<r:snippet name=\"foot\" />','2008-12-24 01:08:45','2011-03-28 09:04:16',1,1,'',43);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `page_attachments` WRITE;
/*!40000 ALTER TABLE `page_attachments` DISABLE KEYS */;
INSERT INTO `page_attachments` (`id`,`asset_id`,`page_id`,`position`)
VALUES
	(1,1,22,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

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
	(10,5,'Description',''),
	(9,5,'Keywords',''),
	(12,6,'Description',''),
	(11,6,'Keywords',''),
	(16,8,'Description',''),
	(15,8,'Keywords',''),
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

LOCK TABLES `page_parts` WRITE;
/*!40000 ALTER TABLE `page_parts` DISABLE KEYS */;
INSERT INTO `page_parts` (`id`,`name`,`filter_id`,`content`,`page_id`)
VALUES
	(1,'body','','hm. body.',1),
	(2,'body','Textile','The file you were looking for could not be found.\n\nAttempted URL: @<r:attempted_url />@\n\nIt is possible that you typed the URL incorrectly or that you clicked on a bad link.\n\n\"<< Back to Home Page\":/\n',2),
	(3,'body','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<rss version=\"2.0\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\">\n  <channel>\n    <title>Article RSS Feed</title>\n    <link>http://your-web-site.com<r:url /></link>\n    <language>en-us</language>\n    <ttl>40</ttl>\n    <description>The main blog feed for my Web site.</description>\n    <r:find url=\"/news/\">\n    <r:children:each limit=\"10\" order=\"desc\">\n        <item>\n          <title><r:title /></title>\n          <description><r:escape_html><r:content /></r:escape_html></description>\n          <pubDate><r:rfc1123_date /></pubDate>\n          <guid>http://your-web-site.com<r:url /></guid>\n          <link>http://your-web-site.com<r:url /></link>\n        </item>\n    </r:children:each>\n    </r:find>\n  </channel>\n</rss>\n',3),
	(4,'body','','<r:children:each limit=\"5\" order=\"desc\">\n<div class=\"entry\">\n  <h3><r:link /></h3>\n    <div class=\"posted\">\n      Posted by <r:author /> on <r:date format=\"%B %d, %Y\" /><em>|</em><img src=\"http://spurrd.com/assets/123/comment.png\" /><a href=\"<r:url />#disqus_thread\">Comments</a><em>|</em><r:link>Read full article</r:link>    \n    </div>\n  <r:content part=\"summary\" />\n</div>\n</r:children:each>\n\n<r:snippet name=\"comments_summary\" />',4),
	(5,'body','Textile','<h3><r:title /></h3>\n<r:snippet name=\"posted\" />\n\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\n\nTemporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\n\n<r:snippet name=\"comments\" />\n',5),
	(6,'body','Textile','<h3><r:title /></h3>\n<r:snippet name=\"posted\" />\n\nUt enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. \n\n<r:snippet name=\"comments\" />',6),
	(8,'sidebar','','sidebar.',1),
	(9,'body','Textile','<h3><r:title /></h3>\n<r:snippet name=\"posted\" />\n\nVivamus mollis porttitor odio. Vestibulum id mi. Suspendisse a tortor quis metus imperdiet eleifend. Pellentesque libero nulla, aliquam in, tristique vel, elementum et, odio. Fusce id ligula. Vivamus dapibus imperdiet ante. Aliquam id eros ut velit eleifend aliquet. Nulla commodo viverra orci. Sed auctor. Maecenas commodo. Mauris adipiscing lectus quis quam. Nulla a nisl in augue suscipit tincidunt. Nunc eros. Nam eget sapien eget lorem ultrices pulvinar. Vivamus dolor.\n\nSuspendisse auctor risus nec odio. Sed tortor sem, tempor eu, molestie ac, viverra et, arcu. Donec aliquet pede eget tellus. Pellentesque facilisis nibh in ante. Mauris et lectus. Nullam pede. Nam sed pede sollicitudin mi congue vestibulum. Suspendisse et diam sed odio venenatis dictum. \n\nInteger eget nunc sit amet felis interdum sollicitudin. Mauris posuere, quam eu aliquam iaculis, ipsum magna pellentesque arcu, id rutrum augue erat luctus magna.\n\nPraesent ut lacus. Fusce interdum metus laoreet mi. Duis aliquet. Nunc malesuada leo id nulla. Praesent condimentum metus nec odio. Ut ut velit dapibus nibh interdum eleifend. Proin tempor sodales enim. Donec ultricies. Duis bibendum urna id ante. Donec ipsum lorem, venenatis et, tempus ut, vehicula et, mi. \n\n<r:snippet name=\"comments\" />',8),
	(10,'body','Textile','\"I gutted the fish,\" he says. \"How\'s the fire going?\r\n\r\nFergus Drennan is one of England\'s few professional foragers. He makes a living by seeking out and selling wild food. Our evening at Reculver brings to a close a day spent together in the Kent countryside. Now, below the red cliffs and under the red sun, we\'re ending the day with the fruits of our labour: baked sea bass, dulse soup and fried sea beet, offset by strong sloe gin.\r\n\r\n\"The thing is,\" says Fergus, as he unwraps one of the bass from its tinfoil, \"we\'re so cut off from the land now. It\'s about culture, as much as anything. Remember those St George\'s mushrooms we picked earlier? They got the name because they start to appear around St George\'s Day - the 23rd of April. You hear people moaning about how the traditions of this country are disappearing, we\'re not in touch with our heritage and nobody celebrates St George\'s Day any more.\r\n\r\n\"But most of these old traditions, when they were living, came from the land and people\'s attachment to it. These days we don\'t know where we are, or what happens in our landscape, so we can\'t create new ones. Traditions come from places - from the land, from our relationship to it. Once that\'s gone, so has that living culture.\"\r\n\r\nWhat Fergus picked up on that evening on the Kentish beach was something too few of us today give any thought to, but that is a vital component of our identity as individuals, as communities and as a nation. As St George\'s Day approaches and brings with it the traditional round of English agonising about who we are and where we are going, it is worth remembering that what really makes England - what creates and maintains our national identity - is our living landscape. It is the places we have made our own over the centuries: the combination of patterns of land use, vernacular architecture, community spaces, local culture and place-specific traditions, which, added together, form the patchwork we call our national character. Who we are, in other words, comes from where we are.\r\n\r\nBut if this is true, the English may be in trouble. For the things that make our landscapes different, distinctive and special are being eroded and replaced by things that would be familiar anywhere. It is happening all over the country: the same chains in every high street; the same bricks in every new housing estate; the same signs on every road; the same menu in every pub.\r\n\r\nThe small, the ancient, the unprofitable, the meaningful, the characterful and the quirky are being razed to make way for the clean, the sophisticated, the progressive and the corporate. In the name of economic efficiency, investment, growth, development, or simply money, the complex web of intimate relationships between people and communities and the landscape they inhabit is being dismantled, with nobody\'s permission.\r\n\r\nThe English landscape, in common with the landscapes of other nations across the world, is being rapidly and thoughtlessly remoulded to meet the short-term needs of a global economy that is built on sand. The result is stark, sad and bitter: everywhere is becoming the same as everywhere else. As a result, England is losing its identity.\r\n\r\nTake, for example, the English pub - perhaps the best marker of our national character. English ale (from the Saxon ealu) and the English inn are not precisely replicated anywhere on Earth. Yet we are losing 56 pubs every month, four every day. Six urban locals shut up shop every week and half of England\'s villages are now \"dry\" - publess - for possibly the first time since the Norman Conquest. Along with them have gone the historic regional breweries, of which only 38 remain. A century ago, the nation was home to 6,000 breweries; now there are 600.\r\n\r\nOr take the independent shops that made us, so famously, a \"nation of shopkeepers\". The last decade alone has seen the end of nearly 30,000 independent food, beverage and tobacco retailers. Fifty specialist shops closed every week between 1997 and 2002, while the last quarter of the 20th century saw the number of out-of-town shopping centres quadruple. The \"clone town\" phenomenon, by which every high street comes to resemble every other, regardless of region or history, has become a national talking point.\r\n\r\nOr how about the English countryside, which in so many of our imaginations is still at the heart of England - the landscapes of Constable, Wordsworth, Turner and Betjeman? Small and family farms are going out of business at a rate of knots, taking centuries of history and meaning with them. We have lost, for example, 40 per cent of our dairy farms in less than a decade. The amount of land taken up by traditional apple orchards - the home of our national fruit, of which we grow more varieties than any other nation - has halved in just a decade, too. Devon and Wiltshire have lost 90 per cent of their orchards; Somerset has lost 60 per cent in just two decades.\r\n\r\nVillages are haemorrhaging shops, post offices and village halls, turning what were once communities into dormitories. In some villages in the tourist \"honeypots\", up to 80 per cent of homes are owned by absentee landlords or set aside for holiday lets. House prices in some rural areas have increased by almost 400 per cent in a decade, pricing local people out and destroying centuries of rural tradition in the process.\r\n\r\nWhy is this happening, and why do we allow it? Responsibility can be pinned on three forces, which are meshing together to form a uniquely destructive whole: a powerful alliance of big business and big government; an unspoken, 21st-century class conflict, in which every nook and cranny is being made safe for the wealthy urban bourgeoisie; and a very English reluctance to discuss who and what we are as a nation or to stand up for our places, our national character and our cultural landscape.\r\n\r\nThe first of these three forces is probably the most conspicuous. In the high streets, saloon bars and market-places of England, the omnipresence of the chain store and supermarket is striking. Giant multinational companies dominate almost every area of national life, from finance to farming. They do so with the full and enthusiastic encouragement of the State, whichever political party happens to be managing it. Meanwhile, the same State busies itself enacting or enforcing laws, from health and safety legislation to EU hygiene directives, which crush the life out of the small, the independent and the local.\r\n\r\nSecond, there is the rise of the class missionaries who are aggressively paving the way for a new England: a smoke-free, health-conscious, well-dressed designer nation whose values are those of its new ruling class, the city bourgeoisie. The country is being remodelled and made safe for urban 4x4 drivers, gastropub diners, the owners of investment properties and the wearers of clean wellies and fashionable scents. As they come, they scatter before them those whose values are different; perhaps older, certainly less profitable, less controllable, less tamed.\r\n\r\nThese first two forces have taken hold so successfully because of a third element: a problem that the English people themselves have long had. Put simply, we are terrible at talking about who we are. As a nation, we are almost comically reluctant to discuss our identity, our culture or our sense of nationhood. It is nearly 70 years since George Orwell wrote: \"England is perhaps the only great country whose intellectuals are ashamed of their own nationality.\" England may no longer be a \"great country\", but the rest of his comment still stands. This strange cultural self-loathing has left us open to the whims of those who would turn our landscape into a theme park in which the theme, overwhelmingly, is profit.\r\n\r\nAll of this is the result of putting a commitment to a narrowly-defined \"economic competitive-ness\" above the things that actually make everyday life worth living. As a nation, the English have been slow to recognise what makes their country unique and protect it from the worst depredations of progress. We are sleepwalking towards a future in which the country becomes a giant reproduction of Kent\'s Bluewater shopping centre - the largest in Europe, a paradise of consumerism, CCTV, security guards and fake landscapes, where price trumps value and everything is for sale.\r\n\r\nAnd yet something is stirring. All over England, people are starting to join the dots and recognise that what they previously saw as small, local, isolated changes are part of a bigger picture of a waning national identity. And all over England the bleaching out of character, community, place and meaning in the name of growth, investment and global competitiveness is causing ripples, resentment and resistance.\r\n\r\nIt can be seen in communities up and down the country, from Crouch End to Blackpool, Northallerton to Cirencester, who are taking to the streets in unprecedented numbers to oppose the closure of their local post offices. It can be seen in rural communities fighting to protect their village shops or getting together to set up their own, community-owned alternatives, as villagers have done successfully from Sulgrave in Northamptonshire to Blisland in Cornwall. It can be found in landlords in Brixton fighting the power of pub companies and small farmers in Cornwall resisting the bullying of the superstores.\r\n\r\nIt can be found in east London, where urban communities are trying to save the historic Queen\'s Market from destruction, and in Sheringham in Norfolk, where shopkeepers and locals are banding together to fend off an enormous Tesco. It can be found on the waterways of Oxford, where boat-dwellers are battling to save the city\'s last public boatyard from more executive flats.\r\n\r\nIt can be found, in fact, almost everywhere you care to look. So much so that it may be that a movement is afoot: a movement of people all over England who are beginning to get together and wage a battle for the soul of their nation. A battle led by those who see us not as \"UK PLC\", but as a nation with a unique history and a fragile future.\r\n\r\nThere are, it seems to me, two possible futures for England. The first: business as usual. We sit back, complicit, while our historical landscapes, meaningful places and local communities are cast aside in the name of increasing our GDP. We lose the cosy local pub, the ancient hill farm, the village shop, the independent high street and the rare apple varieties in the old orchard on the hill, and with them we lose a sense of who we are and where we came from.\r\n\r\nThe other future is one in which we stand and fight for these things, because we know why they matter. We stand up for our localities and communities, we value our history and the glorious eccentricity of our landscape, and we refuse to allow it to be replaced by more strip malls, car parks and executive waterfront apartments. In doing so, we rediscover what perhaps for a while we forgot - what it really means to be English. ',9),
	(12,'sidebar','','<div class=\"box\">\n<h3>News Archives</h3>\n<ul>\n<r:find url=\"/news/\">\n<r:children:each order=\"desc\">\n<r:header><li><a href=\"<r:date format=\"/news/%Y/%m/\" />\"><r:date format=\"%B %Y\" /></a></li></r:header>\n</r:children:each>\n</r:find>\n</ul>\n</div>\n\n<r:snippet name=\"newsletter\" />\n\n<div class=\"spot\"><r:snippet name=\"rss\" /></div>',4),
	(13,'body','','<r:archive:children:each order=\"desc\">\n<div class=\"entry\">\n<h3><r:link /></h3>\n    <div class=\"posted\">\n      Posted by <r:author /> on <r:date format=\"%B %d, %Y\" /><em>|</em><img src=\"http://spurrd.com/assets/123/comment.png\" /><a href=\"<r:url />#disqus_thread\">Comments</a><em>|</em><r:link>Read full article</r:link>    \n    </div>\n  <r:content part=\"summary\" />\n</div>\n</r:archive:children:each>\n\n<r:snippet name=\"comments_summary\" />',10),
	(14,'summary','Textile','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.',5),
	(15,'summary','Textile','Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',6),
	(16,'summary','Textile','Vivamus mollis porttitor odio. Vestibulum id mi. Suspendisse a tortor quis metus imperdiet eleifend. Pellentesque libero nulla, aliquam in, tristique vel, elementum et, odio. Fusce id ligula. Vivamus dapibus imperdiet ante. Aliquam id eros ut velit eleifend aliquet. Nulla commodo viverra orci. Sed auctor. Maecenas commodo. Mauris adipiscing lectus quis quam. Nulla a nisl in augue suscipit tincidunt. Nunc eros. Nam eget sapien eget lorem ultrices pulvinar. Vivamus dolor.',8),
	(27,'body','',NULL,15),
	(28,'body','Sass','@import compass/css3\r\n\r\n$rubinered: #d1005d\r\n$coolgrey0: #f2f0ed\r\n$coolgrey1: #e2e1dd\r\n$coolgrey2: #d6d6d4\r\n$coolgrey3: #cacac8\r\n$coolgrey4: #bdbdbd\r\n$coolgrey5: #b3b3b3\r\n$coolgrey6: #afafaf\r\n$coolgrey7: #9a9b9d\r\n$coolgrey8: #8c8d8e\r\n$coolgrey9: #747679\r\n$coolgrey10: #616265\r\n$coolgrey11: #4d4e53\r\n\r\n$olive: #607264\r\n$dark: $coolgrey11\r\n$mid: $coolgrey8\r\n$pale: $coolgrey6\r\n$paler: $coolgrey4\r\n$verypale: $coolgrey2\r\n$faint: $coolgrey0\r\n\r\n$page: white\r\n$text: black\r\n$link: $olive\r\n$hover: $rubinered\r\n$warning: $rubinered\r\n\r\n=blurred($color: $verypale)\r\n  text-shadow: #{$color} 0 0 2px\r\n=shadowed($color: #000000)\r\n  text-shadow: #{$color} 0 2px 5px\r\n=glow($color: white)\r\n  text-shadow: #{$color} 0 0 6px\r\n=bordered($width: 8px)\r\n  +box-shadow\r\n  border: #{$width} solid white\r\n\r\n@font-face\r\n  font-family: \'Prociono\'\r\n  src: url(\'/fonts/prociono.eot\')\r\n  src: url(\'/fonts/prociono.eot?iefix\') format(\'eot\'), url(\'/fonts/prociono.woff\') format(\'woff\'), url(\'/fonts/prociono.ttf\') format(\'truetype\'), url(\'/fonts/prociono.svg#webfontQ0TnnWLe\') format(\'svg\')\r\n  font-weight: normal\r\n  font-style: normal\r\n\r\n@font-face\r\n  font-family: \'Linden\'\r\n  src: url(\'/fonts/lindenhill-italic.eot\')\r\n  src: url(\'/fonts/lindenhill-italic.eot?iefix\') format(\'eot\'), url(\'/fonts/lindenhill-italic.woff\') format(\'woff\'), url(\'/fonts/lindenhill-italic.ttf\') format(\'truetype\'), url(\'/fonts/lindenhill-italic.svg#webfontQ0TnnWLe\') format(\'svg\')\r\n  font-weight: normal\r\n  font-style: normal\r\n\r\n@font-face\r\n  font-family: \'Ornaments\'\r\n  src: url(\'/fonts/hoefler_text_ornaments.eot\')\r\n  src: url(\'/fonts/hoefler_text_ornaments.eot?iefix\') format(\'eot\'),url(\'/fonts/hoefler_text_ornaments.woff\') format(\'woff\'),url(\'/fonts/hoefler_text_ornaments.ttf\') format(\'truetype\'),url(\'/fonts/hoefler_text_ornaments.svg#webfont8cKuvnTh\') format(\'svg\')\r\n  font-weight: normal\r\n  font-style: normal\r\n\r\n=header\r\n  font-family: \"Prociono\"\r\n  font-weight: normal\r\n  line-height: 1\r\n=text\r\n  font-family: \"Prociono\"\r\n  font-weight: normal\r\n  line-height: 1.5\r\n=italic\r\n  font-family: \"Linden\"\r\n  font-style: normal\r\n=ornament\r\n  font-family: \"Ornaments\"\r\n  color: $mid\r\n  font-size: 80%\r\n=small\r\n  font-size: 80%\r\n  \r\n////////// default formatting\r\n\r\nbody\r\n  margin: 0\r\n  padding: 0\r\n  +text\r\na, a:link\r\n  text-decoration: none\r\n  color: $link\r\na:hover\r\n  color: $hover\r\nimg\r\n  border: 0\r\n  margin: 0\r\n  padding: 0\r\nul,ol\r\n  color: $dark\r\nul\r\n  margin-top: 0\r\n  padding-left: 32px\r\n  list-style: square\r\n  &.minimal\r\n    list-style: none\r\nol\r\n  padding-left: 16px\r\nblockquote\r\n  margin-left: 12px\r\n  color: $mid\r\nh1, h2, h3, h4\r\n  +header\r\n  line-height: 1\r\n  margin: 0.5em 0 0.25em 0\r\nlabel\r\n  +header\r\n    \r\n///////////////////////////// layout\r\n\r\n$pagewidth: 960px\r\n$navwidth: 70px\r\n$floatwidth: 200px\r\n$inset_right: 120px\r\n$gutter: 40px\r\n$inset_left: $navwidth + $gutter\r\n\r\n=normal_block\r\n  position: relative\r\n  overflow: hidden\r\n=absolute_block\r\n  position: absolute\r\n=fixed_block\r\n  position: fixed\r\n  overflow: hidden\r\n=floated_block\r\n  position: relative\r\n  float: right\r\n  width: $floatwidth\r\n  margin-right: -$inset_right\r\n  margin-left: $gutter\r\n  margin-bottom: $gutter\r\n=inset\r\n  padding-left: $inset_left\r\n  padding-right: $inset_right\r\n\r\n#mastheadholder\r\n  +normal_block\r\n  width: $pagewidth\r\n  margin: 0 auto\r\n  #masthead\r\n    +normal_block\r\n    +inset\r\n    font-size: 140%\r\n    p\r\n      margin: 0.5em 0 0.25em 0\r\n  #title\r\n    +normal_block\r\n    +inset\r\n    h1.pagetitle\r\n      width: 85%\r\n      font-size: 3.5em\r\n      z-index: 15\r\n      margin-bottom: 5px\r\n    p.subtitle\r\n      +italic\r\n      font-size: 1.4em\r\n      margin: 0\r\n\r\n#pageholder\r\n  +normal_block\r\n  width: $pagewidth\r\n  margin: 0 auto\r\n  #navigation\r\n    +absolute_block\r\n    top: 0\r\n    left: 0\r\n    padding-top: 1em\r\n    width: $navwidth\r\n    z-index: 1000\r\n    &.fixed\r\n      position: fixed\r\n  #page\r\n    +normal_block\r\n    +inset\r\n    z-index: 100\r\n    .standfirst\r\n      font-size: 1.4em\r\n    #tagging\r\n      +floated_block\r\n      margin-top: 1em\r\n      line-height: 1.2\r\n      ul\r\n        display: inline\r\n        padding: 0\r\n        margin: 0 0 2em 0\r\n        li\r\n          +italic\r\n          display: inline\r\n    #standfirst\r\n      font-size: 130%\r\n      line-height: 1.4\r\n      margin-top: 0.6em\r\n    .pointer\r\n      margin: 2em 0\r\n      h3\r\n        img\r\n          +box-shadow\r\n          float: left\r\n          margin: 0 12px 6px 0\r\n      p\r\n        margin: 0\r\n        +small\r\n      \r\n  #footer\r\n    margin-top: 100px\r\n    h2\r\n      a\r\n        color: $mid\r\n        &:hover\r\n          color: $hover\r\n          span.ornament\r\n            color: $hover\r\n    ul\r\n      float: left\r\n      width: 120px\r\n      list-style: none\r\n      padding: 0\r\n      margin: 0 10px\r\n      &:first-child\r\n        margin-left: 0\r\n      &:last-child\r\n        margin-right: 0\r\n      color: $pale\r\n      li\r\n        margin: 0\r\n        +italic\r\n        &.section\r\n          font-size: 140%\r\n#colophon\r\n  +small\r\n  +italic\r\n  color: $pale\r\n  text-align: center\r\n  \r\n///////////////////////////// appearance\r\n\r\n#pageholder\r\n  #navigation\r\n    ul\r\n      list-style: none\r\n      padding: 0\r\n      line-height: 1.3\r\n      li\r\n        +italic\r\n        a\r\n          color: $paler\r\n          white-space: nowrap\r\n          &:hover\r\n            color: $hover\r\n            span.ornament\r\n              color: $hover\r\n          &.selected\r\n            color: $mid\r\n            span.ornament\r\n              color: $mid\r\n            &:hover\r\n              color: $hover\r\n              span.ornament\r\n                color: $hover\r\n\r\n.tight\r\n  margin: 0\r\n.hidden, .innocuous\r\n  display: none\r\n.pale\r\n  color: $pale\r\n.small, .quiet, .footnote\r\n  +small\r\n  color: $pale\r\n.ornament\r\n  +ornament\r\na\r\n  .ornament\r\n    color: $mid\r\n  &:hover\r\n    .ornament\r\n      color: $hover\r\n',16),
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
	(41,'body','','',23),
	(42,'extended','','',23),
	(43,'body','','',24),
	(44,'precis','','It\'s a summer evening on Reculver Beach in Kent and I\'m sitting cross-legged beneath the cliffs, piling driftwood onto a stuttering fire. The evening silence is broken only by the crackling of the burning wood, by hundreds of darting, chattering sand martins shooting in and out of slits in the sandy cliff faces and, now, the shifting of the gravel beneath Fergus\'s feet as he makes his way back up from the shoreline.',9);

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`,`title`,`slug`,`breadcrumb`,`class_name`,`status_id`,`parent_id`,`layout_id`,`created_at`,`updated_at`,`published_at`,`created_by_id`,`updated_by_id`,`virtual`,`lock_version`)
VALUES
	(1,'Home Page','/','Home','',100,NULL,1,'2008-12-24 01:08:45','2011-03-15 17:37:58','2008-12-23 00:00:00',1,1,0,79),
	(2,'File Not Found','file-not-found','File Not Found','FileNotFoundPage',100,1,NULL,'2008-12-24 01:08:45','2008-12-24 01:08:45','2008-12-23 18:08:45',1,NULL,1,0),
	(3,'RSS Feed','rss','RSS Feed',NULL,100,1,3,'2008-12-24 01:08:45','2008-12-24 01:08:45','2008-12-23 18:08:45',1,NULL,0,0),
	(4,'Articles','news','News','ArchivePage',100,1,NULL,'2008-12-24 01:08:45','2009-01-02 07:27:53','2008-12-23 18:08:45',1,NULL,0,18),
	(5,'New location opening tonight','new-location-opening-tonight','New location opening tonight','Page',100,4,NULL,'2008-12-24 01:08:45','2009-01-02 09:27:43','2006-06-09 00:00:00',1,NULL,0,16),
	(6,'Grass-fed foam from Jersey','grass-fed-foam-from-jersey','Grass-fed foam from Jersey','Page',100,4,NULL,'2008-12-24 01:08:45','2009-01-02 07:31:42','2006-06-10 00:00:00',1,NULL,0,8),
	(8,'The Finest grind','the-finest-grind','The Finest grind','Page',100,4,NULL,'2008-12-24 01:08:45','2009-01-02 09:27:11','2008-12-23 18:08:45',1,NULL,0,11),
	(9,'Will the real England please stand up?','test','Will the real England please stand up?','',100,1,NULL,'2008-12-24 01:08:45','2011-03-16 09:22:35','2008-12-23 00:00:00',1,1,0,10),
	(10,'%B %Y Archives','monthly-archives','Monthly Archives','ArchiveMonthIndexPage',100,4,NULL,'2008-12-24 01:08:45','2009-01-02 07:29:46','2008-12-23 18:08:45',1,NULL,1,9),
	(15,'css','css','css','StylesheetPage',100,1,NULL,'2011-03-16 08:27:05','2011-03-16 08:27:05','2011-03-16 08:27:05',NULL,NULL,1,0),
	(16,'pk.css','pk.css','pk.css','StylesheetPage',100,15,NULL,'2011-03-16 08:27:51','2011-03-28 09:50:50','2011-03-28 09:50:49',1,1,1,86),
	(17,'email.css','email.css','email.css','StylesheetPage',100,15,NULL,'2011-03-16 08:28:06','2011-03-16 08:28:06','2011-03-16 08:28:06',1,NULL,1,0),
	(18,'ie.css','ie.css','ie.css','StylesheetPage',100,15,NULL,'2011-03-16 08:28:18','2011-03-16 08:28:18','2011-03-16 08:28:18',1,NULL,1,0),
	(19,'js','js','js','JavascriptPage',100,1,NULL,'2011-03-16 08:29:10','2011-03-16 08:29:10','2011-03-16 08:29:10',NULL,NULL,1,0),
	(20,'pk.js','pk.js','pk.js','JavascriptPage',100,19,NULL,'2011-03-16 08:30:08','2011-03-16 08:30:08','2011-03-16 08:30:08',1,NULL,1,0),
	(21,'Books','books','Books','',100,1,NULL,'2011-03-17 11:54:03','2011-03-17 11:54:03','2011-03-17 11:54:03',1,NULL,0,0),
	(22,'Real England','real-england','Real England','',100,21,NULL,'2011-03-17 11:54:59','2011-03-17 12:04:16','2011-03-17 00:00:00',1,1,0,2),
	(23,'W','we','We','',1,4,NULL,'2011-03-17 14:12:11','2011-03-17 14:12:11',NULL,1,NULL,0,0),
	(24,'google.js','google.js','google.js','JavascriptPage',100,19,NULL,'2011-03-28 08:56:40','2011-03-28 08:56:40','2011-03-28 08:56:40',1,NULL,1,0);

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

LOCK TABLES `snippets` WRITE;
/*!40000 ALTER TABLE `snippets` DISABLE KEYS */;
INSERT INTO `snippets` (`id`,`name`,`filter_id`,`content`,`created_at`,`updated_at`,`created_by_id`,`updated_by_id`,`lock_version`)
VALUES
	(1,'pagetitle','','<div id=\"title\">\r\n  <h1 class=\"pagetitle\"><r:title /></h1>\r\n  <p class=\"subtitle\"><r:content part=\"subtitle\" /></p>\r\n</div>','2008-12-24 01:08:44','2011-03-28 08:42:32',1,1,11),
	(2,'foot','','  <div id=\"colophon\">\r\n    <p>Set in Prociono and Linden Hill. Built by spanner on radiant.</p>\r\n  </div>\r\n\r\n  </body>\r\n</html>','2008-12-24 01:08:44','2011-03-17 11:28:37',1,1,7),
	(3,'navigation','','<div id=\"nav_holder\"><div id=\"navigation\">\r\n  <ul>\r\n    <li><li><a href=\"/\">Home</a></li>\r\n    <r:navigation urls=\"Me: /paul | Books: /books | Journalism: /test | Poetry: /poetry | Blog: /blog | Events: /calendar | On writing: /writing | Mailing list: /list | Dark Mountain: /dm | Scything : /scything \">\r\n      <r:normal><li><a href=\"<r:url />\"><r:title /></a></li></r:normal>\r\n      <r:selected><li><a href=\"<r:url />\" class=\"selected\"><r:title /> <span class=\"ornament\">&#61523;</span></a></li></r:selected>\r\n    </r:navigation>\r\n  </ul>    \r\n</div></div>','2008-12-30 21:38:09','2011-03-28 09:39:36',1,1,16),
	(4,'introduction','','<r:if_content part=\"introduction\">\r\n  <div id=\"standfirst\"><r:content part=\"introduction\" /></div>\r\n</r:if_content>\r\n','2008-12-31 01:08:12','2011-03-16 08:03:29',1,1,20),
	(5,'pagetags','','<div id=\"tagging\">\r\n  <ul>\r\n    <r:if_content part=\"publication\" inherit=\"false\">\r\n      <li class=\"published\"><r:content part=\"publication\" /></li>\r\n    </r:if_content>\r\n    <r:descriptive_tags:each_tag>\r\n      <li><r:tag:link linkto=\"/tags\"><span class=\"ornament\">&#61554;</span> <r:tag:name /></r:tag:link></li>\r\n    </r:descriptive_tags:each_tag>\r\n  </ul>\r\n\r\n  <r:structural_tags:each_tag>\r\n    <r:tag:page><r:snippet name=\"pullbox\" /></r:tag:page>\r\n  </r:structural_tags:each_tag>\r\n</div>','2008-12-31 07:04:11','2011-03-17 12:36:49',1,1,24),
	(6,'articles','','<r:find url=\"/news\">\n  <r:children:each order=\"desc\" limit=\"3\">\n  <div class=\"entry\">\n    <h3><r:link /></h3>\n    <div class=\"posted\">\n      Posted by <r:author /> on <r:date format=\"%B %d, %Y\" /><em>|</em><img src=\"http://spurrd.com/assets/123/comment.png\" /><a href=\"<r:url />#disqus_thread\">Comments</a><em>|</em><r:link>Read full article</r:link>    \n    </div>\n    <r:content part=\"summary\" />\n  </div>\n  </r:children:each>\n</r:find>\n\n<r:snippet name=\"comments_summary\" />','2009-01-01 22:40:23','2009-01-02 07:19:28',1,NULL,19),
	(7,'sitemap','',' <r:children:each by=\"title\" order=\"asc\">\r\n   <r:unless_content part=\"no-map\">\r\n     <li>\r\n       <r:link />\r\n       <r:if_children>\r\n         <ul class=\"second\">\r\n           <r:snippet name=\"sitemap\" />\r\n         </ul>\r\n       </r:if_children>\r\n     </li>\r\n   </r:unless_content>\r\n </r:children:each>\r\n\r\n','2009-01-01 23:51:52','2009-01-02 00:45:01',1,NULL,14),
	(8,'comments','','<img src=\"http://spurrd.com/assets/126/comments.jpg\" />\n\n<div id=\"disqus_thread\"></div><r:comment><script type=\"text/javascript\" src=\"http://disqus.com/forums/radiant/embed.js\"></script><noscript><a href=\"http://radiant.disqus.com/?url=ref\">View the discussion thread.</a></noscript></r:comment><a href=\"http://disqus.com\" class=\"dsq-brlink\">blog comments powered by <span class=\"logo-disqus\">Disqus</span></a>','2009-01-02 02:17:21','2009-01-02 07:20:55',1,NULL,3),
	(9,'comments_summary','','ï»¿ï»¿ï»¿ï»¿<script type=\"text/javascript\">\r\n//<![CDATA[\r\n(function() {\r\n		var links = document.getElementsByTagName(\'a\');\r\n		var query = \'?\';\r\n		for(var i = 0; i < links.length; i++) {\r\n			if(links[i].href.indexOf(\'#disqus_thread\') >= 0) {\r\n				query += \'url\' + i + \'=\' + encodeURIComponent(links[i].href) + \'&\';\r\n			}\r\n		}\r\n		document.write(\'<script type=\"text/javascript\" src=\"http://disqus.com/forums/radiant/get_num_replies.js\' + query + \'\"></\' + \'script>\');\r\n	})();\r\n//]]>\r\n</script>\r\n\r\n','2009-01-02 02:18:23','2009-01-02 02:59:44',1,NULL,4),
	(10,'pagefooter','','<div id=\"footer\">\r\n  <h2><a href=\"/\">Paul Kingsnorth <span class=\"ornament\">&#61523;</span></a></h2>\r\n  <div id=\"contents\">\r\n    <ul>\r\n      <li class=\"section\"><a href=\"#\">Books</a></li>\r\n      <li><a href=\"#\">Real England</a></li>\r\n      <li><a href=\"#\">One No, Many Yeses</a></li>\r\n      <li><a href=\"#\">Dark Mountain 1</a></li>\r\n    </ul>\r\n    <ul>\r\n      <li class=\"section\"><a href=\"#\">Journalism</a></li>\r\n      <li><a href=\"#\">Features &amp; Reports</a></li>\r\n      <li><a href=\"#\">Comment &amp; Opinion</a></li>\r\n      <li><a href=\"#\">Reviews</a></li>\r\n    </ul>\r\n    <ul>\r\n      <li class=\"section\"><a href=\"#\">Poetry</a></li>\r\n      <li><a href=\"#\">Kidland</a></li>\r\n      <li><a href=\"#\">Older poems</a></li>\r\n    </ul>\r\n    <ul>\r\n      <li class=\"section\"><a href=\"#\">More</a></li>\r\n      <li><a href=\"#\">About &amp; contact</a></li>\r\n      <li><a href=\"#\">Blog</a></li>\r\n      <li><a href=\"#\">On writing</a></li>\r\n      <li><a href=\"#\">On scything</a></li>\r\n    </ul>\r\n  </div>\r\n</div>','2009-01-02 07:32:00','2011-03-16 16:20:57',1,1,7),
	(11,'related_page','','This is how we\'re going to highlight other (ie book) pages in the tag block. Tag has a page, page gets shown here.','2011-03-16 08:05:17','2011-03-16 08:05:31',1,1,1),
	(12,'head','','<!DOCTYPE html>\r\n\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\">\r\n  <head>\r\n    <title>Paul Kingsnorth: <r:title /></title>\r\n    <r:snippet name=\"stylesheets\" />\r\n    <script src=\"http://code.jquery.com/jquery-1.5.js\" type=\"text/javascript\"></script>\r\n  </head>\r\n  <body>\r\n','2011-03-16 08:07:10','2011-03-16 08:07:10',1,NULL,0),
	(13,'stylesheets','','<r:stylesheet slug=\"pk.css\" as=\"link\" media=\"all\" />\r\n<!--[if IE]><r:stylesheet slug=\"ie.css\" as=\"link\" /><![endif]-->\r\n<r:content part=\"head\" />\r\n','2011-03-16 08:08:04','2011-03-16 08:08:04',1,NULL,0),
	(14,'javascripts','','<script type=\"text/javascript\" src=\"/javascripts/pk.js\"></script>\r\n<r:javascript slug=\"google.js\" as=\"inline\" />','2011-03-16 08:08:52','2011-03-28 08:54:44',1,1,2),
	(15,'masthead','','<div id=\"masthead\">\r\n  <p><a href=\"/\">Paul Kingsnorth<span class=\"ornament\">&#61523;</span></a></p>\r\n</div>','2011-03-16 09:18:58','2011-03-17 10:13:19',1,1,3),
	(16,'pullbox','','<div class=\"pointer\">\r\n  <h3>\r\n    <r:link>\r\n      <r:assets:first><r:assets:image size=\"thumbnail\" /></r:assets:first>\r\n      <r:title />\r\n    </r:link>\r\n  </h3>\r\n  <div class=\"quote\"><r:content part=\"quote\" /></div>\r\n</div>','2011-03-17 12:27:51','2011-03-17 12:27:51',1,NULL,0),
	(17,'standfirst','','<r:if_content part=\"introduction\" inherit=\"false\">\r\n  <div id=\"standfirst\">\r\n    <r:content part=\"introduction\" inherit=\"false\" />\r\n  </div>\r\n</r:if_content>\r\n','2011-03-28 09:05:20','2011-03-28 09:33:58',1,1,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` (`id`,`tag_id`,`tagged_type`,`tagged_id`)
VALUES
	(1,1,'Page',9),
	(2,2,'Page',9),
	(3,3,'Page',9),
	(4,4,'Page',9),
	(5,5,'Page',9);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`,`title`,`description`,`created_by_id`,`updated_by_id`,`created_at`,`updated_at`,`site_id`,`page_id`,`visible`)
VALUES
	(1,'Journalism','',1,1,'2011-03-16 15:48:01','2011-03-17 18:13:43',NULL,NULL,1),
	(2,'Features','',1,1,'2011-03-16 15:48:01','2011-03-17 18:14:01',NULL,NULL,1),
	(3,'Tradition',NULL,1,NULL,'2011-03-16 15:48:01','2011-03-16 15:48:01',NULL,NULL,1),
	(4,'Landedness',NULL,1,NULL,'2011-03-16 15:48:01','2011-03-16 15:48:01',NULL,NULL,1),
	(5,'Real England','',1,1,'2011-03-16 15:48:01','2011-03-17 11:55:55',NULL,22,1);

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
