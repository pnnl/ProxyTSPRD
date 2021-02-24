import matplotlib.pyplot as plt

def eigen_plot(e_real, e_imag, x_lim=(-1.2, 1.2), y_lim=(-1.2, 1.2), figsize=(6, 4), title="Eigenvalues", x_label="Real Part", y_label="Imaginary Part"):
	fig, ax = plt.subplots(figsize=figsize)

	ax.plot(e_real, e_imag, '*')
	circle_plot = plt.Circle((0,0), 1, alpha=0.15, color='r', fill=True)
	
	ax.set_xlim(x_lim)
	ax.set_ylim(y_lim)
	ax.add_artist(circle_plot)
	# ax.set_aspect('equal')
	
	ax.set_xlabel(x_label)
	ax.set_ylabel(y_label)

	ax.set_title(title)
	

def validation_plot(history, figsize=(6, 4), title='Reconstruction Model Loss', x_label="Epoch", y_label="Loss", legend=['Training', 'Validation'], legend_loc='upper right', grid=True):
	fig, ax = plt.subplots(figsize=figsize)

	ax.plot(history.history['loss'])
	ax.plot(history.history['val_loss'])
	
	ax.set_xlabel(x_label)
	ax.set_ylabel(y_label)

	ax.set_title(title)
	ax.legend(legend, loc=legend_loc)
	ax.grid(grid)

def heatmap_matplotlib(matrix, figsize=(6, 4), title='Heatmap (imshow)', x_label="Rows", y_label="Columns"):
	fig, ax = plt.subplots(figsize=figsize)

	cs = ax.imshow(matrix)

	ax.set_xlabel(x_label)
	ax.set_ylabel(y_label)

	ax.set_title(title)
	
	fig.colorbar(cs)