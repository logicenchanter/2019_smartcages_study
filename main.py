import numpy as np
from scipy import stats
import pandas as pd
import glob
from datetime import datetime
import math
from itertools import cycle
import sys
import logging
import os
import pickle

def outliers(s, replace=np.nan):
    Q1, Q3 = np.percentile(s, [5 ,95])
    IQR = Q3-Q1
    return s.where((s > (Q1 - 1.5 * IQR)) & (s < (Q3 + 1.5 * IQR)), replace)


def filelist():
    return sorted([f for f in glob.glob("*.hdf5")])


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    file_list = filelist()
    #animal1 = int(sys.argv[1])
    #animal2 = int(sys.argv[2])
    #animal3 = int(sys.argv[3])
    #cage = str(sys.argv[4])
    #strain = str(sys.argv[5])
    #gender = str(sys.argv[6])
    animal1 = int(989001025046460)
    animal2 = int(989001025046464)
    animal3 = int(989001025046478)
    cage = str("green")
    strain = str("wistar")
    gender = str("female")
    print(animal1, animal2, animal3, cage, strain, gender)
    
    
    file_list = filelist()
    start_pnd = 22
    with pd.HDFStore(file_list[0], 'r') as hdf:
        df_temp  = hdf["/data/0"]
        t_i = df_temp['time'][0]
        print(datetime.fromtimestamp(round(t_i/1000)))
        hdf.close()
    with pd.HDFStore(file_list[-1], 'r') as hdf:
        df_temp1  = hdf["/data/0"]
        last_ = len(df_temp1['time'])
        t_f = df_temp1['time'][last_-1]
        print(datetime.fromtimestamp(math.ceil(t_f/1000)))
        hdf.close()
    total_recording_time = datetime.fromtimestamp(round(t_f/1000)) - datetime.fromtimestamp(round(t_i/1000))
    total_recording_time_s = (int(total_recording_time.total_seconds()))
    total_recoring_time_h = math.ceil(total_recording_time_s/3600)
    total_recording_periods = total_recoring_time_h*90000
    total_recoring_time_d = math.ceil(total_recoring_time_h/24)
    
    
    ms_array = np.arange(0, 3600000, 40)
    pnd_array = np.arange(start_pnd,start_pnd+total_recoring_time_d)
    Xold =pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods, freq="40L").strftime('%H')

    y = np.array([[str('00'), str('light')],[str('01'), str('light')],[str('02'), str('light')]
             ,[str('03'), str('light')],[str('04'), str('light')],[str('05'), str('light')]
             ,[str('06'), str('light')],[str('07'), str('light')],[str('08'), str('dark')]
             ,[str('09'), str('dark')],[str('10'), str('dark')],[str('11'), str('dark')]
             ,[str('12'), str('dark')],[str('13'), str('dark')],[str('14'), str('dark')]
             ,[str('15'), str('dark')],[str('16'), str('dark')],[str('17'), str('dark')]
             ,[str('18'), str('dark')],[str('19'), str('dark')],[str('20'), str('light')]
             ,[str('21'), str('light')],[str('22'), str('light')],[str('23'), str('light')]])

    states_new = pd.Series(Xold).map(pd.Series(y[:, 1], index=y[:, 0])).values

    df1 = pd.DataFrame(index=range(total_recording_periods), columns = ['date', 'time', 'pnd',
                                                       'ms', 'state',
                                                       'antenna', 'bx', 'by',
                                                       'distance', 'separation_{}'.format(animal2),
                                                       'separation_{}'.format(animal3), 'social_interaction',
                                                       'temperature', 'transition'])

    df1['date'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods, freq="40L").strftime('%Y-%m-%d')
    df1['time'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods, freq="40L").strftime('%H:%M:%S')
    df1['ms'] = df1.index.map(dict(zip(df1.index, cycle(ms_array))))
    df1['pnd'] = np.tile(pnd_array, (90000* total_recoring_time_h, 1))
    df1["state"] = states_new

    df2 = pd.DataFrame(index=range(total_recording_periods), columns = ['date', 'time', 'pnd',
                                                       'ms', 'state',
                                                       'antenna', 'bx', 'by',
                                                       'distance', 'separation_{}'.format(animal1),
                                                       'separation_{}'.format(animal3), 'social_interaction',
                                                       'temperature', 'transition'])

    df2['date'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods, freq="40L").strftime('%Y-%m-%d')
    df2['time'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods, freq="40L").strftime('%H:%M:%S')
    df2['ms'] = df2.index.map(dict(zip(df2.index, cycle(ms_array))))
    df2['pnd'] = np.tile(pnd_array, (90000* total_recoring_time_h, 1))
    df2["state"] = states_new

    df3 = pd.DataFrame(index=range(total_recording_periods), columns = ['date', 'time', 'pnd',
                                                       'ms', 'state',
                                                       'antenna', 'bx', 'by',
                                                       'distance', 'separation_{}'.format(animal1),
                                                       'separation_{}'.format(animal2), 'social_interaction',
                                                       'temperature', 'transition'])

    df3['date'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods, freq="40L").strftime('%Y-%m-%d')
    df3['time'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods, freq="40L").strftime('%H:%M:%S')
    df3['ms'] = df3.index.map(dict(zip(df3.index, cycle(ms_array))))
    df3['pnd'] = np.tile(pnd_array, (90000* total_recoring_time_h, 1))
    df3["state"] = states_new
    
    
    
    '''
Here we mark the index in the main hdf file and find the corresponding index in the extraction dataframes.
right now, I am sure it can deal with missing animal case.
'''

    def aaa(file_, hdf_, df_, animal, di, ti, df, tf):
        try:
            df_temp = hdf_["/subjects/{}/antenna/ant1".format(animal)]        
            index_i_h = df_.loc[(df_['date'] == di) & (df_['time'] == ti)].index[0]
            index_f_h = df_.loc[(df_['date'] == df) & (df_['time'] == tf)].index[-1]
            df__ = df_[index_i_h:index_f_h]
            for inner_loop1 in range(len(df_temp)-1):
                t_inner = df_temp.loc[inner_loop1].t
                if ((t_inner in ms_array) == True) and (len(df__.loc[df__['ms'] == t_inner]) !=0 ) :
                    index_ = df__.loc[df__['ms'] == t_inner].index.values[0]
                    df_.at[index_ , 'antenna'] = df_temp.loc[df_temp['t'] == t_inner].antenna.values[0]
                    df_.at[index_ , 'bx'] = df_temp.loc[df_temp['t'] == t_inner].bx.values[0]
                    df_.at[index_ , 'by'] = df_temp.loc[df_temp['t'] == t_inner].by.values[0]
                    df_.at[index_ , 'temperature'] = df_temp.loc[df_temp['t'] == t_inner].temperature.values[0]
                    df_.at[index_ , 'transition'] = df_temp.loc[df_temp['t'] == t_inner].transition.values[0]
        except:
            logging.info("The file {} is missing at least one animal {} in this recording!".format(file_, animal))
            #print("The file {} is missing at least one animal {} in this recording!".format(file_, animal))
        finally:
            print(file_, animal)
            return df_ 


    def distance_(x, y):
        x_ = np.delete(x, 0)
        x_ = np.append(x_, x[-1])
        y_ = np.delete(y, 0)
        y_ = np.append(y_, y[-1])
        d = np.sqrt((np.abs(x_ - x))**2 + (np.abs(y_ - y))**2)
        return(d)

    def separation_(x1, y1, x2, y2):
        return(np.sqrt((np.abs(x2 - x1))**2 + (np.abs(y2 - y1))**2))

    def social_interaction(d1, d2):
        max_ = np.nanmax([d1, d2])
        sep_ = (d1 + d2)/(2*max_)
        sep_[sep_ == np.inf] == 0
        return (1 - sep_)
    
    
    
    
    
    
    
    #Main reading is done here.


    logfile = 'LOG.log'
    if(os.path.isfile(logfile)):
        os.remove(logfile)
        
        
    file_handler = logging.FileHandler(logfile, mode='w')
    file_handler.setLevel(logging.DEBUG)


    logger = logging.getLogger()
    logger.setLevel(logging.DEBUG)
    logger.addHandler(file_handler)

    #path_ = sys.getcwd()

    for i in range(len(file_list)):
        hdf = pd.HDFStore(file_list[i], 'r')
        print(i)
        df_temp_t  = hdf["/data/0"]
        t_i_temp = df_temp_t['time'][0]
        t_f_temp = df_temp_t['time'][len(df_temp_t['time'])-1]
        d_i_h = datetime.fromtimestamp(round(t_i_temp/1000)).strftime('%Y-%m-%d')
        t_i_h = datetime.fromtimestamp(round(t_i_temp/1000)).strftime('%H:%M:%S')
        d_f_h = datetime.fromtimestamp(round(t_f_temp/1000)).strftime('%Y-%m-%d')
        t_f_h = datetime.fromtimestamp(round(t_f_temp/1000)).strftime('%H:%M:%S')
    

        df1 = aaa(file_list[i], hdf, df1, animal1, d_i_h, t_i_h, d_f_h, t_f_h)
        df2 = aaa(file_list[i], hdf, df2, animal2, d_i_h, t_i_h, d_f_h, t_f_h)
        df3 = aaa(file_list[i], hdf, df3, animal3, d_i_h, t_i_h, d_f_h, t_f_h)

        hdf.close()





    df1['distance'] = distance_(np.array(df1['bx'].astype(float)),np.array(df1['by'].astype(float)))
    df2['distance'] = distance_(np.array(df2['bx'].astype(float)),np.array(df2['by'].astype(float)))
    df3['distance'] = distance_(np.array(df3['bx'].astype(float)),np.array(df3['by'].astype(float)))

    df1['separation_{}'.format(animal2)] = separation_(np.array(df1['bx'].astype(float)),np.array(df1['by'].astype(float)),
           np.array(df2['bx'].astype(float)),np.array(df2['by'].astype(float)))
    df1['separation_{}'.format(animal3)] = separation_(np.array(df1['bx'].astype(float)),np.array(df1['by'].astype(float)),
           np.array(df3['bx'].astype(float)),np.array(df3['by'].astype(float)))


    df2['separation_{}'.format(animal1)] = separation_(np.array(df2['bx'].astype(float)),np.array(df2['by'].astype(float)),
           np.array(df1['bx'].astype(float)),np.array(df1['by'].astype(float)))
    df2['separation_{}'.format(animal3)] = separation_(np.array(df2['bx'].astype(float)),np.array(df2['by'].astype(float)),
           np.array(df3['bx'].astype(float)),np.array(df3['by'].astype(float)))


    df3['separation_{}'.format(animal1)] = separation_(np.array(df3['bx'].astype(float)),np.array(df3['by'].astype(float)),
           np.array(df1['bx'].astype(float)),np.array(df1['by'].astype(float)))
    df3['separation_{}'.format(animal2)] = separation_(np.array(df3['bx'].astype(float)),np.array(df3['by'].astype(float)),
           np.array(df2['bx'].astype(float)),np.array(df2['by'].astype(float)))


    df1['social_interaction'] = social_interaction(np.array(df1['separation_{}'.format(animal2)].astype(float)),
                                              np.array(df1['separation_{}'.format(animal3)].astype(float)))


    df2['social_interaction'] = social_interaction(np.array(df2['separation_{}'.format(animal1)].astype(float)),
                                              np.array(df2['separation_{}'.format(animal3)].astype(float)))


    df3['social_interaction'] = social_interaction(np.array(df3['separation_{}'.format(animal1)].astype(float)),
                                              np.array(df3['separation_{}'.format(animal2)].astype(float)))


    logging.shutdown()

    
    df1.to_pickle('animal_{}_{}_{}_{}.pickle'.format(animal1, strain, gender, cage))
    df2.to_pickle('animal_{}_{}_{}_{}.pickle'.format(animal2, strain, gender, cage))
    df2.to_pickle('animal_{}_{}_{}_{}.pickle'.format(animal3, strain, gender, cage))






#################
################# MINUTE
df1['temperature'] = df1.groupby('pnd')['temperature'].apply(outliers)

total_recording_time_m = math.ceil(total_recording_time_s/60)
total_recording_periods_m = total_recoring_time_h*60


Xold =pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods_m, freq="T").strftime('%H')
Xold_ar = np.array(Xold)

y = np.array([[str('00'), str('light')],[str('01'), str('light')],[str('02'), str('light')]
             ,[str('03'), str('light')],[str('04'), str('light')],[str('05'), str('light')]
             ,[str('06'), str('light')],[str('07'), str('light')],[str('08'), str('dark')]
             ,[str('09'), str('dark')],[str('10'), str('dark')],[str('11'), str('dark')]
             ,[str('12'), str('dark')],[str('13'), str('dark')],[str('14'), str('dark')]
             ,[str('15'), str('dark')],[str('16'), str('dark')],[str('17'), str('dark')]
             ,[str('18'), str('dark')],[str('19'), str('dark')],[str('20'), str('light')]
             ,[str('21'), str('light')],[str('22'), str('light')],[str('23'), str('light')]])

states_new = pd.Series(Xold).map(pd.Series(y[:, 1], index=y[:, 0])).values



df1_m = pd.DataFrame(index=range(total_recording_periods_m), columns = ['date', 'time', 'pnd', 'state',
                                                       'distance', 'separation_{}'.format(animal2),
                                                       'separation_{}'.format(animal3), 'social_interaction',
                                                       'temperature', 'transition'])





df1_m['date'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods_m, freq="T").strftime('%Y-%m-%d')
df1_m['time'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods_m, freq="T").strftime('%H:%M')
df1_m['pnd'] = np.tile(pnd_array, (60* total_recoring_time_h, 1))
df1_m["state"] = states_new



n_minute = 25*60
given_array = np.array(df1['distance'])
# calculates the average
avgResult = np.nansum(given_array.reshape(-1, n_minute), axis=1)
df1_m["distance"] = avgResult

given_array = np.array(df1['separation_{}'.format(animal2)])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_minute), axis=1)
df1_m["separation_{}".format(animal2)] = avgResult


given_array = np.array(df1['separation_{}'.format(animal3)])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_minute), axis=1)
df1_m["separation_{}".format(animal3)] = avgResult


given_array = np.array(df1['social_interaction'])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_minute), axis=1)
df1_m["social_interaction"] = avgResult

given_array = np.array(df1['temperature'])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_minute), axis=1)
df1_m["temperature"] = avgResult










df2['temperature'] = df2.groupby('pnd')['temperature'].apply(outliers)



df2_m = pd.DataFrame(index=range(total_recording_periods_m), columns = ['date', 'time', 'pnd', 'state',
                                                       'distance', 'separation_{}'.format(animal1),
                                                       'separation_{}'.format(animal3), 'social_interaction',
                                                       'temperature', 'transition'])


df2_m['date'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods_m, freq="T").strftime('%Y-%m-%d')
df2_m['time'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods_m, freq="T").strftime('%H:%M')
df2_m['pnd'] = np.tile(pnd_array, (60* total_recoring_time_h, 1))
df2_m["state"] = states_new



n_minute = 25*60
given_array = np.array(df2['distance'])
# calculates the average
avgResult = np.nansum(given_array.reshape(-1, n_minute), axis=1)
df2_m["distance"] = avgResult

given_array = np.array(df2['separation_{}'.format(animal1)])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_minute), axis=1)
df2_m["separation_{}".format(animal1)] = avgResult


given_array = np.array(df2['separation_{}'.format(animal3)])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_minute), axis=1)
df2_m["separation_{}".format(animal3)] = avgResult


given_array = np.array(df2['social_interaction'])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_minute), axis=1)
df2_m["social_interaction"] = avgResult

given_array = np.array(df2['temperature'])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_minute), axis=1)
df2_m["temperature"] = avgResult












df3['temperature'] = df3.groupby('pnd')['temperature'].apply(outliers)



df3_m = pd.DataFrame(index=range(total_recording_periods_m), columns = ['date', 'time', 'pnd', 'state',
                                                       'distance', 'separation_{}'.format(animal1),
                                                       'separation_{}'.format(animal2), 'social_interaction',
                                                       'temperature', 'transition'])





df3_m['date'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods_m, freq="T").strftime('%Y-%m-%d')
df3_m['time'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods_m, freq="T").strftime('%H:%M')
df3_m['pnd'] = np.tile(pnd_array, (60* total_recoring_time_h, 1))
df3_m["state"] = states_new

given_array = np.array(df3['distance'])
# calculates the average
avgResult = np.nansum(given_array.reshape(-1, n_minute), axis=1)
df3_m["distance"] = avgResult

given_array = np.array(df3['separation_{}'.format(animal2)])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_minute), axis=1)
df3_m["separation_{}".format(animal2)] = avgResult


given_array = np.array(df3['separation_{}'.format(animal1)])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_minute), axis=1)
df3_m["separation_{}".format(animal1)] = avgResult


given_array = np.array(df3['social_interaction'])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_minute), axis=1)
df3_m["social_interaction"] = avgResult

given_array = np.array(df3['temperature'])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_minute), axis=1)
df3_m["temperature"] = avgResult





df1_m.to_pickle('animal_{}_{}_{}_{}_m.pickle'.format(animal1, strain, gender, cage))
df2_m.to_pickle('animal_{}_{}_{}_{}_m.pickle'.format(animal2, strain, gender, cage))
df2_m.to_pickle('animal_{}_{}_{}_{}_m.pickle'.format(animal3, strain, gender, cage))

#################
################# HOUR



total_recording_periods_h = total_recoring_time_h


Xold =pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods_h, freq="H").strftime('%H')
Xold_ar = np.array(Xold)

y = np.array([[str('00'), str('light')],[str('01'), str('light')],[str('02'), str('light')]
             ,[str('03'), str('light')],[str('04'), str('light')],[str('05'), str('light')]
             ,[str('06'), str('light')],[str('07'), str('light')],[str('08'), str('dark')]
             ,[str('09'), str('dark')],[str('10'), str('dark')],[str('11'), str('dark')]
             ,[str('12'), str('dark')],[str('13'), str('dark')],[str('14'), str('dark')]
             ,[str('15'), str('dark')],[str('16'), str('dark')],[str('17'), str('dark')]
             ,[str('18'), str('dark')],[str('19'), str('dark')],[str('20'), str('light')]
             ,[str('21'), str('light')],[str('22'), str('light')],[str('23'), str('light')]])

states_new = pd.Series(Xold).map(pd.Series(y[:, 1], index=y[:, 0])).values



df1_h = pd.DataFrame(index=range(total_recording_periods_h), columns = ['date', 'time', 'pnd', 'state',
                                                       'distance', 'separation_{}'.format(animal2),
                                                       'separation_{}'.format(animal3), 'social_interaction',
                                                       'temperature', 'transition'])





df1_h['date'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods_h, freq="H").strftime('%Y-%m-%d')
df1_h['time'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods_h, freq="H").strftime('%H')
df1_h['pnd'] = np.tile(pnd_array, (total_recoring_time_h, 1))
df1_h["state"] = states_new



n_hour = 25*60*60
given_array = np.array(df1['distance'])
# calculates the average
avgResult = np.nansum(given_array.reshape(-1, n_hour), axis=1)
df1_h["distance"] = avgResult

given_array = np.array(df1['separation_{}'.format(animal2)])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_hour), axis=1)
df1_h["separation_{}".format(animal2)] = avgResult


given_array = np.array(df1['separation_{}'.format(animal3)])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_hour), axis=1)
df1_h["separation_{}".format(animal3)] = avgResult


given_array = np.array(df1['social_interaction'])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_hour), axis=1)
df1_h["social_interaction"] = avgResult

given_array = np.array(df1['temperature'])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_hour), axis=1)
df1_h["temperature"] = avgResult








df2_h = pd.DataFrame(index=range(total_recording_periods_h), columns = ['date', 'time', 'pnd', 'state',
                                                       'distance', 'separation_{}'.format(animal1),
                                                       'separation_{}'.format(animal3), 'social_interaction',
                                                       'temperature', 'transition'])





df2_h['date'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods_h, freq="H").strftime('%Y-%m-%d')
df2_h['time'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods_h, freq="H").strftime('%H')
df2_h['pnd'] = np.tile(pnd_array, (total_recoring_time_h, 1))
df2_h["state"] = states_new


given_array = np.array(df2['distance'])
# calculates the average
avgResult = np.nansum(given_array.reshape(-1, n_hour), axis=1)
df2_h["distance"] = avgResult

given_array = np.array(df2['separation_{}'.format(animal1)])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_hour), axis=1)
df2_h["separation_{}".format(animal1)] = avgResult


given_array = np.array(df2['separation_{}'.format(animal3)])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_hour), axis=1)
df2_h["separation_{}".format(animal3)] = avgResult


given_array = np.array(df2['social_interaction'])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_hour), axis=1)
df2_h["social_interaction"] = avgResult

given_array = np.array(df2['temperature'])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_hour), axis=1)
df2_h["temperature"] = avgResult






df3_h = pd.DataFrame(index=range(total_recording_periods_h), columns = ['date', 'time', 'pnd', 'state',
                                                       'distance', 'separation_{}'.format(animal1),
                                                       'separation_{}'.format(animal2), 'social_interaction',
                                                       'temperature', 'transition'])





df3_h['date'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods_h, freq="H").strftime('%Y-%m-%d')
df3_h['time'] = pd.date_range("{}".format(datetime.fromtimestamp(round(t_i/1000))), periods=total_recording_periods_h, freq="H").strftime('%H')
df3_h['pnd'] = np.tile(pnd_array, (total_recoring_time_h, 1))
df3_h["state"] = states_new


given_array = np.array(df3['distance'])
# calculates the average
avgResult = np.nansum(given_array.reshape(-1, n_hour), axis=1)
df3_h["distance"] = avgResult

given_array = np.array(df3['separation_{}'.format(animal1)])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_hour), axis=1)
df3_h["separation_{}".format(animal1)] = avgResult


given_array = np.array(df3['separation_{}'.format(animal1)])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_hour), axis=1)
df3_h["separation_{}".format(animal1)] = avgResult


given_array = np.array(df3['social_interaction'])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_hour), axis=1)
df3_h["social_interaction"] = avgResult

given_array = np.array(df3['temperature'])
# calculates the average
avgResult = np.nanmean(given_array.reshape(-1, n_hour), axis=1)
df3_h["temperature"] = avgResult


df1_h.to_pickle('animal_{}_{}_{}_{}_h.pickle'.format(animal1, strain, gender, cage))
df2_h.to_pickle('animal_{}_{}_{}_{}_h.pickle'.format(animal2, strain, gender, cage))
df2_h.to_pickle('animal_{}_{}_{}_{}_h.pickle'.format(animal3, strain, gender, cage))





with open('animal_989001025046464_wistar_female_green_m.pickle', 'rb') as file:
      
    # Call load method to deserialze
    df = pickle.load(file)
file.close()