##Ticket Summary for each project
CREATE VIEW ProjectSummary AS
SELECT p.ProjectID, p.ProjectName, COUNT(i.IssueID) AS TotalIssues
FROM Project p
LEFT JOIN Issue i ON p.ProjectID = i.ProjectID
GROUP BY p.ProjectID, p.ProjectName;

##Tickets Not Closed
CREATE VIEW OpenIssues AS
SELECT IssueID, Summary, Status, Priority
FROM Issue
WHERE Status != 'Closed';

##Highest Priority tickets
CREATE VIEW HighestPriorityIssues AS
SELECT IssueID, Summary, Priority
FROM Issue
WHERE Priority = '1';

##Assigned by UserID
CREATE VIEW AssignedIssues AS
SELECT i.IssueID, i.Summary, i.AssigneeUserID, u.UserName AS AssigneeName
FROM Issue i
JOIN User u ON i.AssigneeUserID = u.UserID;

##Tickets Resolved by UserID
CREATE VIEW ResolvedIssuesByUser AS
SELECT AssigneeUserID, COUNT(IssueID) AS ResolvedIssueCount
FROM Issue
WHERE Status = 'Resolved'
GROUP BY AssigneeUserID;