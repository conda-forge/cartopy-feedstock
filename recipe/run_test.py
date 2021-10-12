import os
os.system("openssl s_client -connect naturalearth.s3.amazonaws.com:443")
import cartopy.crs as ccrs

import matplotlib
matplotlib.use('agg')
import matplotlib.pyplot as plt

ax = plt.axes(projection=ccrs.Robinson())
ax.coastlines()
plt.savefig('working.png')
