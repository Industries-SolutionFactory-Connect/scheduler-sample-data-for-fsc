BEGIN TRANSACTION;
CREATE TABLE "OperatingHours" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"TimeZone" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "OperatingHours" VALUES(1,'','PST Timezone','America/Los_Angeles');
CREATE TABLE "ServiceTerritory" (
	id INTEGER NOT NULL, 
	"City" VARCHAR(255), 
	"Country" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"GeocodeAccuracy" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"Latitude" VARCHAR(255), 
	"Longitude" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"PostalCode" VARCHAR(255), 
	"State" VARCHAR(255), 
	"Street" VARCHAR(255), 
	"TypicalInTerritoryTravelTime" VARCHAR(255), 
	"OperatingHoursId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ServiceTerritory" VALUES(1,'San Francisco','United States','','Address','True','37.789853','-122.396806','San Francisco Main Branch','94105','CA','415 Mission Street','','1');
CREATE TABLE "ServiceTerritoryWorkType" (
	id INTEGER NOT NULL, 
	"ServiceTerritoryId" VARCHAR(255), 
	"WorkTypeId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ServiceTerritoryWorkType" VALUES(1,'1','1');
CREATE TABLE "Skill" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"Language" VARCHAR(255), 
	"MasterLabel" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Skill" VALUES(1,'','Checking_Account_Opening','en_US','Checking Account Opening');
CREATE TABLE "SkillRequirement" (
	id INTEGER NOT NULL, 
	"SkillLevel" VARCHAR(255), 
	"SkillId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "SkillRequirement" VALUES(1,'99.0','1');
CREATE TABLE "TimeSlot" (
	id INTEGER NOT NULL, 
	"DayOfWeek" VARCHAR(255), 
	"EndTime" VARCHAR(255), 
	"MaxAppointments" VARCHAR(255), 
	"StartTime" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"OperatingHoursId" VARCHAR(255), 
	"WorkTypeGroupId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "TimeSlot" VALUES(1,'Monday','17:00:00.000Z','1','09:00:00.000Z','Normal','1','');
INSERT INTO "TimeSlot" VALUES(2,'Tuesday','17:00:00.000Z','1','09:00:00.000Z','Normal','1','');
INSERT INTO "TimeSlot" VALUES(3,'Wednesday','17:00:00.000Z','1','09:00:00.000Z','Normal','1','');
INSERT INTO "TimeSlot" VALUES(4,'Thursday','17:00:00.000Z','1','09:00:00.000Z','Normal','1','');
INSERT INTO "TimeSlot" VALUES(5,'Friday','13:00:00.000Z','1','09:00:00.000Z','Normal','1','');
CREATE TABLE "WorkType" (
	id INTEGER NOT NULL, 
	"BlockTimeAfterAppointment" VARCHAR(255), 
	"BlockTimeAfterUnit" VARCHAR(255), 
	"BlockTimeBeforeAppointment" VARCHAR(255), 
	"BlockTimeBeforeUnit" VARCHAR(255), 
	"DefaultAppointmentType" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"DurationType" VARCHAR(255), 
	"EstimatedDuration" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"TimeFrameEndUnit" VARCHAR(255), 
	"TimeFrameStartUnit" VARCHAR(255), 
	"TimeframeEnd" VARCHAR(255), 
	"TimeframeStart" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "WorkType" VALUES(1,'15','Minutes','','Minutes','','','Minutes','30.0','Checking Account at Mission Branch','Days','Days','','');
CREATE TABLE "WorkTypeGroup" (
	id INTEGER NOT NULL, 
	"AdditionalInformation" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"GroupType" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "WorkTypeGroup" VALUES(1,'','','Default','True','Checking Account Services');
CREATE TABLE "WorkTypeGroupMember" (
	id INTEGER NOT NULL, 
	"WorkTypeGroupId" VARCHAR(255), 
	"WorkTypeId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "WorkTypeGroupMember" VALUES(1,'1','1');
COMMIT;
