# This Script is used for Pre-compliance Test.
# Interfaces Included - NAND , Accelerometer, Gyroscope, CAN , LED , Battery, Modem and WiFi

#Intializing GPIO
/home/root/export.sh

#Enabling all swithes
/home/root/switch_on.sh

#Magnetometer                      
/home/root/4g_on.sh

#Initializing Modules
/home/root/sensor_init.sh

#CAN                             
/home/root/can_enable.sh

#WIFI
/home/root/wifi.sh

#To Read Accelerometer X,Y,Z values
/home/root/acc.sh &

#To Read Gyroscope X,Y,Z values                                         
/home/root/gyro.sh &                                                          
        
#LED                                                                         
/home/root/led.sh &                                                          
        
#Battery Status                                                               
/home/root/battery_status.sh &                                                                          
                                                  
#To  Read GPS data                 
/home/root/gps.sh &                                                            
        
#NAND
/home/root/nand.sh &                
                                                                                     
#2G                                
/home/root/4g_ping_test.sh & 
