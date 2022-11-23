'''
Popularity of Hack



https://platform.stratascratch.com/coding/10061-popularity-of-hack?code_type=2
'''

# Import your libraries
import pandas as pd

# Start writing code
facebook_employees.head()

facebook_hack_survey.head()

merge = pd.merge(left = facebook_employees,right = facebook_hack_survey,left_on = 'id',right_on = 'employee_id')
merge.head()
merge.groupby(by='location').agg({'location':'max','popularity':'mean'})