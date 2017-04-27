%dw 1.0
%output application/json
// This DataWeave transform whatever you stored in your payload into the format we expect
---

	entries: payload map ((record, index) -> 
		       {
				EmployeeNumber: record.no,
				Dob: record.dob,
				FirstName: record.first_name,
				LastName: record.last_name,
				Gender: record.gender,
				HireDate: record.hire_date		
				}
				)
