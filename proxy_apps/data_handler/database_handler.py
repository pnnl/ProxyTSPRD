# import libraries
import sqlite3

import numpy as np
import pandas as pd
import tensorflow as tf

class SQLiteHandler():
	def __init__(self, dbfile, data_table, prediction_table):
		self.database_file = dbfile
		self.data_table = data_table
		self.prediction_table = prediction_table

	def fetch_data(self, start_dt=None, end_dt=None):
		# get data
		conn = sqlite3.connect(self.database_file)
		try:
			df = pd.read_sql_query("select * from " + self.data_table + ";", conn, index_col=['datetime'], parse_dates=['datetime'])
		finally:
			conn.close()

		return df