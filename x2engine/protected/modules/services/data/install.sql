DROP TABLE IF EXISTS `x2_services`;
/*&*/
CREATE TABLE `x2_services` (
	id					INT				NOT NULL AUTO_INCREMENT PRIMARY KEY,
	createDate			BIGINT,
	lastUpdated			BIGINT,
	updatedBy			VARCHAR(20),
	description			TEXT,
	contactId			varchar(250),
	assignedTo			TEXT,
	name				VARCHAR(40)		NOT NULL,
	impact				VARCHAR(40),
	status				VARCHAR(40),
	subject				TEXT,
	mainIssue			VARCHAR(40),
	nextAction			TEXT,
	resolution			TEXT,
	subIssue			VARCHAR(40),
	origin				VARCHAR(40),
	escalatedTo			VARCHAR(20),
	lastactivity		BIGINT,
	parentCase			INT
) COLLATE = utf8_general_ci AUTO_INCREMENT = 1000;
/*&*/
INSERT INTO `x2_modules` 
			(name,				title,			visible, 	menuPosition,	searchable,	editable,	adminOnly,	custom,	toggleable) 
	VALUES	("services",		"Services",		1,			15,				1,			1,			0,			0,		0);
/*&*/
INSERT INTO x2_fields
(modelName,			fieldName,				attributeLabel,			modified,	custom,	type,					required,	readOnly,	linkType,   	searchable,	isVirtual,	relevance)
VALUES
("Services",		"id",					"Case",					0,			0, 		"varchar",				0, 			0, 			NULL,			1,			0,			""			),
("Services",		"createDate",			"Create Date",			0,			0, 		"date",					0, 			1, 			NULL,			0,			0,			""			),
("Services",		"lastUpdated",			"Last Updated",			0,			0, 		"date",					0, 			1, 			NULL,			0,			0,			""			),
("Services",		"updatedBy",			"Updated By",			0,			0, 		"varchar",				0, 			1, 			NULL,			0,			0,			""			),
("Services",		"description",			"Description",			0,			0, 		"text",					0, 			0, 			NULL,			1,			0,			"Medium" 	),
("Services",		"contactId",			"Contact",				0,			0, 		"link",					1, 			0, 			'Contacts', 	0,			0,			""			),
("Services",		"assignedTo",			"Assigned To",			0,			0, 		"assignment",			0, 			0, 			NULL, 			0,			0,			""			),
("Services",		"impact",				"Impact",				0,			0, 		"dropdown",				1, 			0, 			'9', 			0,			0,			""			),
("Services",		"status",				"Status",				0,			0, 		"dropdown",				1, 			0, 			'10', 			0,			0,			""			),
("Services",		"subject",				"Subject",				0,			0, 		"varchar",				0, 			0, 			NULL, 			0,			0,			""			),
("Services",		"mainIssue",			"Main Issue",			0,			0, 		"dropdown",				0, 			0, 			'11', 			1,			0,			""			),
("Services",		"nextAction",			"Next action",			0,			0, 		"text",					0, 			0, 			NULL, 			0,			0,			""			),
("Services",		"resolution",			"Resolution",			0,			0, 		"varchar",				0, 			0, 			NULL, 			0,			0,			""			),
("Services",		"subIssue",				"Sub Issue",			0,			0, 		"dropdown",				0, 			0, 			'12', 			0,			0,			""			),
("Services",		"origin",				"Case Origin",			0,			0, 		"dropdown",				0, 			0, 			'13', 			0,			0,			""			),
("Services",		"escalatedTo",			"Escalated To",			0,			0, 		"optionalAssignment",	0, 			0, 			NULL, 			0,			0,			""			),
("Services",		"lastactivity",			"Last Activity",		1,			1, 		"date",					0, 			0, 			NULL, 			0,			0,			""			),
("Services",		"parentCase",			"Parent Case",			0,			0, 		"link",					0, 			0, 			'Services', 	1,			0,			""			);
