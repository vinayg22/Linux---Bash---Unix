#!/bin/bash

<<comment

In this challenge, we practice using the sort command to sort input in text or TSV formats.

Given a text file, order the lines in lexicographical order.

Input Format

A text file.

Output Format

Output the text file with the lines reordered in lexicographical order.

Sample Input

Dr. Rajendra Prasad     January 26, 1950    May 13, 1962
Dr. S. Radhakrishnan        May 13, 1962    May 13, 1967
Dr. Zakir Hussain       May 13, 1967    August 24, 1969
Shri Varahagiri Venkata Giri        August 24, 1969 August 24, 1974
Shri Fakhruddin Ali Ahmed       August 24, 1974 February 11, 1977
Shri Neelam Sanjiva Reddy       July 25, 1977   July 25, 198
Sample Output

Dr. Rajendra Prasad     January 26, 1950    May 13, 1962
Dr. S. Radhakrishnan        May 13, 1962    May 13, 1967
Dr. Zakir Hussain       May 13, 1967    August 24, 1969
Shri Fakhruddin Ali Ahmed       August 24, 1974 February 11, 1977
Shri Neelam Sanjiva Reddy       July 25, 1977   July 25, 198
Shri Varahagiri Venkata Giri        August 24, 1969 Aug

comment

#Given a text file, order the lines in lexicographical order.
sort -d

#Given a text file, order the lines in reverse lexicographical order (i.e. Z-A instead of A-Z).
sort -r

#You are given a text file where each line contains a number. The numbers may be either an integer or have decimal places. There will be no extra characters other than the number or the newline at the end of each line. Sort the lines in ascending order - so that the first line holds the numerically smallest number, and the last line holds the numerically largest number.
sort -g

#You are given a file of text, where each line contains a number (which may be either an integer or have decimal places). There will be no extra characters other than the number or the newline at the end of each line. Sort the lines in descending order - - such that the first line holds the (numerically) largest number and the last line holds the (numerically) smallest number.
sort -r -g

#You are given a file of text,which contains temperature information about American cities, in TSV (tab-separated) format. The first column is the name of the city and the next four columns are the average temperature in the months of Jan, Feb, March and April (see the sample input). Rearrange the rows of the table in descending order of the values for the average temperature in January.
sort -n -k2 -r -t $'\t'

#You are given a file of tab separated weather data (TSV). There is no header column in this data file.
#The first five columns of this data are: (a) the name of the city (b) the average monthly temperature in Jan (in Fahreneit). (c) the average monthly temperature in April (in Fahreneit). (d) the average monthly temperature in July (in Fahreneit). (e) the average monthly temperature in October (in Fahreneit).
#You need to sort this file in ascending order of the second column (i.e. the average monthly temperature in January).
sort -n -k2 -t $'\t'

#You are given a file of pipe-delimited weather data (TSV). There is no header column in this data file. The first five columns of this data are: (a) the name of the city (b) the average monthly temperature in Jan (in Fahreneit). (c) the average monthly temperature in April (in Fahreneit). (d) the average monthly temperature in July (in Fahreneit). (e) the average monthly temperature in October (in Fahreneit).
#You need to sort this file in descending order of the second column (i.e. the average monthly temperature in January).
sort -n -k2 -r -t '|'

