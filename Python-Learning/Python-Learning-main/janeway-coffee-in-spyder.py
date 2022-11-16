# -*- coding: utf-8 -*-
"""
Created on Wed Jul 27 13:18:33 2022

@author: john.mccourt
"""





#Based on the Picard - Make it So script I've deleveloped a script which shows when and how many times Captain Janeway said coffee
#I found thar markup from the notebook was creating errors in Sypder, so I've resolved it


import json




# What would you like to find?

line_to_match = "coffee"

character = "JANEWAY"

series = "VOY"



data = json.load(open('../../../Downloads/all_series_lines.json', 'r'))



print("Searched " + str(len(data[series].keys())) + " Star Trek Voyager episodes")

matching_lines = []

voy_episodes = data[series].keys()

episodes = {
 "Emergence"    
}

for ep in voy_episodes:

    script = data[series][ep]

    character_lines = script[character]

    

    for l in character_lines:

        if line_to_match in l.lower():

            matching_lines.append((ep, l))




print('Captain Janeway talked about coffee {} times'.format(len(matching_lines)))

print('---------------------------')

for i, (ep, l) in enumerate(matching_lines):
    
    # The +2 handles the 0-index offset and Encounter at Farpoint issue

    
    print('[{}]: {}'.format(ep, l))