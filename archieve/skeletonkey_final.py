import numpy as np
import scipy as sc
import pandas as pd
import sys
import os
import time
import tables
import scipy.io
import itertools
from itertools import chain
import glob
import re
import json
import tables
from datetime import datetime


s_ = 989001025046418
s__ = 989001025046476
s___ = 989001025046495

gender = 'female'
color = 'green'
race = 'listerhooded'


def get_recording_hour(filename):
    return int(filename.split('_')[1])

def get_recording_beginning(filename):
    return filename.split('_')[0]

def get_recording_name(filename):
    return filename.split('_')[2]


def find_missing(lst): 
    return sorted(set(range(lst[0], lst[-1])) - set(lst)) 

def filelist():
    return sorted([f for f in glob.glob("*.hdf5")])


def get_col_for_subject_pros(fh, subj_, colname, nan_):
    with pd.HDFStore(fh, 'r') as hdf:
        hdf_keys = hdf.keys()
        counter = 0
        for i4 in range(len(hdf_keys)):
            if hdf_keys[i4] == "/subjects/{}/antenna/ant1".format(subj_):
                a_sub = pd.read_hdf(hdf, key = "/subjects/{}/antenna/ant1".format(subj_))
                if "{}".format(colname) in a_sub :
                    extracted = hourly_correction(hdf, subj_, a_sub["{}".format(colname)])
                else :
                    extracted = nan_
#                    print("it is empty")
                counter += 1
            if hdf_keys[i4] != "/subjects/{}/antenna/ant1".format(subj_):
                continue
        if counter == 0 :
            extracted = nan_
    return extracted

def hourly_correction(fhh, subj__, temp_parameter):
    temp_hour_stamps = {}
    temp_var = {}
    with pd.HDFStore(fhh, 'r') as hdf:
        a_sub = pd.read_hdf(hdf, key = "/subjects/{}/antenna/ant1".format(subj__))
        temp_hour_stamps = a_sub["t"]
    if len(temp_hour_stamps) == 90000 :
        temp_var = temp_parameter
    elif len(temp_hour_stamps) < 90000 :
        temp_var = missing_dp_hourly(temp_hour_stamps, temp_parameter)
    elif len(temp_hour_stamps) > 90000 :
        temp_var = additional_dp_hourly(temp_hour_stamps, temp_parameter) 
        
    return temp_var

def additional_dp_hourly(real_t_list, time_series):
    Hz = 40
    temp_t_hourly = []
    for temp_index_t in range(0, 3600000,Hz):
        temp_t_hourly.append(temp_index_t)
    additional_data_point_list = list(set(real_t_list).difference(temp_t_hourly))
    temp = [x / Hz for x in additional_data_point_list]
    additional_indices = [int(x) for x in temp]
    return time_series.drop(time_series.index[additional_indices])

def missing_dp_hourly(real_t_list, time_series):
    Hz = 40
    temp_t_hourly = []
    for temp_index_t in range(0, 3600000,Hz):
        temp_t_hourly.append(temp_index_t)
    missing_data_point_list = list(set(temp_t_hourly).difference(real_t_list))
    temp = [x / Hz for x in missing_data_point_list]
    missing_indices = [int(x) for x in temp]
    for temp_index in range(len(missing_indices)):
        temp_mf = missing_indices[temp_index]
        time_series.loc[temp_mf] = np.nan
    return time_series.reset_index(drop=True)

def get_start_time_from_filename(fh):
    rec_start, seg_num, rec_name, seg_start = (
    fh.filename[0:-5].split(os.path.sep)[-1].split('_'))
    return int(rec_start)


def initial_missing_hours():
    file_list = filelist()
    with pd.HDFStore(file_list[0], 'r') as hdf:
        with pd.HDFStore(hdf, 'r') as hdff:
            start_time = get_start_time_from_filename(hdff)
#         print(start_time)
        t_0 = datetime.fromtimestamp(round(start_time/1000))
#         print(t_0)
        data_node = hdf.get_node('/data/0')
        for timestamp, reading in data_node[:]:
            t_ = datetime.fromtimestamp(round(timestamp/1000))
        missinghours = int(round(((t_ - t_0).total_seconds()/(60*60))))
    return missinghours

def hourly_difference_from_pn22(f_l):
    with pd.HDFStore(f_l, 'r') as hdf:
        file_list = filelist()
        with pd.HDFStore(file_list[0], 'r') as hdff:
            start_time = get_start_time_from_filename(hdff)
#         print(start_time)
        t_0 = datetime.fromtimestamp(round(start_time/1000))
#         print(t_0)
        data_node = hdf.get_node('/data/0')
        for timestamp, reading in data_node[:]:
            t_ = datetime.fromtimestamp(round(timestamp/1000))
        answer = int(round(((t_ - t_0).total_seconds()/(60*60))))
    return answer-initial_missing_hours()

def missing_hours_to_fill(lst_):
    lst_h = []
    for i1 in range(len(lst_)):
        lst_h.append(hourly_difference_from_pn22(lst_[i1]))
    lst_mis_h = find_missing(lst_h)
    if lst_h[-1] < 1799 :
        temp_cons = lst_h[-1]
        temp_var = 1799 - lst_h[-1]
        for i2 in range(temp_var):
            temp = temp_cons+i2+1
            print(temp)
            lst_mis_h.append(temp)
    return lst_mis_h




temper= []
for temp_index in range(90000):
    temper.append(np.nan)
nan_list = np.array(temper)


temperature_rat_1 = {}
temperature_rat_2 = {}
temperature_rat_3 = {}

antenna_rat_1 = {}
antenna_rat_2 = {}
antenna_rat_3 = {}

bx_rat_1 = {}
bx_rat_2 = {}
bx_rat_3 = {}

by_rat_1 = {}
by_rat_2 = {}
by_rat_3 = {}

drinking_rat_1 = {}
drinking_rat_2 = {}
drinking_rat_3 = {}

rearing_rat_1 = {}
rearing_rat_2 = {}
rearing_rat_3 = {}

distance_rat_1 = {}
distance_rat_2 = {}
distance_rat_3 = {}

transition_rat_1 = {}
transition_rat_2 = {}
transition_rat_3 = {}

file_list = filelist()
print(len(file_list))
for zz in range(len(file_list)):
    print(zz)
    hour_index = hourly_difference_from_pn22(file_list[zz])
    temperature_rat_1[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s_, "temperature", nan_list))
    temperature_rat_2[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s__, "temperature", nan_list))
    temperature_rat_3[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s___, "temperature",nan_list))
    
    antenna_rat_1[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s_, "antenna", nan_list))
    antenna_rat_2[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s__, "antenna", nan_list))
    antenna_rat_3[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s___, "antenna", nan_list))
    
    bx_rat_1[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s_, "bx", nan_list))
    bx_rat_2[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s__, "bx", nan_list))
    bx_rat_3[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s___, "bx", nan_list))

    by_rat_1[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s_, "by", nan_list))
    by_rat_2[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s__, "by", nan_list))
    by_rat_3[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s___, "by", nan_list))
    
    distance_rat_1[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s_, "distance", nan_list))
    distance_rat_2[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s__, "distance", nan_list))
    distance_rat_3[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s___, "distance", nan_list))    

    transition_rat_1[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s_, "transition", nan_list))
    transition_rat_2[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s__, "transition", nan_list))
    transition_rat_3[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s___, "transition", nan_list))
    
    drinking_rat_1[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s_, "Drinking", nan_list))
    drinking_rat_2[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s__, "Drinking", nan_list))
    drinking_rat_3[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s___, "Drinking", nan_list))
    
    rearing_rat_1[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s_, "Rearing", nan_list))
    rearing_rat_2[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s__, "Rearing", nan_list))
    rearing_rat_3[hour_index] = np.array(get_col_for_subject_pros(file_list[zz], s___, "Rearing", nan_list))
    
missing_hour_list = missing_hours_to_fill(file_list)
print(missing_hour_list)
for zz in range(len(missing_hour_list)):
    index = missing_hour_list[zz]
    temperature_rat_1[index] = nan_list
    temperature_rat_2[index] = nan_list
    temperature_rat_3[index] = nan_list
    
    antenna_rat_1[index] = nan_list
    antenna_rat_2[index] = nan_list
    antenna_rat_3[index] = nan_list
    
    bx_rat_1[index] = nan_list
    bx_rat_2[index] = nan_list
    bx_rat_3[index] = nan_list
    
    by_rat_1[index] = nan_list
    by_rat_2[index] = nan_list
    by_rat_3[index] = nan_list
    
    distance_rat_1[index] = nan_list
    distance_rat_2[index] = nan_list
    distance_rat_3[index] = nan_list
    
    transition_rat_1[index] = nan_list
    transition_rat_2[index] = nan_list
    transition_rat_3[index] = nan_list
    
    drinking_rat_1[index] = nan_list
    drinking_rat_2[index] = nan_list
    drinking_rat_3[index] = nan_list
    
    rearing_rat_1[index] = nan_list
    rearing_rat_2[index] = nan_list
    rearing_rat_3[index] = nan_list


vals = []
index1 = int(len(temperature_rat_1.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(temperature_rat_1[i][j])
X1 = np.array(vals)
print(np.nanmean(X1))
sc.io.savemat('temperature_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s_%10000)+'.mat', {"temperature_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s_%10000):X1})

vals = []
index1 = int(len(temperature_rat_2.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(temperature_rat_2[i][j])
X1 = np.array(vals)
print(np.nanmean(X1))
sc.io.savemat('temperature_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s__%10000)+'.mat', {"temperature_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s__%10000):X1})

vals = []
index1 = int(len(temperature_rat_3.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(temperature_rat_3[i][j])
X1 = np.array(vals)
print(np.nanmean(X1))
sc.io.savemat('temperature_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s___%10000)+'.mat', {"temperature_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s___%10000):X1})



vals = []
index1 = int(len(antenna_rat_1.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(antenna_rat_1[i][j])
X1 = np.array(vals)
sc.io.savemat('antenna_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s_%10000)+'.mat', {"antenna_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s_%10000):X1})

vals = []
index1 = int(len(antenna_rat_2.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(antenna_rat_2[i][j])
X1 = np.array(vals)
sc.io.savemat('antenna_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s__%10000)+'.mat', {"antenna_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s__%10000):X1})

vals = []
index1 = int(len(antenna_rat_3.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(antenna_rat_3[i][j])
X1 = np.array(vals)
sc.io.savemat('antenna_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s___%10000)+'.mat', {"antenna_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s___%10000):X1})




vals = []
index1 = int(len(bx_rat_1.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(bx_rat_1[i][j])
X1 = np.array(vals)
sc.io.savemat('bx_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s_%10000)+'.mat', {"bx_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s_%10000):X1})

vals = []
index1 = int(len(bx_rat_2.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(bx_rat_2[i][j])
X1 = np.array(vals)
sc.io.savemat('bx_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s__%10000)+'.mat', {"bx_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s__%10000):X1})

vals = []
index1 = int(len(bx_rat_3.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(bx_rat_3[i][j])
X1 = np.array(vals)
sc.io.savemat('bx_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s___%10000)+'.mat', {"bx_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s___%10000):X1})



vals = []
index1 = int(len(by_rat_1.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(by_rat_1[i][j])
X1 = np.array(vals)
sc.io.savemat('by_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s_%10000)+'.mat', {"by_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s_%10000):X1})

vals = []
index1 = int(len(by_rat_2.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(by_rat_2[i][j])
X1 = np.array(vals)
sc.io.savemat('by_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s__%10000)+'.mat', {"by_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s__%10000):X1})

vals = []
index1 = int(len(by_rat_3.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(by_rat_3[i][j])
X1 = np.array(vals)
sc.io.savemat('by_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s___%10000)+'.mat', {"by_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s___%10000):X1})




vals = []
index1 = int(len(distance_rat_1.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(distance_rat_1[i][j])
X1 = np.array(vals)
sc.io.savemat('distance_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s_%10000)+'.mat', {"distance_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s_%10000):X1})

vals = []
index1 = int(len(distance_rat_2.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(distance_rat_2[i][j])
X1 = np.array(vals)
sc.io.savemat('distance_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s__%10000)+'.mat', {"distance_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s__%10000):X1})

vals = []
index1 = int(len(distance_rat_3.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(distance_rat_3[i][j])
X1 = np.array(vals)
sc.io.savemat('distance_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s___%10000)+'.mat', {"distance_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s___%10000):X1})





vals = []
index1 = int(len(transition_rat_1.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(transition_rat_1[i][j])
X1 = np.array(vals)
sc.io.savemat('transition_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s_%10000)+'.mat', {"transition_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s_%10000):X1})

vals = []
index1 = int(len(transition_rat_2.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(transition_rat_2[i][j])
X1 = np.array(vals)
sc.io.savemat('transition_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s__%10000)+'.mat', {"transition_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s__%10000):X1})

vals = []
index1 = int(len(transition_rat_3.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(transition_rat_3[i][j])
X1 = np.array(vals)
sc.io.savemat('transition_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s___%10000)+'.mat', {"transition_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s___%10000):X1})




vals = []
index1 = int(len(drinking_rat_1.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(drinking_rat_1[i][j])
X1 = np.array(vals)
sc.io.savemat('drinking_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s_%10000)+'.mat', {"drinking_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s_%10000):X1})

vals = []
index1 = int(len(drinking_rat_2.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(drinking_rat_2[i][j])
X1 = np.array(vals)
sc.io.savemat('drinking_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s__%10000)+'.mat', {"drinking_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s__%10000):X1})

vals = []
index1 = int(len(drinking_rat_3.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(drinking_rat_3[i][j])
X1 = np.array(vals)
sc.io.savemat('drinking_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s___%10000)+'.mat', {"drinking_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s___%10000):X1})



vals = []
index1 = int(len(rearing_rat_1.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(rearing_rat_1[i][j])
X1 = np.array(vals)
sc.io.savemat('rearing_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s_%10000)+'.mat', {"rearing_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s_%10000):X1})

vals = []
index1 = int(len(rearing_rat_2.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(rearing_rat_2[i][j])
X1 = np.array(vals)
sc.io.savemat('rearing_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s__%10000)+'.mat', {"rearing_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s__%10000):X1})

vals = []
index1 = int(len(rearing_rat_3.keys()))
for i in range(index1):
    for j in range(90000):
        vals.append(rearing_rat_3[i][j])
X1 = np.array(vals)
sc.io.savemat('rearing_'+'{}'.format(gender)+'_'+'{}'.format(race)+'_'+'{}'.format(s___%10000)+'.mat', {"rearing_"+"{}".format(gender)+"_"+"{}".format(race)+"_"+"{}".format(s___%10000):X1})
