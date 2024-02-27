# Example implementation of Lagrange Polynomials

# Define Data
x = [0, 1, 2]
y = [1, 2, 3]

# Implement Lagrange Polynomial
xin = 1.5
f = 0
for i in range(len(x)):
    L = 1
    for j in range(len(x)):
        if j == i: continue
        #print(i, j)
        L = L * (xin - x[j])/(x[i] - x[j])
    f = f + y[i]*L

print(f)        











# =============================================================================
# print(f)
# for i in [0, 1, 2]:
#     L = 1
#     for j in [0, 1, 2]:
#         if j == i: continue
#         #print(i, j)
#         L = L*(xin - x[j])/(x[i] - x[j])
#     f = f+ y[i]*L
# 
# =============================================================================


# Test it


