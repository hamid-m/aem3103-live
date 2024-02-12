# -*- coding: utf-8 -*-
"""
Created on Mon Feb 12 16:24:41 2024

@author: hamid
"""
from matplotlib import pyplot as plt
import numpy as np
#print("Hello World")

# Load Data
file_path = r"C:\Users\hamid\OneDrive\Documents\aem3103-live\data\VariEze_CL.txt"
data = np.loadtxt(file_path)

aoa_deg, CL = data.T


# Visualize It
plt.plot(aoa_deg, CL, marker='.', ls='')
plt.xlabel('Angle of Attack ($\circ$)')
plt.ylabel('$C_L$')
plt.grid()
#plt.show()

# Trim to Linear Region

# Fit a Polynomial
p = np.polyfit(aoa_deg, CL, 1)
f_poly = np.poly1d(p)

CL_fit = f_poly(aoa_deg)

plt.plot(aoa_deg, CL_fit)


# Plot the Curve Fit

