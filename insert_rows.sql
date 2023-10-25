USE NOT_JIRA;
#ROLES: 
INSERT INTO ROLE (ROLENAME, ROLEDESCRIPTION) VALUES ('Administrator', 'User with the administer  global permission' );
INSERT INTO ROLE (ROLENAME, ROLEDESCRIPTION) VALUES ('Super User', 'User with access and control of all projects, users and schemes.');
INSERT INTO ROLE (ROLENAME, ROLEDESCRIPTION) VALUES ('User', 'User with restricted access');
INSERT INTO ROLE (ROLENAME, ROLEDESCRIPTION) VALUES ('System', 'System user account');
INSERT INTO ROLE (ROLENAME, ROLEDESCRIPTION) VALUES ('Development', 'Development team role');

#PRIORITY
INSERT INTO PRIORITY (PRIORITYNAME, PRIORITYDESCRIPTION) VALUES ('Highest', 'The problem will block progress');
INSERT INTO PRIORITY (PRIORITYNAME, PRIORITYDESCRIPTION) VALUES ('High', 'Serious problem that could block progress');
INSERT INTO PRIORITY (PRIORITYNAME, PRIORITYDESCRIPTION) VALUES ('Medium','Has the potential to affect progress');
INSERT INTO PRIORITY (PRIORITYNAME, PRIORITYDESCRIPTION) VALUES ('Low','Minor problem or easily worked around');
INSERT INTO PRIORITY (PRIORITYNAME, PRIORITYDESCRIPTION) VALUES ('Lowest','Trivial problem with little or no impact on progress');

#USER
INSERT INTO USER (USERNAME, EMAIL, FULLNAME, PASSWORD, ROLEID) VALUES ('pamarilla', 'pamarilla@notjira.com', 'Pablo Amarilla', 1);
INSERT INTO USER (USERNAME, EMAIL, FULLNAME, PASSWORD, ROLEID) VALUES ('macosta', 'macosta@notjira.com', 'Mariano Acosta', 2);
INSERT INTO USER (USERNAME, EMAIL, FULLNAME, PASSWORD, ROLEID) VALUES ('flynch', 'flynch@notjira.com', 'Francisco Lynch', 3);
INSERT INTO USER (USERNAME, EMAIL, FULLNAME, PASSWORD, ROLEID) VALUES ('mmoreno', 'mmoreno@notjira.com', 'Mariano Moreno', 3);
INSERT INTO USER (USERNAME, EMAIL, FULLNAME, PASSWORD, ROLEID) VALUES ('jurquiza', 'jurquiza@notjira.com', 'Jose Urquiza', 3);

#PROJECT
INSERT INTO PROJECT (PROJECTNAME, DESCRIPTION, OWNERID, STARTDATE, ENDDATE) VALUES ('PROJECT-1', 'Your first project', 3, CURDATE(), NULL);
INSERT INTO PROJECT (PROJECTNAME, DESCRIPTION, OWNERID, STARTDATE, ENDDATE) VALUES ('PROJECT-2', 'Your second project', 3, CURDATE(), NULL);
INSERT INTO PROJECT (PROJECTNAME, DESCRIPTION, OWNERID, STARTDATE, ENDDATE) VALUES ('PROJECT-3', 'Your third project', 4, CURDATE(), NULL);
INSERT INTO PROJECT (PROJECTNAME, DESCRIPTION, OWNERID, STARTDATE, ENDDATE) VALUES ('PROJECT-4', 'Your fourth project', 4, CURDATE(), NULL);
INSERT INTO PROJECT (PROJECTNAME, DESCRIPTION, OWNERID, STARTDATE, ENDDATE) VALUES ('PROJECT-5', 'Your fifth project', 2, CURDATE(), NULL);

#ISSUE
INSERT INTO ISSUE (SUMMARY, DESCRIPTION, PRIORITY, STATUS, CREATEDDATE, DUEDATE, RESOLUTIONDATE, REPORTERUSERID, ASSIGNEEUSERID, PROJECTID) VALUES ('Issue 1 PRO-1', 'Test issue 1', 5, NULL, CURDATE(), NULL, NULL, 1, 4, 1 );
INSERT INTO ISSUE (SUMMARY, DESCRIPTION, PRIORITY, STATUS, CREATEDDATE, DUEDATE, RESOLUTIONDATE, REPORTERUSERID, ASSIGNEEUSERID, PROJECTID) VALUES ('Issue 2 PRO-1', 'Test issue 2', 4, NULL, CURDATE(), NULL, NULL, 2, 4, 1 );
INSERT INTO ISSUE (SUMMARY, DESCRIPTION, PRIORITY, STATUS, CREATEDDATE, DUEDATE, RESOLUTIONDATE, REPORTERUSERID, ASSIGNEEUSERID, PROJECTID) VALUES ('Issue 1 PRO-2', 'Test issue 1', 5, NULL, CURDATE(), NULL, NULL, 1, 3, 2 );
INSERT INTO ISSUE (SUMMARY, DESCRIPTION, PRIORITY, STATUS, CREATEDDATE, DUEDATE, RESOLUTIONDATE, REPORTERUSERID, ASSIGNEEUSERID, PROJECTID) VALUES ('Issue 2 PRO-2', 'Test issue 2', 5, NULL, CURDATE(), NULL, NULL, 1, 3, 2 );
INSERT INTO ISSUE (SUMMARY, DESCRIPTION, PRIORITY, STATUS, CREATEDDATE, DUEDATE, RESOLUTIONDATE, REPORTERUSERID, ASSIGNEEUSERID, PROJECTID) VALUES ('Issue 3 PRO-2', 'Test issue 3', 5, NULL, CURDATE(), NULL, NULL, 1, 2, 2 );

#ATTACHMENT
INSERT INTO ATTACHMENT (FILENAME, FILETYPE, FILESIZE, UPLOADEDDATE, USERID, ISSUEID) VALUES ('TestFile1', 'TXT', 20, CURDATE(), 1, 1);
INSERT INTO ATTACHMENT (FILENAME, FILETYPE, FILESIZE, UPLOADEDDATE, USERID, ISSUEID) VALUES ('TestFile2', 'PDF', 520, CURDATE(), 1, 1);
INSERT INTO ATTACHMENT (FILENAME, FILETYPE, FILESIZE, UPLOADEDDATE, USERID, ISSUEID) VALUES ('TestFile1', 'PNG', 320, CURDATE(), 1, 2);
INSERT INTO ATTACHMENT (FILENAME, FILETYPE, FILESIZE, UPLOADEDDATE, USERID, ISSUEID) VALUES ('TestFile1', 'JPG', 220, CURDATE(), 1, 3);
INSERT INTO ATTACHMENT (FILENAME, FILETYPE, FILESIZE, UPLOADEDDATE, USERID, ISSUEID) VALUES ('TestFile2', 'CSV', 120, CURDATE(), 1, 3);

#COMMENT
INSERT INTO COMMENT (COMMENT, COMMENTDATE, USERID, ISSUEID) VALUES ('Testing comments on new project', CURDATE() -2, 1, 1);
INSERT INTO COMMENT (COMMENT, COMMENTDATE, USERID, ISSUEID) VALUES ('Testing more comments on new project', CURDATE(), 1, 1);
INSERT INTO COMMENT (COMMENT, COMMENTDATE, USERID, ISSUEID) VALUES ('Testing comments', CURDATE()-3 , 1, 2);
INSERT INTO COMMENT (COMMENT, COMMENTDATE, USERID, ISSUEID) VALUES ('Test comment', CURDATE()-2, 1, 2);
INSERT INTO COMMENT (COMMENT, COMMENTDATE, USERID, ISSUEID) VALUES ('Test more comments', CURDATE(), 1, 2);

#WORKFLOW
INSERT INTO WORKFLOW (WORKFLOWNAME, DESCRIPTION, PROJECTID) VALUES ('Support', 'Workflow for support', 5);
INSERT INTO WORKFLOW (WORKFLOWNAME, DESCRIPTION, PROJECTID) VALUES ('SF Dev', 'Workflow for storefront', 4);
INSERT INTO WORKFLOW (WORKFLOWNAME, DESCRIPTION, PROJECTID) VALUES ('Tech', 'Workflow for technology', 3);
INSERT INTO WORKFLOW (WORKFLOWNAME, DESCRIPTION, PROJECTID) VALUES ('Ecom Dev', 'Workflow for ecommerce', 2);
INSERT INTO WORKFLOW (WORKFLOWNAME, DESCRIPTION, PROJECTID) VALUES ('DB Dev', 'Workflow for database', 1);

#WORKFLOWSTEP
INSERT INTO WORKFLOWSTEP (STEPNAME, DESCRIPTION, WORKFLOWID) VALUES ('OPEN', 'Ticket just been created', 2);
INSERT INTO WORKFLOWSTEP (STEPNAME, DESCRIPTION, WORKFLOWID) VALUES ('READY FOR DEVELOPMENT', 'Issue seizing', 2);
INSERT INTO WORKFLOWSTEP (STEPNAME, DESCRIPTION, WORKFLOWID) VALUES ('IN DEVELOPMENT', 'Coding started', 2);
INSERT INTO WORKFLOWSTEP (STEPNAME, DESCRIPTION, WORKFLOWID) VALUES ('READY TO DEPLOY', 'Dev work completed and tested', 2);
INSERT INTO WORKFLOWSTEP (STEPNAME, DESCRIPTION, WORKFLOWID) VALUES ('CLOSED', 'Released to production', 2);


#WORKFLOWTRANSITION
INSERT INTO WORKFLOWTRANSITION (TRANSITIONNAME, DESCRIPTION, SOURCESTEPID, DESTINATIONSTEPID, WORKFLOWID, ACTIVE) VALUES ('READY FOR DEV', NULL, 1, 2, 2, 1);
INSERT INTO WORKFLOWTRANSITION (TRANSITIONNAME, DESCRIPTION, SOURCESTEPID, DESTINATIONSTEPID, WORKFLOWID, ACTIVE) VALUES ('BACK TO OPEN', NULL, 2, 1, 2, 1);
INSERT INTO WORKFLOWTRANSITION (TRANSITIONNAME, DESCRIPTION, SOURCESTEPID, DESTINATIONSTEPID, WORKFLOWID, ACTIVE) VALUES ('START DEV', NULL, 2, 3, 2, 1);
INSERT INTO WORKFLOWTRANSITION (TRANSITIONNAME, DESCRIPTION, SOURCESTEPID, DESTINATIONSTEPID, WORKFLOWID, ACTIVE) VALUES ('PASSED QA', NULL, 3, 4, 2, 1);
INSERT INTO WORKFLOWTRANSITION (TRANSITIONNAME, DESCRIPTION, SOURCESTEPID, DESTINATIONSTEPID, WORKFLOWID, ACTIVE) VALUES ('DEPLOYED', NULL, 4, 5, 2, 1);
