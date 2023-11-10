DELIMITER $$
CREATE PROCEDURE GetProjectIssuesInPriority(IN project_id INT, IN priority_id INT)
BEGIN
    SELECT
        i.IssueID,
        i.Summary,
        i.Description,
        i.Priority
    FROM
        Issue i
    INNER JOIN
        Priority p ON i.Priority = p.PriorityID
    WHERE
        i.ProjectID = project_id
        AND p.PriorityID = priority_id;
END $$


CREATE PROCEDURE UpdatePriority(IN issue_id INT, IN new_priority_id INT)
BEGIN
    UPDATE Issue
    SET Priority = new_priority_id
    WHERE IssueID = issue_id;
END $$