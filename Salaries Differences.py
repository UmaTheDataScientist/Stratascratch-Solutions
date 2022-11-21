### https://platform.stratascratch.com/coding/10308-salaries-differences?code_type=2

### Salaries Differences


# Import your libraries
import pandas as pd

# Start writing code
db_employee.head()

db_dept.head()

x = pd.merge(db_employee,db_dept,how = 'inner',left_on = 'department_id',right_on = 'id')

Marketing_Max = x['salary'][x['department'] == 'marketing'].max()

Engineering_Max = x['salary'][x['department'] == 'engineering'].max()

abs(Marketing_Max - Engineering_Max)