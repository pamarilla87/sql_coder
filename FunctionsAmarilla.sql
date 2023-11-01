DELIMITER $$
CREATE FUNCTION `getTotalIssuesForProject`(project_id INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE totalIssues INT;
    
    SELECT COUNT(*) INTO totalIssues
    FROM Issue
    WHERE ProjectID = project_id;
    
    RETURN totalIssues;
END $$

CREATE FUNCTION CalculateAverageResolutionTime(
    project_id INT,
    start_date DATE,
    end_date DATE
) 
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total_resolution_time DECIMAL(10, 2);
    DECLARE issue_count INT;
    DECLARE average_resolution_time DECIMAL(10, 2);

    SELECT SUM(DATEDIFF(ResolutionDate, CreatedDate)), COUNT(*)
    INTO total_resolution_time, issue_count
    FROM Issue
    WHERE ProjectID = project_id
    AND ResolutionDate IS NOT NULL
    AND CreatedDate BETWEEN start_date AND end_date;

    IF issue_count > 0 THEN
        SET average_resolution_time = total_resolution_time / issue_count;
    ELSE
        SET average_resolution_time = 0.00;
    END IF;

    RETURN average_resolution_time;
END $$