/*
	Select the name, role, and state of staff who appear in the maintenance_logs table

Left join so that mechanics who do not belong to any dealership still appear

Only show:
    - logs where the staff_id is null in maintenance_logs
    - staff who have the role 'Mechanic'
*/
SELECT
    st.name,
    st.role,
    d.state
FROM maintenance_logs AS ml
LEFT JOIN staff AS st
    ON ml.staff_id = st.id
LEFT JOIN dealerships AS d
    ON st.dealership_id = d.id
WHERE
    ml.staff_id IS NULL
    AND st.role = 'Mechanic';
