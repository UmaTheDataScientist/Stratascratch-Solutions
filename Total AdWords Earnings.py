/*
Total AdWords Earnings


https://platform.stratascratch.com/coding/10164-total-adwords-earnings?code_type=2
*/

# Import your libraries
import pandas as pd

# Start writing code
google_adwords_earnings.head()


google_adwords_earnings.groupby('business_type',as_index = False).agg({"adwords_earnings":"sum"})